import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
    func testResetMapViewIsHidden() {
        XCTAssertNil(vc?.mapView)
        vc?.viewDidLoad()
        vc?.resetMapView(CLLocation(latitude: 37.572779, longitude: -122.36684))
        XCTAssertFalse((vc?.mapView?.isHidden)!)
    }
    
    
}
