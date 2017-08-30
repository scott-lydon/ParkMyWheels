

import Foundation

extension Get {
    
    func getURLFrom(_ bottomLeft: String, _ topRight: String) -> URL {
        let kURL = "https://data.sfgov.org/resource/2a3r-5zrf.json?$where=within_box(geom,\(bottomLeft),%20\(topRight))"
        print("LASTR", bottomLeft, topRight)
        if let URL = URL(string: kURL) {
            print(URL)
            return URL
        } else {
            return URL(string: "https://data.sfgov.org")!
        }
    }
}
