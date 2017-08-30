import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {

    func testStreetNumHasStreetNameHas() {
        let mockParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: "Cow St", streetNumber: "94", smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        XCTAssertEqual(vc?.streetNum(mockParkingSpot), "94 ")
    }
    
    func testStreetNumHasStreetNameNil() {
        let mockParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: "94", smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        XCTAssertEqual(vc?.streetNum(mockParkingSpot), "")
    }
    
    func testStreetNumNil() {
        let mockParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: "Terrin", streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        XCTAssertEqual(vc?.streetNum(mockParkingSpot), "")
    }
    
    
    //MARK: STREETNAME()
    func testStreetNameHas() {
        let mockParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: "Terrin", streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        XCTAssertEqual(vc?.streetName(mockParkingSpot), "Terrin")
    }
    
    func testStreetNameNil() {
        let mockParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        XCTAssertEqual(vc?.streetName(mockParkingSpot), " ")
    }
}
