//
//  PushSubscription.swift
//  MastodonKit
//
//  Created by Daniel Nitsikopoulos on 8/11/19.
//

import Foundation

public struct PushSubscriptions: Codable {
    /// The ID of the report.
    //    public let id: String
    /// The endpoint of this subscription
    public let endpoint: String
    /// The server key
    public let serverKey: String
    /// Alerts this is setup to receive
    public let alerts: PushAlerts

    private enum CodingKeys: String, CodingKey {
        //        case id
        case endpoint
        case serverKey = "server_key"
        case alerts
    }
}
