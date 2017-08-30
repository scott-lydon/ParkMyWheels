

import Foundation

extension Get {
    func getMeteredSpotFrom(_ dict: [String: Any]) -> ParkingSpot {
        return ParkingSpot(rateArea: dict["ratearea"] as? String, activeOccupancySensor: dict["activesens"] as? String, streetName: dict["streetname"] as? String, streetNumber: dict["street_num"] as? String, smartMeter: dict["smart_mete"] as? String, latitude: meteredLat(dict), longitude: meteredLon(dict), areaDescription: "No Description", id: dict["post_id"] as? String)
    }
}


