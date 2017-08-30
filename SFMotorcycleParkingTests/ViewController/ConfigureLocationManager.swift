import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests: CLLocationManagerDelegate {
    
    func testDistanceFilter() {
        vc?.configureLocationManager()
        XCTAssertEqual(vc?.locationManager.distanceFilter, 50)
    }
    
    func testDesiredAccuracy() {
        vc?.configureLocationManager()
        XCTAssertEqual(vc?.locationManager.desiredAccuracy, kCLLocationAccuracyBest)
    }
    
    func testDelegateWasSet() {
        XCTAssertNil(vc?.locationManager.delegate)
        vc?.configureLocationManager()
        XCTAssertNotNil(vc?.locationManager.delegate)
        XCTAssert(((vc?.locationManager.delegate)?.isKind(of: ViewController.self))!)
    }   
}
