//
//  Copyright © 2016 The CocoaBots. All rights reserved.

import XCTest
@testable import PropertyBindTest

class PropertyBindTestTests: XCTestCase {
    
    func testSelectedToolPropagatesToChildren() {
        let parent = Parent()

        guard
            let firstChild = parent.children.first,
            let lastChild = parent.children.last
            else {
                XCTFail()
                return
        }

        parent.selection.value = "Bingo"

        XCTAssertEqual(firstChild.selection.value, parent.selection.value)
        XCTAssertEqual(lastChild.selection.value, parent.selection.value)

        parent.selection.value = "Bongo"

        XCTAssertEqual(firstChild.selection.value, parent.selection.value)
        XCTAssertEqual(lastChild.selection.value, parent.selection.value)
    }

}
