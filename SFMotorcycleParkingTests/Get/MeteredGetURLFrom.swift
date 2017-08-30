import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
//    func meteredGetURLFrom(_ bottomLeft: String, _ topRight: String) -> URL {
//        let sfgovPath = "https://data.sfgov.org/resource/bvn5-zas9.json?$"
//        let paramPath = "where=within_box(location,\(bottomLeft),%20\(topRight))"
//        let kURL = sfgovPath + paramPath
//        if let URL = URL(string: kURL) {
//            print("*****", URL)
//            return URL
//        } else {
//            return URL(string: "https://data.sfgov.org")!
//        }
//    }
    
    //
    
    func testURLConversion() {
        let correctStr = "https://data.sfgov.org/resource/bvn5-zas9.json?$where=within_box(location,37.7114610887894,-122.46198579669,%2037.8629685275434,-122.354201897979)"
        let bottomLeft = "37.7114610887894,-122.46198579669"
        let topRight = "37.8629685275434,-122.354201897979"
        XCTAssertEqual(Get.parking.meteredGetURLFrom(bottomLeft, topRight), URL(string: correctStr)!)
    }
    
    func testURLConversionFail() {
        let correctStr = "https://data.sfgov.org/resource/bvn5-zas9.json?$where=within_box(location,37.7114610887894,-122.46198579669,%2037.8629685275434,-122.354201897979)"
        let bottomLeft = ""
        let topRight = ""
        XCTAssertNotEqual(Get.parking.meteredGetURLFrom(bottomLeft, topRight), URL(string: correctStr)!)
    }
}
