import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
//    var locationManager = CLLocationManager()
//    var currentLocation: CLLocation?
//    var mapView: GMSMapView!
//    var meteredIDs: [String: Bool] = [:]
//    var nonMeteredIDs: [String: Bool] = [:]
//    var placesClient: GMSPlacesClient!
//    var zoomLevel: Float = 16.0
//    let defaultLocation = CLLocation(latitude: 37.7749, longitude: -122.4194)
    
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
