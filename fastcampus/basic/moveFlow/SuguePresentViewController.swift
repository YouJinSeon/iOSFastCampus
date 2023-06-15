//
//  SuguePresentViewController.swift
//  fastcampus
//
//  Created by 유진선 on 2023/06/15.
//

import UIKit

// SuguePresent 방식 Full Screen 적용 방법은 Storyboard 에서 Presention 으로 변경
class SuguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
