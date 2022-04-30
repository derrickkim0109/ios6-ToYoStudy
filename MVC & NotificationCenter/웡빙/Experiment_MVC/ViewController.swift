//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - View
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    //MARK: - Controller
    
    var registrantList: [Registrant] = [] // 모델을 가져온다
    
    let center: NotificationCenter = NotificationCenter.default
    var notificationName = Notification.Name("registrantList")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addObserver()
    }
    
    @IBAction func hitRegisterButton(_ sender: Any) { // 버튼 입력을 받으면 수행
        register()
        broadcast()
    }
    
    @IBAction func hitCheckButton(_ sender: Any) { // 버튼 입력을 받으면 수행

    }
    
    func register() {
        let people = Registrant(name: nameTextField.text!, phone: phoneNumberTextField.text!)
        registrantList.append(people)
    }

    func addObserver() {
        center.addObserver(forName: notificationName,
                           object: self,
                           queue: nil) { [self] notification in // [self]를 없애보면 필요성을 알 수 있다
            print("\(notificationName.rawValue)이 변경되었습니다" ) // 클로저 안에 in뒤에 부분을 모두 self.로 씌워준다
            nameLabel.text = registrantList.last?.name
            phoneNumberLabel.text = registrantList.last?.phone
        }
    }
    
    func broadcast() {
        center.post(name: notificationName, object: self)
    }
}














