//
//  MoveFlowViewController.swift
//  fastcampus
//
//  Created by 유진선 on 2023/06/15.
//

import UIKit

class MoveFlowViewController: UIViewController, SendDataDelegate {

    @IBOutlet weak var receiveData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //뷰가 나타날것이다.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //뷰가 나타낫다
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //뷰가 사라질것이다
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        //뷰가 사라졌다
    }
    
    @IBAction func tapCodePushButton(_ sender: Any) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePushViewController") as? CodePushViewController else { return }
        viewController.name = "Teddy"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tapCodePresentButton(_ sender: Any) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController else { return }
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Teddy"
        viewController.delegate = self
        self.present(viewController, animated: true, completion: nil)
    }
    
    func sendData(name: String) {
        self.receiveData.text = name
        self.receiveData.sizeToFit()
    }
    
    /**
     Sugue 방식으로 화면 이동 시 데이터 전달 방법
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SuguePushViewController {
            viewController.name = "Teddy"
        }
    }
    
}
