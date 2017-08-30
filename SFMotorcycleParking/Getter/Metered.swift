import Foundation

extension Get {
    
    func metered(bottomLeft: String, topRight: String, completion : @escaping (ParkingSpot) -> Void) {
        let meteredURL = meteredGetURLFrom(bottomLeft, topRight)
        let task = URLSession.shared.dataTask(with: meteredURL) {
            (data, response, error) in
            self.meteredHandle(data, error, completion)
        }
        task.resume()
    }

}





