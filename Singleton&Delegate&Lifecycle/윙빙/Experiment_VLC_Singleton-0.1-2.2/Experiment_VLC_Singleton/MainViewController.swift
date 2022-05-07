//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import UIKit

class MainViewController: UIViewController, PointManagingDelegate {
    
    var point: Int = 50
    @IBOutlet weak var pointLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func refreshButtonDidTapped(_ sender: UIButton) {
       updateUI()
    }
    
    
    @IBAction func nextButtonDidTapped(_ sender: UIButton) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "NextVC") as? BuyingViewController else { return }
        nextVC.delegate = self // BuyingViewController에서 시키는 일을 여기서 처리하겠다
//        self.navigationController?.pushViewController(nextVC, animated: true)  왜 안되지??
        self.present(nextVC, animated: true, completion: nil)
    }
    
    func updateUI() {
        pointLabel.text = String(point)
    }
    func decreasePoint() {
        point -= 5
    }
}


