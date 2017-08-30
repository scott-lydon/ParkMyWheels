import CoreLocation
import UIKit
import GoogleMaps
import GooglePlaces

extension ViewController {
    func alreadyHasMetered(_ parkingSpot: ParkingSpot) -> Bool {
        if let id = parkingSpot.id {
            if self.nonMeteredIDs[id] != nil {
                return true
            } else {
                self.nonMeteredIDs[id] = true
            }
        }
        return false
    }
}
