//
//  PostModel.swift
//  MVC-MVP-MVVM
//
//  Created by islam Elshazly on 8/6/18.
//  Copyright © 2018 islam Elshazly. All rights reserved.
//

import UIKit

final class PostModel: NSObject {

    var data: PostData = PostData()
    
    // to consider it model make some opertations like call mapping
    
    override init() {
        super.init()
    }
    
    init(image: UIImage, title: String, isLiked: Bool, isDisliked: Bool) {
        
        data = PostData(image: image, title: title, isLiked: isLiked, isDisliked: isDisliked)
    }
    
    func setPostLike() {
        data.isLiked = true
        data.isDisliked = false
    }
    
    func setPostDisLike() {
        data.isLiked = false
        data.isDisliked = true
    }
}
