import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
    func testConfigureMarkerNilTitle() {
        let mockParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        let mockMarker = vc?.configureMarkerFor(mockParkingSpot)
        XCTAssertNil(mockMarker?.title)
    }
    
    func testConfigureMarker() {
        XCTAssertEqual(0, vc?.countOfMarkersWithoutALocation)
        let mockParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        let _ = vc?.configureMarkerFor(mockParkingSpot)
        XCTAssertEqual(1, vc?.countOfMarkersWithoutALocation)
    }
    
    func testConfigureMarkerSpotYieldsMarkerTitle() {
        let mockParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: 37.5728497361727, longitude: -122.366838790476, areaDescription: nil, id: nil)
        let mockMarker = vc?.configureMarkerFor(mockParkingSpot)
        if let title = mockMarker?.title {
            XCTAssertEqual(title, "Address Not Available")
        } else {
            XCTFail()
        }
    }
    
    func testConfigureMarkerSpotIconSet() {
        let mockParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: 37.5728497361727, longitude: -122.366838790476, areaDescription: nil, id: nil)
        let mockMarker = vc?.configureMarkerFor(mockParkingSpot)
        XCTAssertNotNil(mockMarker?.icon)
    }

}
