import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
//    func nonMetered(bottomLeft: String, topRight: String, completion: @escaping (ParkingSpot) -> Void) {
//        let URL = getURLFrom(bottomLeft, topRight)
//        let task = URLSession.shared.dataTask(with: URL) {
//            (data, response, error) in
//            self.handle(data, error, completion)
//        }
//        task.resume()
//    }
    func testnonMetered() {
        Get.parking.nonMetered(bottomLeft: "37.7114610887894,-122.46198579669", topRight: "37.8629685275434,-122.354201897979") { (parkingSpot) in
            XCTAssertNotEqual(parkingSpot.latitude, nil)
            XCTAssertTrue(parkingSpot.longitude! < 37.71146108879)
            XCTAssertTrue(parkingSpot.longitude! > 37.711461088789)
            XCTAssertTrue(parkingSpot.latitude! < -122.4619857966)
            XCTAssertTrue(parkingSpot.latitude! > -122.461985797)
            XCTAssert(type(of: parkingSpot.latitude) == Double.self)
        }
    }
}
