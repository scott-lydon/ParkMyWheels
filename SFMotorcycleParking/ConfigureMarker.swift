import CoreLocation
import UIKit
import GoogleMaps
import GooglePlaces

extension ViewController {
    func configureMarkerFor(_ parkingSpot: ParkingSpot) -> GMSMarker {
        if let lat = parkingSpot.latitude, let lon = parkingSpot.longitude {
            let position = CLLocationCoordinate2D(latitude: lat, longitude: lon)
            let marker = GMSMarker(position: position)
            marker.title = getMarkerTextFor(parkingSpot)
            marker.icon = getIconFor(parkingSpot)
            return marker
        }
        print("count of markers without a location: ", countOfMarkersWithoutALocation)
        countOfMarkersWithoutALocation += 1
        return GMSMarker()
    }
}




