import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {

    //MARK: some variance in network response may cause this to fail, when functional.  Repeat the test 4 times. If this passes once, then it is fine.
    func testVCGetMeteredFromTop() {
        if !Reachability.isConnectedToNetwork() {
            return
        }
        let mockParkingSpot: ParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: "126")
        
        XCTAssertFalse((vc?.alreadyHas(mockParkingSpot))!)

        let bottomLeft = CLLocationCoordinate2D(latitude: 37.7694, longitude: -122.46198579669)
        let topRight = CLLocationCoordinate2D(latitude: 37.7696, longitude: -122.354201897979)
        vc?.getMeteredFrom(bottomLeft, topRight)
        sleep(2)
        XCTAssert((vc?.alreadyHas(mockParkingSpot))!)
    }

    
}


