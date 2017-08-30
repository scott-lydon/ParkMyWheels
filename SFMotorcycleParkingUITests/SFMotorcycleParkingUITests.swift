//
//  SFMotorcycleParkingUITests.swift
//  SFMotorcycleParkingUITests
//
//  Created by Scott Lydon on 5/22/17.
//  Copyright © 2017 Scott Lydon. All rights reserved.
//

import XCTest


class SFMotorcycleParkingUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()

    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testHandleAlertsOk() {
        XCUIDevice.shared().orientation = .portrait
        let app = XCUIApplication()
        let locationAlert = app.alerts["Allow “Park My Bike” to access your location while you use the app?"]
        if locationAlert.exists {
            locationAlert.buttons["Allow"].tap()
        }
    }
    
    
}




extension XCUIElement {
    func doubleTapper() {
        self.tap()
        self.tap()
    }
}
