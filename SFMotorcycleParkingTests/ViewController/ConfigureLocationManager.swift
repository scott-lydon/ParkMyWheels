import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests: CLLocationManagerDelegate {
//    func configureLocationManager() {
//        locationManager = CLLocationManager()
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.distanceFilter = 50
//        locationManager.startUpdatingLocation()
//        locationManager.delegate = self
//    }
    
    
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
    
    //THEORY: MOCKING CLLOCATION MANAGER REQUIRES USER AUTHORIZATION TO OVERRIDE.
    
//    class MockLocationManager: CLLocationManager {
//        var startUpdatingLocationWasCalled = false
//        var requestWhenInUseAuthorizationWasCalled = false
//        
//        override func requestWhenInUseAuthorization() {
//            requestWhenInUseAuthorizationWasCalled = true
//        }
//        
//        override func startUpdatingLocation() {
//            startUpdatingLocationWasCalled = true
//        }
//    }
//    
//    func testRequestInUseAuthorizationWasCalled() {
//        let mockLocationManager = MockLocationManager()
//        vc?.locationManager = mockLocationManager
//        vc?.configureLocationManager()
//        XCTAssert(mockLocationManager.requestWhenInUseAuthorizationWasCalled)
//    }
    
    
    
}
