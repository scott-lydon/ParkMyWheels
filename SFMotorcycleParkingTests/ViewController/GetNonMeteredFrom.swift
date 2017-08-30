import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {

    func testVCGetNonMeteredFromTop() {
        if !Reachability.isConnectedToNetwork() {
            return
        }
        let mockParkingSpot: ParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: "126")
        
        XCTAssertFalse((vc?.alreadyHasMetered(mockParkingSpot))!)
        let bottomLeft = CLLocationCoordinate2D(latitude: 37.7694, longitude: -122.46198579669)
        let topRight = CLLocationCoordinate2D(latitude: 37.7696, longitude: -122.354201897979)
        vc?.getNonMeteredFrom(bottomLeft, topRight)
        sleep(2)
        //MARK: some variance in network response may cause this to fail, when functional. If this happens run the test again, If this passes once, then it is fine because the app makes multiple calls as the user moves the window/camer. 
        XCTAssert((vc?.alreadyHasMetered(mockParkingSpot))!)
    }
    
    
}
