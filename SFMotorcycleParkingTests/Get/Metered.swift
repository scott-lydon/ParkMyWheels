import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
    func testGetParkingMetered() {
        Get.parking.metered(bottomLeft: "37.7114610887894,-122.46198579669", topRight: "37.8629685275434,-122.354201897979") { (parkingSpot) in
            XCTAssertNotEqual(parkingSpot.latitude, nil)
        }
    }
    
    func testURLCallFail() {
        Get.parking.metered(bottomLeft: "", topRight: "") { (parkingSpot) in
            XCTAssertEqual(parkingSpot.latitude, nil)
        }
    }
    
    func testNonMeteredFail() {
        Get.parking.metered(bottomLeft: "", topRight: "") { (parkingSpot) in
            XCTAssertNil(parkingSpot.latitude)
            XCTAssertNil(parkingSpot.latitude)
        }
    }
}
