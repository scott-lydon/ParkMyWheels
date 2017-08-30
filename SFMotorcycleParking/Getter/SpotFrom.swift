

import Foundation

extension Get {
    
    func getSpotFrom(_ dict: [String: Any]) -> ParkingSpot {
        return ParkingSpot(rateArea: "free", activeOccupancySensor: nil, streetName: dict["street"] as? String, streetNumber: "none", smartMeter: dict["smart_mete"] as? String, latitude: getLat(dict), longitude: getLon(dict), areaDescription: dict["description"] as? String, id: dict["object_id"] as? String)
    }
}








