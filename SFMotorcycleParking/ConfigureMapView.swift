import CoreLocation
import UIKit
import GoogleMaps
import GooglePlaces

extension ViewController {

    @objc func configureMapView() {
        let camera = GMSCameraPosition.camera(withLatitude: defaultLocation.coordinate.latitude, longitude: defaultLocation.coordinate.longitude, zoom: zoomLevel)
        mapView = GMSMapView.map(withFrame: view.bounds, camera: camera)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.isMyLocationEnabled = true
        view.addSubview(mapView)
        mapView.isHidden = true
        mapView.delegate = self
    }
}

