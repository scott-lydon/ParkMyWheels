import CoreLocation
import UIKit
import GoogleMaps
import GooglePlaces

extension ViewController {
    
    func mapView(_ mapView: GMSMapView, idleAt position: GMSCameraPosition) {
        let bottomLeft = self.mapView.projection.visibleRegion().nearLeft
        let topRight = self.mapView.projection.visibleRegion().farRight
        getMeteredFrom(bottomLeft, topRight)
        getNonMeteredFrom(bottomLeft,topRight)
        mapView.camera = position
    }
}
