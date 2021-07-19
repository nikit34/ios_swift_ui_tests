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
        let main_page = MainPage()
        main_page.viewCurtainCloseBtn()
        main_page.viewTopTabBtn()
        
        if #available(iOS 13.0, *) {
            let metrics: [XCTMetric] = [XCTMemoryMetric(), XCTStorageMetric(), XCTClockMetric()]
            let measureOptions = XCTMeasureOptions.default
            measureOptions.iterationCount = 3
            
            measure(metrics: metrics, options: measureOptions) {
            main_page.viewTopTabBtn()
            }
        }
    }
}

