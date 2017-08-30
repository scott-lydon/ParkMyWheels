
import Foundation

extension Get {
    
    
    func getLat(_ dict: [String: Any]) -> Double? {
        var lat: Double?
        if let geom = dict["geom"] as? [String: Any],
            let coordinates = geom["coordinates"] as? [Double] {
            lat = coordinates[1]
        }
        return lat
    }
}


