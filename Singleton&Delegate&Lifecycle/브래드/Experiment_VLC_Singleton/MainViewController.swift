//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import UIKit


protocol PointManager {
    var point: Int {get set}    
}

class MainViewController: UIViewController, PointManager {
    var point: Int = 50
    
    @IBOutlet weak var PointLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PointLabel.text = "\(point)"
    }
    
    @IBAction func doRefreshPoint(_ sender: UIButton) {
        PointLabel.text = "\(point)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "show" {
            let viewController : BuyingViewController = segue.destination as! BuyingViewController
            viewController.delegate = self
        }
    }
    
    @IBAction func goPurchasePage(_ sender: UIButton) {
    }
    
}
