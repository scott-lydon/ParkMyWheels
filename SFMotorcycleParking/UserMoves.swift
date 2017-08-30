import CoreLocation
import UIKit
import GoogleMaps
import GooglePlaces

extension ViewController {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            resetMapView(locations.last!)
            let bottomLeft = self.mapView.projection.visibleRegion().nearLeft
            let topRight = self.mapView.projection.visibleRegion().farRight
            getMeteredFrom(bottomLeft, topRight)
            getNonMeteredFrom(bottomLeft,topRight)
   }
}


