import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
//    func configureNonMeteredMarkerFor(_ parkingSpot: ParkingSpot) -> GMSMarker {
//        if let lat = parkingSpot.latitude, let lon = parkingSpot.longitude {
//            let position = CLLocationCoordinate2D(latitude: lat, longitude: lon)
//            let marker = GMSMarker(position: position)
//            marker.title = getMarkerTextFor(parkingSpot)
//            marker.icon = #imageLiteral(resourceName: "RedParking")
//            return marker
//        }
//        print("count of markers without a location: ", countOfMarkersWithoutALocation)
//        countOfMarkersWithoutALocation += 1
//        return GMSMarker()
//    }
    
    //Give it an empty parking spot
    //Give it with a proper parking spot. 
    //
    
    func testConfigureMeteredMarker() {
        let mockParkingSpot = ParkingSpot(rateArea: nil, activeOccupancySensor: nil, streetName: nil, streetNumber: nil, smartMeter: nil, latitude: nil, longitude: nil, areaDescription: nil, id: nil)
        let _ = vc?.configureNonMeteredMarkerFor(mockParkingSpot)
        //XCTAssertEqual(<#T##expression1: [Equatable]##[Equatable]#>, <#T##expression2: [Equatable]##[Equatable]#>)
        
    }
}
