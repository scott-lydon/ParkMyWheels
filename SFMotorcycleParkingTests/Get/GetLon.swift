import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
//    func getLon(_ dict: [String: Any]) -> Double? {
//        var lon: Double?
//        
//        if let geom = dict["geom"] as? [String: Any],
//            let coordinates = geom["coordinates"] as? [Double] {
//            lon = coordinates[0]
//        }
//        return lon
//    }
    
    func testGetLon() {
        let dict: [String: Any] = ["geom": ["coordinates": [37.7114610887894, -122.46198579669]]]
        let lon = Get.parking.getLon(dict)
        XCTAssertTrue(lon! < 37.71146108879)
        XCTAssertTrue(lon! > 37.711461088789)
    }
    
    func testGetLonFail() {
        let dict: [String: Any] = ["geom": [:]]
        let lon = Get.parking.getLon(dict)
        XCTAssertNil(lon)
    }
}
