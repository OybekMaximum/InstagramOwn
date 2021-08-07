//
//  HomeViewController.swift
//  InstagramOwn
//
//  Created by Oybek To’laboyev on 06/08/21.
//

import UIKit

class HomeViewController: BaseClassViewController, UITableViewDelegate, UITableViewDataSource{

    

    @IBOutlet var tableViewController: UITableView!
    var items:Array<Post> = Array() 
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()        // Do any additional setup after loading the view.
    }
    
    //Methods
    func initView(){
        tableViewController.dataSource = self
        tableViewController.delegate = self
        navigationSettings()
        
        items.append(Post(fullname: "Sarah", user_img: "person1", post_img: "nature"))
        items.append(Post(fullname: "Dua ", user_img: "person2", post_img: "nature1"))
        }
    
    func navigationSettings() {
        let camera = UIImage(systemName: "camera.fill")
        let send = UIImage(systemName: "paperplane.fill")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftButtunTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightButtunTapped))
        title = "Instagtam"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
         let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        cell.fullnameLaber.text = item.fullname
        cell.profileImageView.image = UIImage(named: item.user_img!)
        cell.postImageView.image = UIImage(named: item.post_img!)
         return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath)->CGFloat{
        return 450
    }
    
    // Actions
    @objc func leftButtunTapped(){

}
    @objc func rightButtunTapped(){

}
    
    
}
