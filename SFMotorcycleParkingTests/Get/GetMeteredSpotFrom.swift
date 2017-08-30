import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
    func testSetRateArea() {
        let dict = ["ratearea": "123"]
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertEqual(parkingSpot.rateArea, "123")
    }
    
    func testSetRateAreaFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertNil(parkingSpot.rateArea)
    }
    
    func testSetActiveSens() {
        let dict = ["activesens": "234"]
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertEqual(parkingSpot.activeOccupancySensor, "234")
    }
    
    func testActiveSenseFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertNil(parkingSpot.activeOccupancySensor)
    }
    
    func testSetStreetName() {
        let dict = ["streetname": "345"]
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertEqual(parkingSpot.streetName, "345")
    }
    
    func testSetStreetNameFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertNil(parkingSpot.streetName)
    }
    
    func testSetStreetNum() {
        let dict = ["street_num": "456"]
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertEqual(parkingSpot.streetNumber, "456")
    }
    
    func testSetStreetNumFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertNil(parkingSpot.streetNumber)
    }
    
    func testSetSmartMeter() {
        let dict = ["smart_mete": "567"]
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertEqual(parkingSpot.smartMeter, "567")
    }
    
    func testSetSmartMeterFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertNil(parkingSpot.smartMeter)
    }
    
    func testSetId() {
        let dict = ["post_id": "678"]
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertEqual(parkingSpot.id, "678")
    }
    
    func testSetIdFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertNil(parkingSpot.id)
    }
    
    func testSetLon() {
        let dict = ["location": ["coordinates": [37.7114610887894, -122.46198579669]]]
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertTrue(parkingSpot.longitude! < 37.71146108879)
        XCTAssertTrue(parkingSpot.longitude! > 37.711461088789)
    }
    
    func testSetLonFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertNil(parkingSpot.longitude)
    }
    
    func testSetlat() {
        let dict = ["location": ["coordinates": [37.7114610887894, -122.46198579669]]]
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertTrue(parkingSpot.latitude! < -122.4619857966)
        XCTAssertTrue(parkingSpot.latitude! > -122.461985797)
    }
    
    func testSetlatFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertNil(parkingSpot.latitude)
    }
    
    func testSetDescription() {
        let dict = ["location": ["coordinates": [37.7114610887894, -122.46198579669]]]
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertEqual(parkingSpot.areaDescription, "No Description")
    }
    
    func testSetDescriptionFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertEqual(parkingSpot.areaDescription, "No Description")
    }
}
