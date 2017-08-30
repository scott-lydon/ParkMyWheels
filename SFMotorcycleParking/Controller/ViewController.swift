
//  Created by Scott Lydon on 5/22/17.
//  Copyright © 2017 Scott Lydon. All rights reserved.

import CoreLocation
import UIKit
import GoogleMaps
import GooglePlaces

class ViewController: UIViewController, GMSMapViewDelegate {
    
    var locationManager = CLLocationManager()
    var currentLocation: CLLocation?
    var mapView: GMSMapView!
    var meteredIDs: [String: Bool] = [:]
    var nonMeteredIDs: [String: Bool] = [:]
    var placesClient: GMSPlacesClient!
    var zoomLevel: Float = 16.0
    let defaultLocation = CLLocation(latitude: 37.7749, longitude: -122.4194)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLocationManager()
        placesClient = GMSPlacesClient.shared()
        configureMapView()
        styleMap()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        alertForNoConnection()
    }
}









