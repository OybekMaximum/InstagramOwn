//
//  ViewController1.swift
//  InstagramOwn
//
//  Created by Oybek To’laboyev on 06/08/21.
//

import UIKit

class ViewController1: BaseClassViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

// Functions
    func ViewController200()  {
    let vc = ViewController2(nibName: "ViewController2", bundle: nil)
     self.present(vc, animated: true, completion: nil)
    }
    // Actions
    
    @IBAction func PressedSignIn(_ sender: Any) {
        scaneDelegate().HomeViewController()
    }
    @IBAction func PrssedSignUp(_ sender: Any) {
        ViewController200()
    }
    
}
