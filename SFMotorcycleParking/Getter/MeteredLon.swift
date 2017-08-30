import Foundation

extension Get {
    
    func meteredLon(_ dict: [String: Any]) -> Double? {
        var lon: Double?
        if let location = dict["location"] as? [String: Any],
            let coordinates = location["coordinates"] as? [Double] {
            lon = coordinates[0]
        }
        return lon
    }
}
