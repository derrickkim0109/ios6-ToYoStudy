//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import UIKit

struct Registrant {
    let name: String
    let phoneNumber: String
}

extension Notification.Name {
    static let identifier = Notification.Name("BaekGom")

}

enum NotificationInfo {
    case detailInfo
}

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    var registrantList: [Registrant] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func hitRegisterButton(_ sender: Any) {
        print("등록")
        register()
        
        
        NotificationCenter.default.post(name: Notification.Name.identifier, object: nil,
                                        userInfo: [NotificationInfo.detailInfo : "키위주스"])
        
    }
    
    func addob() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(noticeInfo(_:)) ,
                                               name: Notification.Name.identifier,
                                               object: nil)
        print("옵져")
    }
    
    @objc func noticeInfo(_ notification: Notification) {
        print("아려")
        guard let object = notification.userInfo?[NotificationInfo.detailInfo] as? String else
        { return }
        
        
        
        print("알림")
        nameLabel.text = object
    }
    
    @IBAction func hitCheckButton(_ sender: Any) {
        print("확인")
        nameLabel.text = registrantList[0].name
        phoneNumberLabel.text = registrantList[0].phoneNumber
    }

    func register() {
        registrantList.append(Registrant(name: nameTextField.text!,
                                    phoneNumber: phoneNumberTextField.text!))
    }
}
