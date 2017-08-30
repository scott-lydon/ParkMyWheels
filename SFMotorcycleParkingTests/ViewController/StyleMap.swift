import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
    func testStyleMap() {
        XCTAssertNil(vc?.mapView?.mapStyle)
        vc?.configureMapView()
        vc?.styleMap()
        XCTAssertNotNil(vc?.mapView?.mapStyle)
    }
    
    
}
