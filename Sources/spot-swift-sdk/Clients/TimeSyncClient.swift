//
//  TimeSyncClient.swift
//  
//
//  Created by Stephen Bowen on 1/30/22.
//

import Foundation
import GRPC
import NIO
import NIOSSL
import NIOHPACK
import SwiftProtobuf

class TimeSyncClient: BaseClient {
    
    // TimeSyncClient errors
    enum TimeSyncClientError: Error {
        case missingChannel
        case missingTimeSyncClient
    }
    
    var timeSyncClient: Bosdyn_Api_TimeSyncServiceClient?
    
    init(hostName: String, timeout: Int64) throws {
        super.init(hostName: hostName, clientName: "time-sync", timeout: timeout)
        
        do {
            try self.createSecureChannel()
        } catch {
            throw error
        }
        if let channel = self.channel {
            self.timeSyncClient = Bosdyn_Api_TimeSyncServiceClient(channel: channel, defaultCallOptions: CallOptions(timeLimit: .timeout(.seconds(self.timeout))))
        } else {
            throw TimeSyncClientError.missingChannel
        }
    }
    
    func timeSyncUpdate(authToken: String, previousRoundTrip: Bosdyn_Api_TimeSyncRoundTrip?, clockIdentifier: String?) throws -> Bosdyn_Api_TimeSyncUpdateResponse? {
        // bosdyn.api.TimeSyncRoundTrip
        //var requestTimestamp = Google_Protobuf_Timestamp()

        let request = Bosdyn_Api_TimeSyncUpdateRequest.with {
            $0.header = Bosdyn_Api_RequestHeader.with {
                $0.clientName = self.clientName
                $0.requestTimestamp = self.getTimestampFromNsec(timeNsec: Int64(self.getNowNsec()))
                $0.disableRpcLogging = false
            }
            if (previousRoundTrip != nil) {
                $0.previousRoundTrip = previousRoundTrip!
            }
            if (clockIdentifier != nil) {
                $0.clockIdentifier = clockIdentifier!
            }
        }
        
        if let client = self.timeSyncClient {
            do {
                let grpcCall = client.timeSyncUpdate(request, callOptions: CallOptions(customMetadata: HPACKHeaders([("authorization", "Bearer " + authToken)]), timeLimit: .timeout(.seconds(self.timeout))))
                // Wait on call to finish then return the value
                let response = try call(grpcCall: grpcCall)
                return response
            } catch {
                throw error
            }
            
        } else {
            throw TimeSyncClientError.missingTimeSyncClient
        }
    }
    
    /*
     https://dev.bostondynamics.com/_modules/bosdyn/client/time_sync
     
     # Record the timing information for this GRPC call to pass to the next update
     round_trip = time_sync_pb2.TimeSyncRoundTrip()
     # pylint: disable=no-member
     round_trip.client_tx.CopyFrom(response.header.request_header.request_timestamp)
     round_trip.server_rx.CopyFrom(response.header.request_received_timestamp)
     round_trip.server_tx.CopyFrom(response.header.response_timestamp)
     set_timestamp_from_nsec(round_trip.client_rx, rx_time)
     
     */
    
    /*
     https://developers.google.com/protocol-buffers/docs/pythontutorial
     
     Standard Message Methods
     Each message class also contains a number of other methods that let you check or manipulate the entire message, including:

     IsInitialized(): checks if all the required fields have been set.
     __str__(): returns a human-readable representation of the message, particularly useful for debugging. (Usually invoked as str(message) or print message.)
     CopyFrom(other_msg): overwrites the message with the given message's values.
     Clear(): clears all the elements back to the empty state.
     These methods implement the Message interface. For more information, see the complete API documentation for Message.
     
     */
    
    /*
     
     fileprivate var _clientTx: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
     fileprivate var _serverRx: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
     fileprivate var _serverTx: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
     fileprivate var _clientRx: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
     */
    
    /*
     https://dev.bostondynamics.com/_modules/bosdyn/util
     */
    
    /*
     def set_timestamp_from_nsec(timestamp_proto, time_nsec):
         """Sets a Timestamp protobuf from an integer of nanoseconds since the unix epoch.

         Args:
          timestamp_proto[out] (google.protobuf.Timestamp):  timestamp into which time will be written
          time_nsec[in]:         the time, as an integer of nanoseconds from the unix epoch
         """
         timestamp_proto.seconds = int(time_nsec / NSEC_PER_SEC)
         timestamp_proto.nanos = int(time_nsec % NSEC_PER_SEC)
     
     */

    func syncTime(authToken: String, completed: @escaping (String) -> Void) {
        var previousRoundTrip: Bosdyn_Api_TimeSyncRoundTrip?
        var clockIdentifier: String?
        let queueForTimeSync = DispatchQueue(label: "queueForTimeSync")
        
        queueForTimeSync.async {
            while(true) {
                do {
                    let response = try self.timeSyncUpdate(authToken: authToken, previousRoundTrip: previousRoundTrip, clockIdentifier: clockIdentifier)
                    if let response = response {
                        print(response.state.status)
                        if (response.state.status == Bosdyn_Api_TimeSyncState.Status.ok) {
                            DispatchQueue.main.async {
                                completed(clockIdentifier!)
                            }
                            return
                        }
                        
                        clockIdentifier = response.clockIdentifier
                        print("clockIdentifier \(response.clockIdentifier)")

                        let rxTime = self.getTimestampFromNsec(timeNsec: self.getNowNsec())
                        previousRoundTrip = Bosdyn_Api_TimeSyncRoundTrip()
                        previousRoundTrip?.clientTx = response.header.requestHeader.requestTimestamp
                        previousRoundTrip?.serverRx = response.header.requestReceivedTimestamp
                        previousRoundTrip?.serverTx = response.header.responseTimestamp
                        previousRoundTrip?.clientRx = rxTime

                    }
                    
                } catch {
                    completed("timeSyncUpdate threw error: " + error.localizedDescription)
                }
            }
        }
    }
    
    func secToNsec(secs: Int64) -> Int64 {
        return Int64(secs * 1000000000)
    }
    
    func getTimestampFromNsec(timeNsec: Int64) ->  SwiftProtobuf.Google_Protobuf_Timestamp {
        var timeStamp = SwiftProtobuf.Google_Protobuf_Timestamp()
        timeStamp.seconds = Int64(timeNsec / 1000000000)
        timeStamp.nanos = Int32(timeNsec % 1000000000)
        return timeStamp
    }
    
    func getNowNsec() -> Int64 {
        return Int64(Date().timeIntervalSince1970 * 1000000000)
    }

}
