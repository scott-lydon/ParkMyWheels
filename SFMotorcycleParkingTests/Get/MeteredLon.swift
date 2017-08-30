import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
//    
//    func meteredLon(_ dict: [String: Any]) -> Double? {
//        var lon: Double?
//        if let location = dict["location"] as? [String: Any],
//            let coordinates = location["coordinates"] as? [Double] {
//            lon = coordinates[0]
//        }
//        return lon
//    }
    
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
