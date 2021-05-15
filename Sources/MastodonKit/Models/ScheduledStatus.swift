//
//  ScheduledStatus.swift
//  MastodonKit
//
//  Created by Daniel Nitsikopoulos on 29/3/20.
//

import Foundation

public class ScheduledStatus: Codable {
    /// The ID of the status.
    public let id: String
    /// A Fediverse-unique resource ID.
    public let params: ScheduledStatusParams
    /// An array of attachments.
    public let mediaAttachments: [Attachment]
    /// The status' scheduled time to post
    public let scheduledAt: Date?

    private enum CodingKeys: String, CodingKey {
        case id
        case params
        case mediaAttachments = "media_attachments"
        case scheduledAt = "scheduled_at"
    }
}

public class ScheduledStatusParams: Codable {
    public let poll: Poll?

    public let text: String

    public let sensitive: Bool?

    public let visibility: Visibility

    public let idempotency: String?

    public let scheduledAt: Date?

    public let spoilerText: String?

    public let applicationId: Int

    public let inReplyToId: String?

    private enum CodingKeys: String, CodingKey {
        case poll
        case text
        case sensitive
        case visibility
        case idempotency
        case scheduledAt = "scheduled_at"
        case spoilerText = "spoiler_text"
        case applicationId = "application_id"
        case inReplyToId = "in_reply_to_id"
    }
}

