import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
//    func getNonMeteredFrom(_ bottomLeft: CLLocationCoordinate2D, _ topRight: CLLocationCoordinate2D) {
//        
//        let bottomLeftStr = "\(bottomLeft.latitude),\(bottomLeft.longitude)"
//        let bottomRightStr = "\(topRight.latitude),\(topRight.longitude)"
//        
//        Get.parking.nonMetered(bottomLeft: bottomLeftStr, topRight: bottomRightStr) {
//            (parkingSpot) in
//            if self.alreadyHasMetered(parkingSpot) {
//                return
//            }
//            DispatchQueue.main.async {
//                let marker = self.configureNonMeteredMarkerFor(parkingSpot)
//                marker.map = self.mapView
//            }
//        }
//    }
    
    func testVCGetNonMeteredFromTop() {
        if !Reachability.isConnectedToNetwork() {
            XCTFail("Not Connected to the internet.  Not able to test \(#function).")
            return
        }
        let mockParkingSpot: ParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: "126")
        
        XCTAssertFalse((vc?.alreadyHasMetered(mockParkingSpot))!)
        
        let bottomLeft = CLLocationCoordinate2D(latitude: 37.7114610887894, longitude: -122.46198579669)
        let topRight = CLLocationCoordinate2D(latitude: 37.8629685275434, longitude: -122.354201897979)
        vc?.getNonMeteredFrom(bottomLeft, topRight)
        sleep(1)
        
        XCTAssert((vc?.alreadyHasMetered(mockParkingSpot))!)
    }
    
    
}
