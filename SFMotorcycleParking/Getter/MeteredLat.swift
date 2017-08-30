import Foundation

extension Get {
    func meteredLat(_ dict: [String: Any]) -> Double? {
        var lat: Double?
        if let location = dict["location"] as? [String: Any],
            let coordinates = location["coordinates"] as? [Double] {
            lat = coordinates[1]
        }
        return lat
    }
}
