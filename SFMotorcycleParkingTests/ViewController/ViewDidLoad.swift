import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        configureLocationManager()
//        placesClient = GMSPlacesClient.shared()
//        configureMapView()
//        styleMap()
//    }
    func testLocationManager() {
        vc?.viewDidLoad()
        XCTAssertEqual(vc?.locationManager.distanceFilter, 50)
        XCTAssertEqual(vc?.locationManager.desiredAccuracy, kCLLocationAccuracyBest)
    }
    
    func testConfigureMapViewAfterLoad() {
        vc?.viewDidLoad()
        XCTAssert((vc?.mapView.isMyLocationEnabled)!)
    }
    
    func testMapStyleHappenedAfterLoad() {
        vc?.viewDidLoad()
        XCTAssertNotNil(vc?.mapView.mapStyle)
    }
    

    func testConfigLocationManagerWasCalled() {
        
    }
}
