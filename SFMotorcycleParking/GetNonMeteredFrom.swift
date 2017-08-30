import CoreLocation
import UIKit
import GoogleMaps
import GooglePlaces

extension ViewController {
    func getNonMeteredFrom(_ bottomLeft: CLLocationCoordinate2D, _ topRight: CLLocationCoordinate2D) {
        
        let bottomLeftStr = "\(bottomLeft.latitude),\(bottomLeft.longitude)"
        let bottomRightStr = "\(topRight.latitude),\(topRight.longitude)"
        
        Get.parking.nonMetered(bottomLeft: bottomLeftStr, topRight: bottomRightStr) {
            (parkingSpot) in
            if self.alreadyHasMetered(parkingSpot) || parkingSpot.latitude == nil || parkingSpot.longitude == nil{
                return
            }
            DispatchQueue.main.async {
                let marker = self.configureNonMeteredMarkerFor(parkingSpot)
                marker.map = self.mapView
            }
        }
    }
}


