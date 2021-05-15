//
//  Conversation.swift
//  MastodonKit
//
//  Created by Daniel Nitsikopoulos on 26/9/20.
//

import Foundation

public class Conversation: Codable {
    /// The ID of the status.
    public let id: String
    /// Whether the convertsation is read.
    public private(set) var unread: Bool
    /// Accounts participating in the conversation.
    public let accounts: [Account]
    /// The last status in the conversation.
    public let lastStatus: Status

    private enum CodingKeys: String, CodingKey {
        case id
        case unread
        case accounts
        case lastStatus = "last_status"
    }

    public func setReadState(read: Bool) {
        unread = !read
    }
}
