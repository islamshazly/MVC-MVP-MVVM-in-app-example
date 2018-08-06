//
//  PostViewModel.swift
//  MVC-MVP-MVVM
//
//  Created by islam Elshazly on 8/6/18.
//  Copyright © 2018 islam Elshazly. All rights reserved.
//

import UIKit


class PostViewModel {
    
    var title: String {
        return postModel.data.title
    }
    var image: UIImage {
        return postModel.data.image ?? UIImage(named: "image")!
    }
    var isLike: Bool {
        return postModel.data.isLiked
    }
    var isDisLike: Bool {
        return postModel.data.isDisliked
    }
    
    fileprivate var postModel: PostModel = PostModel()
    
}

extension PostViewModel {
    func setPostLike() {
        postModel.setPostLike()
    }
    
    func setPostDisLike() {
        postModel.setPostDisLike()
    }
    
}

