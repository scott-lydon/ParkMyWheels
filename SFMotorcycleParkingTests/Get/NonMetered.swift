import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {

    func testnonMetered() {
        Get.parking.nonMetered(bottomLeft: "37.7114610887894,-122.46198579669", topRight: "37.8629685275434,-122.354201897979") { (parkingSpot) in
            XCTAssertNotEqual(parkingSpot.latitude, nil)
            XCTAssertTrue(parkingSpot.longitude! < 37.8629685275434)
            XCTAssertTrue(parkingSpot.longitude! > 37.711461088789)
            XCTAssertTrue(parkingSpot.latitude! < -122.354201897979)
            XCTAssertTrue(parkingSpot.latitude! > -122.46198579669)
            XCTAssert(type(of: parkingSpot.latitude) == Double.self)
        }
    }
}
