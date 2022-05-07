//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import UIKit

class BuyingViewController: UIViewController {
    weak var delegate: PointManagingDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("[BuyingViewController] viewDidLoad call")
        print("-----2")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("[BuyingViewController] viewWillAppear call")
        print("-----2")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("[BuyingViewController] viewDidAppear call")
        print("-----2")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("[BuyingViewController] viewWillDisappear call")
        print("-----2")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("[BuyingViewController] viewDidDisappear call")
        print("-----2")
    }
    
    @IBAction func buyButton(_ sender: UIButton) {
        delegate?.point -= 50
        self.delegate?.updateUI()
//        dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController()
    }
    
    @IBAction func dismissButton(_ sender: Any) {
        print("[BuyingViewController] dismissButton call")
        print("-----2")
        dismiss(animated: true, completion: nil)
    }
}
