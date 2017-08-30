import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
    func testLocationManagerNotNil() {
        vc?.viewDidLoad()
        XCTAssertNotNil(vc?.locationManager)
    }
    
    func testMapViewType() {
        vc?.viewDidLoad()
        XCTAssert((vc?.mapView.isKind(of: GMSMapView.self))!)
    }
    
    func testZoom() {
        vc?.viewDidLoad()
        XCTAssertEqual(vc?.zoomLevel, 16.0)
    }
    
    func testDefaultLocationInSF() {
        vc?.viewDidLoad()
        XCTAssert((vc?.defaultLocation.coordinate.latitude)! > 37.658402)
        XCTAssert((vc?.defaultLocation.coordinate.latitude)! < 37.81642167)
        XCTAssert((vc?.defaultLocation.coordinate.longitude)! > -122.487639449)
        XCTAssert((vc?.defaultLocation.coordinate.longitude)! < -122.37524215)
    }
}
