 
import Foundation
import XCTest

class TAUUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUpWithError() throws {
        super.setUp()
        continueAfterFailure = false
        
        let device = XCUIDevice.shared
        device.orientation = .portrait// Asegura que la orientación sea vertical
        app.launchArguments.append("--reset-session")
        app.launch()

        
    }

    override func tearDownWithError() throws {
        super.tearDown()
        app.terminate()
       
    }
    
    
    func XCTAyncAssert(_ element : XCUIElement){
        let isElementExist =  element.waitForExistence(timeout: 10)
        if isElementExist {
            XCTAssertTrue(element.exists)
//            XCTAssertTrue(element.isEnabled)
//            XCTAssertTrue(element.isHittable)
//            XCTAssertTrue(element.isSelected)
        }
    }
     
}
