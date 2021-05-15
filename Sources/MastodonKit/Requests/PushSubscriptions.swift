//
//  PushSubscription.swift
//  MastodonKit
//
//  Created by Daniel Nitsikopoulos on 8/11/19.
//

import Foundation

/// `PushSubscription` requests.
public enum PushSubscription {
    /// Register new web pushes.
    ///
    /// - Parameter subscription:
    ///     - endpoint: Endpoint URL that called when notification is happen.
    ///     - keys:
    ///         - p256dh: User agent public key. Base64 encoded string of public key of ECDH key using ‘prime256v1’ curve.
    ///         - auth: Auth secret. Base64 encoded string of 16 bytes of random data.
    ///     - data:
    ///         - alerts:
    ///             - follow (optional): Boolean of whether you want to receive follow notification event.
    ///             - favourite (optional): Boolean of whether you want to receive favourite notification event.
    ///             - reblog (optional): Boolean of whether you want to receive reblog notification event.
    ///             - mention (optional): Boolean of whether you want to receive mention notification event.
    ///             - poll (optional): Boolean of whether you want to receive poll result notification event.
    /// - Returns: Request for `[PushSubscriptions]`.
    public static func subscribe(endpoint: String, keys: PushAuthKeys, data: PushData) -> Request<PushSubscriptions> {
        let parameters = [
            Parameter(name: "subscription[endpoint]", value: endpoint),
            Parameter(name: "subscription[keys][p256dh]", value: keys.p256dh),
            Parameter(name: "subscription[keys][auth]", value: keys.auth),
            Parameter(name: "data[alerts][follow]", value: data.alert.follow?.description),
            Parameter(name: "data[alerts][favourite]", value: data.alert.favourite?.description),
            Parameter(name: "data[alerts][reblog]", value: data.alert.reblog?.description),
            Parameter(name: "data[alerts][mention]", value: data.alert.mention?.description),
            Parameter(name: "data[alerts][poll]", value: data.alert.poll?.description)
        ]
        let method = HTTPMethod.post(.parameters(parameters))

        return Request<PushSubscriptions>(path: "/api/v1/push/subscription", method: method)
    }

    public static func updateSubscription(follow: Bool, favourite: Bool, reblog: Bool, mention: Bool, poll: Bool) -> Request<PushSubscriptions> {
        let parameters = [
            Parameter(name: "data[alerts][follow]", value: follow.description),
            Parameter(name: "data[alerts][favourite]", value: favourite.description),
            Parameter(name: "data[alerts][reblog]", value: reblog.description),
            Parameter(name: "data[alerts][mention]", value: mention.description),
            Parameter(name: "data[alerts][poll]", value: poll.description)
        ]

        let method = HTTPMethod.put(.parameters(parameters))

        return Request<PushSubscriptions>(path: "/api/v1/push/subscription", method: method)
    }
}
