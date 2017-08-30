import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
//    func styleMap() {
//        do {
//            // Set the map style by passing the URL of the local file.
//            if let styleURL = Bundle.main.url(forResource: "style", withExtension: "json") {
//                print(styleURL, "har")
//                mapView.mapStyle = try GMSMapStyle(contentsOfFileURL: styleURL)
//            } else {
//                NSLog("Unable to find style.json")
//            }
//        } catch {
//            NSLog("map style/s failed to load. \(error)")
//        }
//    }
    
    func testStyleMap() {
        XCTAssertNil(vc?.mapView?.mapStyle)
        vc?.configureMapView()
        vc?.styleMap()
        XCTAssertNotNil(vc?.mapView?.mapStyle)
    }
    
    
}
