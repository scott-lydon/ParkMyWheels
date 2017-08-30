

import Foundation

extension Get {
    
    func getURLFrom(_ bottomLeft: String, _ topRight: String) -> URL {
        let kURL = "https://data.sfgov.org/resource/2a3r-5zrf.json?$where=within_box(geom,\(bottomLeft),%20\(topRight))"
        if let URL = URL(string: kURL) {
            return URL
        } else {
            return URL(string: "https://data.sfgov.org")!
        }
    }
}
