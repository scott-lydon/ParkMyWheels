import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {

    func testAlreadyHasMeteredWithNoId(){
        let testParkingSpot: ParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: "99999")
        XCTAssertFalse((vc?.alreadyHasMetered(testParkingSpot))!)
        vc?.nonMeteredIDs[testParkingSpot.id!] = true
        XCTAssert((vc?.alreadyHasMetered(testParkingSpot))!)
    }
}
