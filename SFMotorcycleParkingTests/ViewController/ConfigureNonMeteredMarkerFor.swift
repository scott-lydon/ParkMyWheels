import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
    
    func testConfigureMeteredMarkerNilTitle() {
        let mockParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        let mockMarker = vc?.configureNonMeteredMarkerFor(mockParkingSpot)
        XCTAssertNil(mockMarker?.title)
    }
    
    func testConfigureMeteredMarker() {
        XCTAssertEqual(0, vc?.countOfMarkersWithoutALocation)
        let mockParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        let _ = vc?.configureNonMeteredMarkerFor(mockParkingSpot)
        XCTAssertEqual(1, vc?.countOfMarkersWithoutALocation)
    }
    
    func testConfigureMeteredMarkerSpotYieldsMarkerTitle() {
        let mockParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: 37.5728497361727, longitude: -122.366838790476, areaDescription: nil, id: nil)
        let mockMarker = vc?.configureNonMeteredMarkerFor(mockParkingSpot)
        if let title = mockMarker?.title {
            XCTAssertEqual(title, "Address Not Available")
        } else {
            XCTFail()
        }
    }
    
    func testConfigureMeteredMarkerSpotIconSet() {
        let mockParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: 37.5728497361727, longitude: -122.366838790476, areaDescription: nil, id: nil)
        let mockMarker = vc?.configureNonMeteredMarkerFor(mockParkingSpot)
        XCTAssertNotNil(mockMarker?.icon)
    }
    
    
}
