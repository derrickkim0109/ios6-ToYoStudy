//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import UIKit

class BuyingViewController: UIViewController {
    var delegate: PointManager?
    let yagomJumper:Int = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dismissButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func purchaseItem(_ sender: UIButton) {
        delegate?.point -= yagomJumper
        dismiss(animated: true, completion: nil)
    }
    
}
