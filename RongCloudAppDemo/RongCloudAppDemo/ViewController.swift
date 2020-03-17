//
//  ViewController.swift
//  RongCloudAppDemo
//
//  Created by apple on 3/13/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userIdTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        let token01 = "NRZdtwQiePL3wxIELDOuvgD2vCmJkv3eGHn/U6qTHTps8dNwTpxl0uaHP9N3kAO/zBYsVwWoteyHKTnkmEuMoA=="
        
//        let token02 = "CFCB34KyMoPOW17FLtcSKApRSzxzbmL3nJbdwjwJU6tX6cnu0i/bV1zgrehuwVHY/saU7af/2whrZuzVNZNoag=="
        RCIM.shared()?.connect(withToken: token01, success: { [weak self] string in
            print("1111\(string as Any)")
            DispatchQueue.main.async {
                let conversationListViewController = ConversationListViewController()
                self?.navigationController?.pushViewController(conversationListViewController, animated: true)
            }
        }, error: { code in
            print(code)
        }, tokenIncorrect: {
            print("token失效")
        })
    }
    
}

