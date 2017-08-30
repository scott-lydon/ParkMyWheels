import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
    func testNilPrice() {
        let mockParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        XCTAssertEqual(vc?.getIconFor(mockParkingSpot), #imageLiteral(resourceName: "RedParking"))
    }
    
    func testMC1() {
        let mockParkingSpot = ParkingSpot(rateArea: "MC1", activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        XCTAssertEqual(vc?.getIconFor(mockParkingSpot), #imageLiteral(resourceName: "70CentPin"))
    }
    
    func testMC2() {
        let mockParkingSpot = ParkingSpot(rateArea: "MC2", activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        XCTAssertEqual(vc?.getIconFor(mockParkingSpot), #imageLiteral(resourceName: "60CentPin"))
    }
    
    func testMC3() {
        let mockParkingSpot = ParkingSpot(rateArea: "MC3", activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        XCTAssertEqual(vc?.getIconFor(mockParkingSpot), #imageLiteral(resourceName: "40CentPin"))
    }
    
    func testMC5() {
        let mockParkingSpot = ParkingSpot(rateArea: "MC5", activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        XCTAssertEqual(vc?.getIconFor(mockParkingSpot), #imageLiteral(resourceName: "CreditCardPin"))
    }
    
    func testPortMC1() {
        let mockParkingSpot = ParkingSpot(rateArea: "PortMC1", activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        XCTAssertEqual(vc?.getIconFor(mockParkingSpot), #imageLiteral(resourceName: "25CentPin"))
    }
    
    func testPortMC2() {
        let mockParkingSpot = ParkingSpot(rateArea: "PortMC2", activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        XCTAssertEqual(vc?.getIconFor(mockParkingSpot), #imageLiteral(resourceName: "50CentPin"))
    }
    
    func testDifferentValue() {
        let mockParkingSpot = ParkingSpot(rateArea: "RandomString", activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        XCTAssertEqual(vc?.getIconFor(mockParkingSpot), #imageLiteral(resourceName: "RedParking"))
    }
    
}
