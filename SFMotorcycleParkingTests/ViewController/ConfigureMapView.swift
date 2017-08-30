import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
    func testMapViewSetAutoresizingMask() {
        vc?.configureMapView()
        XCTAssertEqual(vc?.mapView.autoresizingMask, [.flexibleWidth, .flexibleHeight])
    }
    
    func testIsMyLocationEnabled() {
        vc?.configureMapView()
        XCTAssert((vc?.mapView.isMyLocationEnabled)!)
    }
    
    func testAddedMapViewIsNotNil() {
        XCTAssertNil(vc?.mapView)
        vc?.configureMapView()
        XCTAssertNotNil(vc?.mapView)
    }
    
    func testMapViewIsHidden() {
        vc?.configureMapView()
        XCTAssert((vc?.mapView.isHidden)!)
    }
    
    func testMapViewHasDelegateSelf() {
        XCTAssertNil(vc?.mapView?.delegate)
        vc?.configureMapView()
        XCTAssertNotNil(vc?.mapView?.delegate)
        XCTAssert(((vc?.mapView?.delegate)?.isKind(of: ViewController.self))!)
    }
  
}
