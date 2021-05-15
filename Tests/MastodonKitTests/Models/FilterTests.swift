//
//  FilterTests.swift
//  MastodonKitTests
//
//  Created by Daniel Nitsikopoulos on 9/12/19.
//

import XCTest
@testable import MastodonKit

class FilterTests: XCTestCase {
    func testFiltersFromJSON() {
        let fixture = try! Fixture.load(fileName: "Fixtures/Filters.json")
        let parsed = try? [Filter].decode(data: fixture)

        XCTAssertEqual(parsed?.count, 1)
    }
}
