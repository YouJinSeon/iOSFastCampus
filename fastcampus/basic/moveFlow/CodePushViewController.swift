//
//  CodePushViewController.swift
//  fastcampus
//
//  Created by 유진선 on 2023/06/15.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePushViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    //delegate 변수는 weak 을 선언해야 메모리가 누수되지 않는다.
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? CodePushViewController {
            viewController.name = "Teddy"
        }
    }
    
    @IBAction func backButtonClick(_ sender: Any) {
        self.delegate?.sendData(name: "Teddy")
        self.navigationController?.popViewController(animated: true)
    }
}
