
import Foundation

class ParkingSpot {
    var rateArea: String?
    var activeOccupancySensor: String?
    var streetName: String?
    var streetNumber: String?
    var smartMeter: String?
    var latitude: Double?
    var longitude: Double?
    var areaDescription: String?
    var id: String?
    
    init(rateArea: String?, activeOccupancySensor: String?, streetName: String?, streetNumber: String?, smartMeter: String?, latitude: Double?, longitude: Double?, areaDescription: String?, id: String?) {
        self.rateArea = rateArea
        self.activeOccupancySensor = activeOccupancySensor
        self.streetName = streetName
        self.streetNumber = streetNumber
        self.smartMeter = smartMeter
        self.latitude = latitude
        self.longitude = longitude
        self.areaDescription = areaDescription
        self.id = id
    }
}

