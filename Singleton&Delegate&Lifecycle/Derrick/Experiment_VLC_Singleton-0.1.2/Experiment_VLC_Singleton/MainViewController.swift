//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import UIKit

class PointManager {
    var point: Int = 50
}

protocol PointManagingDelegate: AnyObject {
    var point: Int {get set}
    func updateUI()
}

class MainViewController: UIViewController, PointManagingDelegate {
    @IBOutlet weak var pointLabel: UILabel!
    var point: Int = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointLabel.text = String(point)
        print("[MainViewController] viewDidLoad call")
        print("-----1")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("[MainViewController] viewWillAppear call")
        print("-----1")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("[MainViewController] viewDidAppear call")
        print("-----1")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("[MainViewController] viewWillDisappear call")
        print("-----1")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("[MainViewController] viewDidDisappear call")
        print("-----1")
    }
    
    //MARK: Present
    @IBAction func buyPageButton(_ sender: UIButton) {
//        self.present(viewController: presentBuyingViewController())
        self.push(viewController: presentBuyingViewController())
    }
    
    
    @IBAction func refreshButton(_ sender: UIButton) {
        pointLabel.text = String(point)
    }
}

extension MainViewController {
    func updateUI() {
        pointLabel.text = String(point)
    }
}

private extension MainViewController {
    func presentBuyingViewController() -> UIViewController {
        let viewController = BuyingViewController.instantiate(bundle: nil, identifier: "BuyingViewController")
        viewController.delegate = self

        return viewController
    }
    
    func present(viewController: UIViewController) {
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true)
    }
    
    func push(viewController: UIViewController) {
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
