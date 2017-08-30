

import Foundation

extension Get {
    
    func handle(_ data: Data?, _ error: Error?, _ completion: (ParkingSpot) -> Void) {
        if error != nil {
            print("Error with task: \(String(describing: error))")
        } else {
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [[String: Any]]
                if let json = json {
                    for spotDictionary in json {
                        let parkingSpot = self.getSpotFrom(spotDictionary)
                        completion(parkingSpot)
                    }
                }
            }
            catch {
                print("catching error from jsonSerialization")
            }
        }
    }
}
