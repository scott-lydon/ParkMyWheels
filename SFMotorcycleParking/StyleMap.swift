import CoreLocation
import UIKit
import GoogleMaps
import GooglePlaces

extension ViewController {
    func styleMap() {
        do {
            // Set the map style by passing the URL of the local file.
            if let styleURL = Bundle.main.url(forResource: "style", withExtension: "json") {
                print(styleURL, "har")
                mapView.mapStyle = try GMSMapStyle(contentsOfFileURL: styleURL)
            } else {
                NSLog("Unable to find style.json")
            }
        } catch {
            NSLog("map style/s failed to load. \(error)")
        }
    }
}
