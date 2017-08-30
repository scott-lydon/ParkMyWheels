import CoreLocation
import UIKit
import GoogleMaps
import GooglePlaces

extension ViewController {
    // Handle location manager errors.
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        locationManager.stopUpdatingLocation()
        print("Error : \(error)")
    }
}
