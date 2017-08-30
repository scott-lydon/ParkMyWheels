import UIKit
import GooglePlaces
import GoogleMaps
import XCTest

@testable import SFMotorcycleParking

extension SFMotorcycleParkingTests {
//    func meteredHandle(_ data: Data?, _ error: Error?, _ completion: (ParkingSpot) -> Void) {
//        if error != nil {
//            print("error \(String(describing: error)) -ScottNote")
//        } else {
//            do {
//                let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [[String: Any]]
//                for spotDictionary in json {
//                    let parkingSpot: ParkingSpot = self.getMeteredSpotFrom(spotDictionary)
//                    completion(parkingSpot)
//                }
//            } catch {
//                print("caught metered -SL")
//            }
//        }
//    }
    
    func testMeteredHandleError() {
        Get.parking.meteredHandle(nil, ThrownError.forTest) { (parkingSpot) in
            XCTFail("\(#line),\(#function)")
        }
    }
    
    func testMeteredHandleCatch() {
        Get.parking.meteredHandle(Data(), nil) { (parkingSpot) in
            XCTFail("\(#line),\(#function)")
        }
    }
}
