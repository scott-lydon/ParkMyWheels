import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
//    func alreadyHas(_ parkingSpot: ParkingSpot) -> Bool {
//        if let id = parkingSpot.id {
//            if self.meteredIDs[id] != nil {
//                return true
//            } else {
//                self.meteredIDs[id] = true
//            }
//        }
//        return false
//    }
    
    func testAlreadyHas() {
        let testParkingSpot: ParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: "90909")
        XCTAssertFalse((vc?.alreadyHasMetered(testParkingSpot))!)
        vc?.meteredIDs[testParkingSpot.id!] = true
        XCTAssert((vc?.alreadyHasMetered(testParkingSpot))!)
    }
}
