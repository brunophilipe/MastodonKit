//
//  Conversations.swift
//  MastodonKit
//
//  Created by Daniel Nitsikopoulos on 2/7/20.
//

import Foundation

/// `Conversations` requests.
public enum Conversations {
    /// Fetches a conversation.
    ///
    /// - Parameters:
    ///   - range: The bounds used when requesting data from Mastodon.
    /// - Returns: Request for a list of `Conversation`s.
    public static func all(range: RequestRange = .default) -> Request<[Conversation]> {
        let parameters = range.parameters(limit: between(1, and: 80, default: 40))
        let method = HTTPMethod.get(.parameters(parameters))
        
        return Request<[Conversation]>(path: "/api/v1/conversations", method: method)
    }
    
    /// Marks a conversation as read.
    ///
    /// - Parameters:
    ///     - id: The ID of the status to be marked as read
    /// - Returns: Request to mark a `Conversation` as read.
    public static func markRead(id: String) -> Request<Conversation> {
        return Request<Conversation>(path: "/api/v1/conversations/\(id)/read", method: .post(.empty))
    }

    /// Deletes the conversation
    ///
    /// - Parameter id: The Conversation id.
    /// - Returns: HTTP Status
    public static func removeConversation(id: String) -> Request<Conversation> {
        return Request<Conversation>(path: "/api/v1/conversations/\(id)", method: .delete(.empty))
    }
}
