import Foundation
import XCTest

class BDDTest : TAUUITestBase {
    
    func testThankYouMessageInBDStyle() {
        givenAppIsReady()
        whenIEnter(city: "London")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
        
        
    }
    
    
}

extension TAUUITestBase {
    
    func givenAppIsReady() {
        XCTContext.runActivity(named: "GIVEN app is ready "){ _ in
        
        XCTAssertTrue(app.buttons["enrollButton"].exists, "App is not ready")
        }
        
    }
    
    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "WHEN user enter City"){ _ in
            
            app.textFields["city"].tap()
            app.textFields["city"].typeText(city)
        }
     }
    
    func whenIEnrolled() {
        XCTContext.runActivity(named: "WHEN user tap in enroll btn "){ _ in
            
            app.buttons["enrollButton"].tap()
        }
    }
    
    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "THEN correct message is displayed"){ _ in
            XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
        }
        
    }
    
}

