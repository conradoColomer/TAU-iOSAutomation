 
import Foundation
import XCTest

class TAUUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUpWithError() throws {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        app.launchArguments.append("--reset-session")

        
    }

    override func tearDownWithError() throws {
        super.tearDown()
        app.terminate()
       
    }
     
}
