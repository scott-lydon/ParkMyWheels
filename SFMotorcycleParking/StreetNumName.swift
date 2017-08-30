import CoreLocation
import UIKit
import GoogleMaps
import GooglePlaces

extension ViewController {
    func streetNum(_ parkingSpot: ParkingSpot) -> String {
        var num = " "
        if parkingSpot.streetNumber != nil {
            num = parkingSpot.streetNumber! + " "
        }
        return num
    }
    
    func streetName(_ parkingSpot: ParkingSpot) -> String {
        var street = " "
        if parkingSpot.streetName != nil {
            street = parkingSpot.streetName!
        } 
        return street
    }
}
