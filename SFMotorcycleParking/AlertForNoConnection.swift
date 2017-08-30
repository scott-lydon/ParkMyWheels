import Foundation
import UIKit

extension ViewController {
    func alertForNoConnection() {
        if Reachability.isConnectedToNetwork() {
            return
        }
        let alert = UIAlertController(title: "We're sorry", message: "We need Internet connection to get the parking spot information", preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "Ok", style: .default) { alert in
            self.alertForNoConnection()
        }
        alert.addAction(okayAction)
        present(alert, animated: true, completion: nil)
    }
}

