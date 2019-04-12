//
//  PostTableViewCell.swift
//  Continum
//
//  Created by Carson Buckley on 4/9/19.
//  Copyright © 2019 Launch. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var postPhotoImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var commentCountLabel: UILabel!
    
    
    
    var post: Post? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        postPhotoImageView.image = post?.photo
        captionLabel.text = post?.caption
        commentCountLabel.text = "Comments: \(post?.commentCount ?? 0)"
    }
}
