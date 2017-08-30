import Foundation

extension Get {
    
    func nonMetered(bottomLeft: String, topRight: String, completion: @escaping (ParkingSpot) -> Void) {
        let URL = getURLFrom(bottomLeft, topRight)
        let task = URLSession.shared.dataTask(with: URL) {
            (data, response, error) in
            self.handle(data, error, completion)
        }
        task.resume()
    }

}

