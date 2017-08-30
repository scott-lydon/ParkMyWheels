import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
//    func getMeteredSpotFrom(_ dict: [String: Any]) -> ParkingSpot {
//        
//        return ParkingSpot(rateArea: dict["ratearea"] as? String, activeOccupancySensor: dict["activesens"] as? String, streetName: dict["streetname"] as? String, streetNumber: dict["street_num"] as? String, smartMeter: dict["smart_mete"] as? String, latitude: meteredLat(dict), longitude: meteredLon(dict), areaDescription: "No Description", id: dict["post_id"] as? String)
//    }
    
    
    func testGetMeteredSpot() {
        let dict = [
            "ratearea": "123",
            "activesens": "234",
            "streetname": "345",
            "street_num": "456",
            "smart_mete": "567",
            "post_id": "678",
            "location": ["coordinates": [37.7114610887894, -122.46198579669]]
            ] as [String : Any]
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertEqual(parkingSpot.rateArea, "123")
        XCTAssertEqual(parkingSpot.activeOccupancySensor, "234")
        XCTAssertEqual(parkingSpot.streetName, "345")
        XCTAssertEqual(parkingSpot.streetNumber, "456")
        XCTAssertEqual(parkingSpot.smartMeter, "567")
        XCTAssertTrue(parkingSpot.longitude! < 37.71146108879)
        XCTAssertTrue(parkingSpot.longitude! > 37.711461088789)
        //Optional conversion loses accuracy with doubles.
        XCTAssertTrue(parkingSpot.latitude! < -122.4619857966)
        XCTAssertTrue(parkingSpot.latitude! > -122.461985797)
        XCTAssertEqual(parkingSpot.id, "678")
        XCTAssertEqual(parkingSpot.areaDescription, "No Description")
    }
    
    
    func testGetMeteredSpotFail() {
        let dict = [String : Any]()
        let parkingSpot = Get.parking.getMeteredSpotFrom(dict)
        XCTAssertNil(parkingSpot.rateArea)
        XCTAssertNil(parkingSpot.rateArea)
        XCTAssertNil(parkingSpot.activeOccupancySensor)
        XCTAssertNil(parkingSpot.streetName)
        XCTAssertNil(parkingSpot.streetNumber)
        XCTAssertNil(parkingSpot.smartMeter)
        XCTAssertNil(parkingSpot.longitude)
        XCTAssertNil(parkingSpot.latitude)
        XCTAssertNil(parkingSpot.id)
        XCTAssertEqual(parkingSpot.areaDescription, "No Description")
    }
}
