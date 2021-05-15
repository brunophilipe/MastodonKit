//
//  Poll.swift
//  MastodonKit
//
//  Created by Bruno Philipe on 03/04/19.
//  Copyright © 2017 MastodonKit. All rights reserved.
//

import Foundation

public class Poll: Codable {
    /// The id of the poll
    public let id: String
    /// When voting on the poll closes.
    public let expiresAt: Date?
    /// Whether voting has closed on the poll.
    public let expired: Bool
    /// Whether multiple options can be picked for the poll, instead of a single one.
    public let multiple: Bool
    /// Number of total votes the poll received so far.
    public let votesCount: Int
    /// List of options in the poll.
    public let options: [PollOption]
    /// Whether the active user has voted in the poll.
    public private(set) var voted: Bool?
    /// The current user's votes
    public let ownVotes: [Int?]

    enum CodingKeys: String, CodingKey {
        case id
        case expiresAt = "expires_at"
        case expired
        case multiple
        case votesCount = "votes_count"
        case options
        case voted
        case ownVotes = "own_votes"
    }

    public func setVoted(state: Bool) {
        voted = state
    }
}
