import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
    func testHandleError() {
        Get.parking.handle(nil, ThrownError.forTest) { (parkingSpot) in
            XCTFail("\(#line),\(#function)")
        }
    }
    
    func testHandleCatch() {
        Get.parking.handle(Data(), nil) { (parkingSpot) in
            XCTFail("\(#line),\(#function)")
        }
    }
}
