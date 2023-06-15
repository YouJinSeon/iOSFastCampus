//
//  MoveFlowViewController.swift
//  fastcampus
//
//  Created by 유진선 on 2023/06/15.
//

import UIKit

class MoveFlowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapCodePushButton(_ sender: Any) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePushViewController") as? CodePushViewController else { return }
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tapCodePresentButton(_ sender: Any) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController else { return }
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
    
}
