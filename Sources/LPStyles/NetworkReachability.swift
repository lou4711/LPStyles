//
//  NetworkReachability.swift
//  Unication
//
//  Created by Juergen Loos on 24/3/2022.
//

import Foundation
import SystemConfiguration

@available(iOS 13.0, *)
class NetworkReachability: ObservableObject {
    
    @Published private(set) var reachable: Bool = false
    private let reachability = SCNetworkReachabilityCreateWithName(nil, "firebase.google.com")
    
    init() {
        self.reachable = checkConnection()
    }
    
    private func isNetworkReachable(with flags: SCNetworkReachabilityFlags) -> Bool {
        let isReachable = flags.contains(.reachable)
            let connectionRequired = flags.contains(.connectionRequired)
            let canConnectAutomatically = flags.contains(.connectionOnDemand) || flags.contains(.connectionOnTraffic)
            let canConnectWithoutIntervention = canConnectAutomatically && !flags.contains(.interventionRequired)

            return isReachable && (!connectionRequired || canConnectWithoutIntervention)
    }
    
    public func checkConnection() -> Bool {
        var flags = SCNetworkReachabilityFlags()
        SCNetworkReachabilityGetFlags(reachability!, &flags)

            return isNetworkReachable(with: flags)
    }
    
}
