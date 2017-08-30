import CoreLocation
import UIKit
import GoogleMaps
import GooglePlaces

extension ViewController {
    func getMeteredFrom(_ bottomLeft: CLLocationCoordinate2D, _ topRight: CLLocationCoordinate2D) {
        
        let bottomLeftStr = "\(bottomLeft.latitude),\(bottomLeft.longitude)"
        let topRightStr = "\(topRight.latitude),\(topRight.longitude)"
        
        Get.parking.metered(bottomLeft: bottomLeftStr, topRight: topRightStr) {
            parkingSpot in
            if self.alreadyHas(parkingSpot) {
                return
            }
            DispatchQueue.main.async {
                let marker = self.configureMarkerFor(parkingSpot)
                marker.map = self.mapView
            }
        }
    }
}


