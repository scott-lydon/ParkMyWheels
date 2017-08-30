import CoreLocation
import UIKit
import GoogleMaps
import GooglePlaces

extension ViewController {
    func configureMarkerFor(_ parkingSpot: ParkingSpot) -> GMSMarker {
        let position = CLLocationCoordinate2D(latitude: parkingSpot.latitude!, longitude: parkingSpot.longitude!)
        let marker = GMSMarker(position: position)
        marker.title = getMarkerTextFor(parkingSpot)
        marker.icon = getIconFor(parkingSpot)
        return marker
    }
}




