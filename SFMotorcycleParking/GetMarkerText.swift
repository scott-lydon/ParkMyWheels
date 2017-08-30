import CoreLocation
import UIKit
import GoogleMaps
import GooglePlaces

extension ViewController {
    func getMarkerTextFor(_ parkingSpot: ParkingSpot) -> String {
        var title = ""
        if let price = parkingSpot.rateArea {
            if price == "free" {
                if parkingSpot.areaDescription != nil {
                    title = parkingSpot.areaDescription!
                }
            } else {
                title = streetNum(parkingSpot) + streetName(parkingSpot)
            }
        }
        if title == "" || title == " " {
            title = "Address Not Available"
        }
        return title
    }
}

