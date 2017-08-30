import CoreLocation
import UIKit
import GoogleMaps
import GooglePlaces

extension ViewController {
    func alreadyHas(_ parkingSpot: ParkingSpot) -> Bool {
        if let id = parkingSpot.id {
            if self.meteredIDs[id] != nil {
                return true
            } else {
                self.meteredIDs[id] = true
            }
        }
        return false
    }
}
