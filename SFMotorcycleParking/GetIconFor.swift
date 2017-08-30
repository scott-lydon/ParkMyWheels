import CoreLocation
import UIKit
import GoogleMaps
import GooglePlaces

extension ViewController {
    func getIconFor(_ spot: ParkingSpot) -> UIImage {
        guard let price = spot.rateArea else { return #imageLiteral(resourceName: "RedParking")}
        var img = UIImage()
        switch price {
        case "MC1":
            img = #imageLiteral(resourceName: "70CentPin")
        case "MC2":
            img = #imageLiteral(resourceName: "60CentPin")
        case "MC3":
            img = #imageLiteral(resourceName: "40CentPin")
        case "MC5":
            img = #imageLiteral(resourceName: "CreditCardPin")
        case "PortMC1":
            img = #imageLiteral(resourceName: "25CentPin")
        case "PortMC2":
            img = #imageLiteral(resourceName: "50CentPin")
        default:
            img = #imageLiteral(resourceName: "RedParking")
        }
        return img
    }
}
