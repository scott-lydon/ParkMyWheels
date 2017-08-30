
//  Created by Scott Lydon on 5/22/17.
//  Copyright © 2017 Scott Lydon. All rights reserved.


import UIKit
import GooglePlaces
import GoogleMaps

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        GMSServices.provideAPIKey("AIzaSyBoG38Hg-B1-sqGHMkqcvMuTiKWj9Fl36A")
        GMSPlacesClient.provideAPIKey("AIzaSyBoG38Hg-B1-sqGHMkqcvMuTiKWj9Fl36A")
        return true
    }
    
    
    
}

