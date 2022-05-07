//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import UIKit

class BuyingViewController: UIViewController {
    
    var delegate: PointManagingDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func dismissButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func buyButtonDidTapped(_ sender: UIButton) {
        delegate?.decreasePoint()
        dismiss(animated: true, completion: nil) //
//        navigationController?.popViewController(animated: true) 이거 왜 안되지??
    }
}



