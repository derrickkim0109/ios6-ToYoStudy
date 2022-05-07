//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import UIKit

class PointManager {
    static let shared = PointManager()
    
    var point: Int = 50
    private init() {
        
    }
}

class MainViewController: UIViewController {
    
    @IBOutlet weak var PointLabel: UILabel!
    
    let pointManager = PointManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PointLabel.text = "\(pointManager.point)"
        print("MainViewController: viewDidLoad")
    }
    
    @IBAction func doRefreshPoint(_ sender: UIButton) {
        PointLabel.text = "\(pointManager.point)"
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("MainViewController: viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("MainViewController: viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("MainViewController: viewDidAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("MainViewController: viewDidAppear")
    }
}

