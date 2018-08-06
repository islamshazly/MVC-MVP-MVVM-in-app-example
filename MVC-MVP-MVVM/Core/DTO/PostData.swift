//
//  PostData.swift
//  MVC-MVP-MVVM
//
//  Created by islam Elshazly on 8/6/18.
//  Copyright © 2018 islam Elshazly. All rights reserved.
//

import UIKit

final class PostData: NSObject {

    var image: UIImage?
    var title: String = "title"
    var isLiked: Bool = false
    var isDisliked: Bool = false
    
    override init() {
        super.init()
    }
    
    init(image: UIImage, title: String, isLiked: Bool, isDisliked: Bool) {
        self.image = image
        self.title = title
        self.isLiked = isLiked
        self.isDisliked = isDisliked
    }
    
}
