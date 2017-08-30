import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

class SFMotorcycleParkingTests: XCTestCase {
    
    var vc: ViewController?
    
    class MockViewController: ViewController {
        var configureLocationManagerWasCalled = false
        override func configureMapView() {
            configureLocationManagerWasCalled = true
        }
    }

    enum ThrownError: Error {
        case forTest
    }
    
    override func setUp() {
        super.setUp()
        vc = ViewController()
        
    }
    
    override func tearDown() {
        vc = nil
        super.tearDown()
    }
    
    
    
    
    
}
