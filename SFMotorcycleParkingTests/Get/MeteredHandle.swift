import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
    func testMeteredHandleError() {
        Get.parking.meteredHandle(nil, ThrownError.forTest) { (parkingSpot) in
            XCTFail("\(#line),\(#function)")
        }
    }
    
    func testMeteredHandleCatch() {
        Get.parking.meteredHandle(Data(), nil) { (parkingSpot) in
            XCTFail("\(#line),\(#function)")
        }
    }
}
