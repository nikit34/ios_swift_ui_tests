//
//  TopTabsTest.swift
//  Kassa2.0UITests
//
//  Created by n.permyakov on 19.07.2021.
//  Copyright © 2021 Rambler&Co. All rights reserved.
//

import XCTest

class TopTabsTests: XCTestCase {
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        
    }
    
    func testTopTabs() {
        MainPage().tapTopTabBtn()
    }
}

