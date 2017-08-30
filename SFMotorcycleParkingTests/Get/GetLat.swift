import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
    func testGetLat() {
        let dict: [String: Any] = ["geom": ["coordinates": [37.7114610887894, -122.46198579669]]]
        let lat = Get.parking.getLat(dict)
        XCTAssertTrue(lat! < -122.4619857966)
        XCTAssertTrue(lat! > -122.461985797)
    }
    
    func testGetLatFail() {
        let dict: [String: Any] = ["geom": [:]]
        let lat = Get.parking.getLat(dict)
        XCTAssertNil(lat)
    }
}
