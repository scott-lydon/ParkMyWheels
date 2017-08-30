import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
    func testFreeURLConversion() {
        
        let correctStr = "https://data.sfgov.org/resource/2a3r-5zrf.json?$where=within_box(geom,37.7114610887894,-122.46198579669,%2037.8629685275434,-122.354201897979)"
        let bottomLeft = "37.7114610887894,-122.46198579669"
        let topRight = "37.8629685275434,-122.354201897979"
        XCTAssertEqual(Get.parking.getURLFrom(bottomLeft, topRight), URL(string: correctStr)!)
    }
    
    func testFreeURLConversionFail() {
        let correctStr = "https://data.sfgov.org/resource/bvn5-zas9.json?$where=within_box(location,37.7114610887894,-122.46198579669,%2037.8629685275434,-122.354201897979)"
        let bottomLeft = ""
        let topRight = ""
        XCTAssertNotEqual(Get.parking.getURLFrom(bottomLeft, topRight), URL(string: correctStr)!)
    }
}
