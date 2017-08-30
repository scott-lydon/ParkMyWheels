import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {

    func testGetMarkerTextForInputAllNil() {
        let mockParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        XCTAssertEqual(vc?.getMarkerTextFor(mockParkingSpot), "Address Not Available")
    }
    
    func testGetMarkerTextForfreeAreaNil() {
        let mockParkingSpot = ParkingSpot(rateArea: "free", activeOccupancySensor: nil, streetName: "TAYLOR ST", streetNumber: "none", smartMeter: nil, latitude: 37.790503, longitude: -122.41211, areaDescription: nil, id: "170")
        XCTAssertEqual(vc?.getMarkerTextFor(mockParkingSpot), "Address Not Available")
    }
    
    func testGetMarkerTextForInputfreeAreaHas() {
        let mockParkingSpot = ParkingSpot(rateArea: "free", activeOccupancySensor: nil, streetName: "TAYLOR ST", streetNumber: "none", smartMeter: nil, latitude: 37.790503, longitude: -122.41211, areaDescription: " FROM PINE ST TO 25 FEET SOUTH", id: "170")
        XCTAssertEqual(vc?.getMarkerTextFor(mockParkingSpot), " FROM PINE ST TO 25 FEET SOUTH")
    }
    
    func testGetMarkerTextForInputNotFreeStreetAndNumNil() {
        let mockParkingSpot = ParkingSpot(rateArea: "cow", activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: 37.790503, longitude: -122.41211, areaDescription: " FROM PINE ST TO 25 FEET SOUTH", id: "170")
        XCTAssertEqual(vc?.getMarkerTextFor(mockParkingSpot), "Address Not Available")
    }
    
    func testGetMarkerTextForInputCostStreetNameNum() {
        let mockParkingSpot = ParkingSpot(rateArea: "Cost", activeOccupancySensor: nil, streetName: "TAYLOR ST", streetNumber: "24", smartMeter: nil, latitude: 37.790503, longitude: -122.41211, areaDescription: " FROM PINE ST TO 25 FEET SOUTH", id: "170")
        XCTAssertEqual(vc?.getMarkerTextFor(mockParkingSpot), "24 TAYLOR ST")
    }
    
    func testGetMarkerTextForInputCostStreetNumNil() {
        let mockParkingSpot = ParkingSpot(rateArea: "Cost", activeOccupancySensor: nil, streetName: "TAYLOR ST", streetNumber: nil, smartMeter: nil, latitude: 37.790503, longitude: -122.41211, areaDescription: " FROM PINE ST TO 25 FEET SOUTH", id: "170")
        XCTAssertEqual(vc?.getMarkerTextFor(mockParkingSpot), "TAYLOR ST")
    }
    
    func testGetMarkerTextForInputCostWithStreetNumButNoName() {
        let mockParkingSpot = ParkingSpot(rateArea: "Cost", activeOccupancySensor: nil, streetName: nil, streetNumber: "19", smartMeter: nil, latitude: 37.790503, longitude: -122.41211, areaDescription: " FROM PINE ST TO 25 FEET SOUTH", id: "170")
        XCTAssertEqual(vc?.getMarkerTextFor(mockParkingSpot), "Address Not Available")
    }
    
}
