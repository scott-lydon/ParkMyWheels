import Foundation

extension Get {
    func getLon(_ dict: [String: Any]) -> Double? {
        var lon: Double?
        
        if let geom = dict["geom"] as? [String: Any],
            let coordinates = geom["coordinates"] as? [Double] {
            lon = coordinates[0]
        }
        return lon
    }
}
