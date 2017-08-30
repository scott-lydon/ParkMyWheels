import Foundation

extension Get {
    
    func meteredGetURLFrom(_ bottomLeft: String, _ topRight: String) -> URL {
        let sfgovPath = "https://data.sfgov.org/resource/bvn5-zas9.json?$"
        let paramPath = "where=within_box(location,\(bottomLeft),%20\(topRight))"
        let kURL = sfgovPath + paramPath
        if let URL = URL(string: kURL) {
            print("*****", URL)
            return URL
        } else {
            return URL(string: "https://data.sfgov.org")!
        }
    }
}
