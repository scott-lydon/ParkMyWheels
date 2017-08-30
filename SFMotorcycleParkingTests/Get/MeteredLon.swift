import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {

    
    func testMeteredLon() {
        let dict: [String: Any] = ["location": ["coordinates": [37.7114610887894, -122.46198579669]]]
        let lon = Get.parking.meteredLon(dict)
        XCTAssertTrue(lon! < 37.71146108879)
        XCTAssertTrue(lon! > 37.711461088789)
    }
    
    func testMeteredLonFail() {
        let dict: [String: Any] = ["location": [:]]
        let lon = Get.parking.meteredLon(dict)
        XCTAssertNil(lon)
    }
}
