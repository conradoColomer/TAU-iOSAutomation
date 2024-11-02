import Foundation
import XCTest

extension TAUUITestBase {
    
    func givenAppIsReady() {
        XCTContext.runActivity(named: "GIVEN app is ready "){ _ in
            
            XCTAssertTrue(TAUSCreen.enrollButton.element.exists, "App is not ready")
        }
        
    }
    
    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "WHEN user enter City"){ _ in
            
            TAUSCreen.cityTextField.element.tap()
            TAUSCreen.cityTextField.element.typeText(city)
           
            
        }
    }
    
    func whenIEnrolled() {
        XCTContext.runActivity(named: "WHEN user tap in enroll btn "){ _ in
            
            TAUSCreen.enrollButton.element.tap()
        }
    }
    
    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "THEN correct message is displayed"){ _ in
            XCTAyncAssert(
                TAUSCreen.thankYouMessage.element)
        }
        
    }
    
}
