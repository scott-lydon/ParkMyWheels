import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
//    func metered(bottomLeft: String, topRight: String, completion : @escaping (ParkingSpot) -> Void) {
//        let meteredURL = meteredGetURLFrom(bottomLeft, topRight)
//        let task = URLSession.shared.dataTask(with: meteredURL) {
//            (data, response, error) in
//            self.meteredHandle(data, error, completion)
//        }
//        task.resume()
//    }
    
    //Give bottomLeft and topRight, make sure parkingspot is within those confines.
    //Create a mock object, make sure meteredGetURLFrom is called,
    //create a mock object, make sure meteredHandle is called.
    //What happens when given an empty string
    //What happens when given an incorrectly formatted string
    
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
