import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
    
    func testSetFreeRateArea() {
        let dict = ["ratearea": "123"]
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertEqual(parkingSpot.rateArea, "free")
    }
    
    func testSetFreeRateAreaFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertEqual(parkingSpot.rateArea, "free")
    }
    
    func testSetFreeActiveSens() {
        let dict = ["activesens": "234"]
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertNil(parkingSpot.activeOccupancySensor)
    }
    
    func testFreeActiveSenseFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertNil(parkingSpot.activeOccupancySensor)
    }
    
    func testSetFreeStreetName() {
        let dict = ["street": "345"]
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertEqual(parkingSpot.streetName, "345")
    }
   
    
    func testSetFreeStreetNameFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertNil(parkingSpot.streetName)
    }
    
    func testSetFreeStreetNum() {
        let dict = ["street_num": "456"]
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertEqual(parkingSpot.streetNumber, "none")
    }
    
    func testFreeSetStreetNumFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertEqual(parkingSpot.streetNumber, "none")
    }
    
    func testSetFreeSmartMeter() {
        let dict = ["smart_mete": "567"]
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertEqual(parkingSpot.smartMeter, "567")
    }
    
    func testSetFreeSmartMeterFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertNil(parkingSpot.smartMeter)
    }
    
    func testFreeSetId() {
        let dict = ["object_id": "678"]
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertEqual(parkingSpot.id, "678")
    }
    
    func testFreeSetIdFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertNil(parkingSpot.id)
    }
    
    func testFreeSetLon() {
        let dict = ["geom": ["coordinates": [37.7114610887894, -122.46198579669]]]
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertTrue(parkingSpot.longitude! < 37.71146108879)
        XCTAssertTrue(parkingSpot.longitude! > 37.711461088789)
    }
    
    func testFreeSetLonFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertNil(parkingSpot.longitude)
    }
    
    func testFreeSetlat() {
        let dict = ["geom": ["coordinates": [37.7114610887894, -122.46198579669]]]
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertTrue(parkingSpot.latitude! < -122.4619857966)
        XCTAssertTrue(parkingSpot.latitude! > -122.461985797)
    }
    
    func testFreeSetlatFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertNil(parkingSpot.latitude)
    }
    
    func testFreeSetDescription() {
        let dict = ["description": "FROM CUSHMAN ST. TO 18' EASTERLY"]
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertEqual(parkingSpot.areaDescription, "FROM CUSHMAN ST. TO 18' EASTERLY")
    }
    
    func testFreeSetDescriptionFail() {
        let dict = [String:String]()
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertEqual(parkingSpot.areaDescription, nil)
    }
}
