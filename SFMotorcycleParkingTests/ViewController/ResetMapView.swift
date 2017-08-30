import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
//    func resetMapView(_ location: CLLocation) {
//        let camera = GMSCameraPosition.camera(withLatitude: location.coordinate.latitude,
//                                              longitude: location.coordinate.longitude,
//                                              zoom: zoomLevel)
//        if mapView.isHidden {
//            mapView.isHidden = false
//            mapView.camera = camera
//        } else {
//            mapView.animate(to: camera)
//        }
//    }
    
    func testResetMapViewIsHidden() {
        XCTAssertNil(vc?.mapView)
        vc?.viewDidLoad()
        vc?.resetMapView(CLLocation(latitude: 37.572779, longitude: -122.36684))
        XCTAssertFalse((vc?.mapView?.isHidden)!)
    }
    
    
}
