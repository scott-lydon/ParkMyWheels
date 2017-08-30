import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
//    func handle(_ data: Data?, _ error: Error?, _ completion: (ParkingSpot) -> Void) {
//        if error != nil {
//            print("Error with task: \(String(describing: error))")
//        } else {
//            do {
//                let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [[String: Any]]
//                for spotDictionary in json {
//                    let parkingSpot = self.getSpotFrom(spotDictionary)
//                    completion(parkingSpot)
//                }
//            }
//            catch {
//                print("catching error from jsonSerialization")
//            }
//        }
//    }
    
    func testHandleError() {
        Get.parking.handle(nil, ThrownError.forTest) { (parkingSpot) in
            XCTFail("\(#line),\(#function)")
        }
    }
    
    func testHandleCatch() {
        Get.parking.handle(Data(), nil) { (parkingSpot) in
            XCTFail("\(#line),\(#function)")
        }
    }
}
