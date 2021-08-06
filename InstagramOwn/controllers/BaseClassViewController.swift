//
//  BaseClassViewController.swift
//  InstagramOwn
//
//  Created by Oybek To’laboyev on 06/08/21.
//

import UIKit

class BaseClassViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func appDelegate() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func scaneDelegate() -> SceneDelegate {
        return ((UIApplication.shared.connectedScenes.first!.delegate as? SceneDelegate)!)
    }

}
