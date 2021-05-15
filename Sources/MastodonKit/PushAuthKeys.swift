//
//  PushAuthKeys.swift
//  MastodonKit
//
//  Created by Daniel Nitsikopoulos on 8/11/19.
//

import Foundation

public struct PushAuthKeys: Codable {
    /// User agent public key. Base64 encoded string of public key of ECDH key using ‘prime256v1’ curve.
    let p256dh: String
    /// Auth secret. Base64 encoded string of 16 bytes of random data.
    let auth: String

    public init(p256dh: String, auth: String) {
        self.p256dh = p256dh
        self.auth = auth
    }
}
