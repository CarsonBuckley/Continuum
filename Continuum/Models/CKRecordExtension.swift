//
//  CKRecordExtension.swift
//  Continum
//
//  Created by Carson Buckley on 4/9/19.
//  Copyright © 2019 Launch. All rights reserved.
//

import CloudKit
import UIKit

extension CKRecord {
    convenience init(post: Post) {
        self.init(recordType: PostConstants.typeKey, recordID: post.recordID)
        self.setValue(post.caption, forKey: PostConstants.captionKey)
        self.setValue(post.timestamp, forKey: PostConstants.timestampKey)
        self.setValue(post.imageAsset, forKey: PostConstants.photoKey)
        self.setValue(post.commentCount, forKey: PostConstants.commentCountKey)
    }
    
    convenience init(comment: Comment) {
        self.init(recordType: CommentConstants.recordType, recordID: comment.recordID)
        self.setValue(comment.postReference, forKey: CommentConstants.postReferenceKey)
        self.setValue(comment.text, forKey: CommentConstants.textKey)
        self.setValue(comment.timestamp, forKey: CommentConstants.timestampKey)
    }
}
