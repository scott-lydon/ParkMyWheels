import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
//    func getLat(_ dict: [String: Any]) -> Double? {
//        var lat: Double?
//        if let geom = dict["geom"] as? [String: Any],
//            let coordinates = geom["coordinates"] as? [Double] {
//            lat = coordinates[1]
//        }
//        return lat
//    }
    
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
