import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
//    func getSpotFrom(_ dict: [String: Any]) -> ParkingSpot {
//        
//        return ParkingSpot(rateArea: "free", activeOccupancySensor: nil, streetName: dict["street"] as? String, streetNumber: "none", smartMeter: dict["smart_mete"] as? String, latitude: getLat(dict), longitude: getLon(dict), areaDescription: dict["description"] as? String, id: dict["post_id"] as? String)
//    }
    
    func testGetNonMeteredFrom() {
        let dict = [
            "ratearea": "123",
            "activesens": "234",
            "street": "345",
            "street_num": "456",
            "smart_mete": "567",
            "object_id": "678",
            "description": "Elm st.999",
            "geom": ["coordinates": [37.7114610887894, -122.46198579669]]
            ] as [String : Any]
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertEqual(parkingSpot.rateArea, "free")
        XCTAssertEqual(parkingSpot.activeOccupancySensor, nil)
        XCTAssertEqual(parkingSpot.streetName, "345")
        XCTAssertEqual(parkingSpot.streetNumber, "none")
        XCTAssertEqual(parkingSpot.smartMeter, "567")
        XCTAssertTrue(parkingSpot.longitude! < 37.71146108879)
        XCTAssertTrue(parkingSpot.longitude! > 37.711461088789)
        //Optional(:Double) to Double conversion loses accuracy.
        XCTAssertTrue(parkingSpot.latitude! < -122.4619857966)
        XCTAssertTrue(parkingSpot.latitude! > -122.461985797)
        XCTAssertEqual(parkingSpot.id, "678")
        XCTAssertEqual(parkingSpot.areaDescription, "Elm st.999")
    }
    
    func testGetNonMeteredFromFail() {
        let dict = [String : Any]()
        let parkingSpot = Get.parking.getSpotFrom(dict)
        XCTAssertEqual(parkingSpot.rateArea, "free")
        XCTAssertNil(parkingSpot.activeOccupancySensor)
        XCTAssertNil(parkingSpot.streetName)
        XCTAssertEqual(parkingSpot.streetNumber, "none")
        XCTAssertNil(parkingSpot.smartMeter)
        XCTAssertNil(parkingSpot.longitude)
        XCTAssertNil(parkingSpot.latitude)
        XCTAssertNil(parkingSpot.id)
        XCTAssertNil(parkingSpot.areaDescription)
    }
    
}
