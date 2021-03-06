import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
    func testMeteredLat() {
        let dict: [String: Any] = ["location": ["coordinates": [37.7114610887894, -122.46198579669]]]
        let lat = Get.parking.meteredLat(dict)
        XCTAssertTrue(lat! < -122.4619857966)
        XCTAssertTrue(lat! > -122.461985797)
    }
    
    func testMeteredLatFail() {
        let dict: [String: Any] = ["location": [:]]
        let lat = Get.parking.meteredLat(dict)
        XCTAssertNil(lat)
    }
}
