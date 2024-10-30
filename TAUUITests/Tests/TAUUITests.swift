//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by The App Master on 26/10/2024.
//  Copyright © 2024 Shashikant Jagtap. All rights reserved.
//

import XCTest

final class TAUUITests: TAUUITestBase { //Extended from XCTestCase

    
    func testThanksYouMessage() throws {
        
        let enterCity =  app.textFields["city"]
        enterCity.tap()
        enterCity.typeText("Hey Conrad!")
        app.buttons["enrollButton"].tap()
        XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
    }
    
    func testDb() throws {
 
        app.textFields["city"].tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Enroll"]/*[[".buttons[\"Enroll\"].staticTexts[\"Enroll\"]",".buttons[\"enrollButton\"].staticTexts[\"Enroll\"]",".staticTexts[\"Enroll\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

 
    }

    func testAllElementsOnMainScreen() throws {
 
        XCTAssert(app.staticTexts["enterCity"].exists)


        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testSeeDB() throws {
        app.launch()
        
        
    }
    
    
    func test_debugger_function() throws {
        app.launch()
        
        
    }
    
    
   
}
