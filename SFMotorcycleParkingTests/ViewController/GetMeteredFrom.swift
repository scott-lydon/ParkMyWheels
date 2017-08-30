import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
//    func getMeteredFrom(_ bottomLeft: CLLocationCoordinate2D, _ topRight: CLLocationCoordinate2D) {
//        
//        let bottomLeftStr = "\(bottomLeft.latitude),\(bottomLeft.longitude)"
//        let topRightStr = "\(topRight.latitude),\(topRight.longitude)"
//        
//        Get.parking.metered(bottomLeft: bottomLeftStr, topRight: topRightStr) {
//            parkingSpot in
//            if self.alreadyHas(parkingSpot) {
//                return
//            }
//            DispatchQueue.main.async {
//                let marker = self.configureMeteredMarkerFor(parkingSpot)
//                marker.map = self.mapView
//            }
//        }
//    }
    
    //MARK: The following test produces unreliable results with an odd error: "Could not cast value of type '__NSDictionaryI' (0x1aa259c28) to 'NSArray' (0x1aa2597c8)."  In MeteredHandle.swift, perhaps we should use as? and then check if json is nil, if it is cast to the dictionary which is being sent. or do nothing. 
    
    
//    func testVCGetMeteredFromTop() {
//        if !Reachability.isConnectedToNetwork() {
//            return
//        }
//        let mockParkingSpot: ParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: "126")
//        
//        XCTAssertFalse((vc?.alreadyHas(mockParkingSpot))!)
//
//        let bottomLeft = CLLocationCoordinate2D(latitude: 37.7694, longitude: -122.46198579669)
//        let topRight = CLLocationCoordinate2D(latitude: 37.7696, longitude: -122.354201897979)
//        vc?.getMeteredFrom(bottomLeft, topRight)
//        sleep(2)
//        //MARK: some variance in network response may cause this to fail, when functional.  If this passes once, then it is fine.
//        XCTAssert((vc?.alreadyHas(mockParkingSpot))!)
//    }

    
}
