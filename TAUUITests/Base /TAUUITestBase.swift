 
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
     
}
