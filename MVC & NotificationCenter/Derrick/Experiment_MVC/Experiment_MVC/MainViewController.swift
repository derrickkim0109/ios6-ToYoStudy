//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: View
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    var registrantList: [Registrant] = []
    let center: NotificationCenter = NotificationCenter.default
    var notificationName = Notification.Name("registeration")
    
    //MARK: Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hitRegisterButton(_ sender: Any) {
        register()
    }
    
    @IBAction func hitCheckButton(_ sender: Any) {
        broadcastLive()
    }

    func register() {
        guard let name = nameTextField.text,
              let phoneNumber = phoneNumberTextField.text else {
            return
        }
        
        let registrant = Registrant(name: name, phoneNumber: phoneNumber)
        registrantList.append(registrant)
        setUp()
    }
    
    func broadcastLive() {
        center.post(name: notificationName, object: nil)
    }
    
    func setUp() {
        center.addObserver(self,
                           selector: #selector(rotate),
                           name: notificationName,
                           object: nil
        )
    }
    
    @objc func rotate() {
        nameLabel.text = registrantList[0].name
        phoneNumberLabel.text = registrantList[0].phoneNumber
    }
}
