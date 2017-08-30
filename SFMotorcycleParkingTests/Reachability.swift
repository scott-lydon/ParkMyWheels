import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
    func testInternetIsConnected() {
        XCTAssert(Reachability.isConnectedToNetwork())
    }
}
