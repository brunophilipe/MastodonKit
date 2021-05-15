//
//  MockClientDelegate.swift
//  MastodonKit
//
//  Created by Bruno Philipe on 10/03/19.
//  Copyright © 2017 MastodonKit. All rights reserved.
//

import Foundation
import MastodonKit

class MockClientDelegate: ClientDelegate {
    var isRequestingNewAccessToken: Bool = false

    var producedUnauthorizedErrorHandler: ((ClientType) -> Void)?

    func clientProducedUnauthorizedError(_ client: ClientType) {
        producedUnauthorizedErrorHandler?(client)
    }
}
