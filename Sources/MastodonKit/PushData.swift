//
//  PushData.swift
//  MastodonKit
//
//  Created by Daniel Nitsikopoulos on 8/11/19.
//

import Foundation

public struct PushData: Codable {
    let alert: PushAlerts

    public init(alert: PushAlerts) {
        self.alert = alert
    }
}

public struct PushAlerts: Codable {
    /// (optional): Boolean of whether you want to receive follow notification event.
    let follow: Bool?
    /// (optional): Boolean of whether you want to receive favourite notification event.
    let favourite: Bool?
    /// (optional): Boolean of whether you want to receive reblog notification event.
    let reblog: Bool?
    /// (optional): Boolean of whether you want to receive mention notification event.
    let mention: Bool?
    /// (optional): Boolean of whether you want to receive poll result notification event.
    let poll: Bool?

    public init(follow: Bool?, favourite: Bool?, reblog: Bool?, mention: Bool?, poll: Bool?) {
        self.follow = follow
        self.favourite = favourite
        self.reblog = reblog
        self.mention = mention
        self.poll = poll
    }
}
