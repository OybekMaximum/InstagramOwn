//
//  PostTableViewCell.swift
//  InstagramOwn
//
//  Created by Oybek To’laboyev on 07/08/21.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var fullnameLaber: UILabel!
    @IBOutlet var PostImage1: UIImageView!
    @IBOutlet var postImage2: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
