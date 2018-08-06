//
//  Presenter.swift
//  MVC-MVP-MVVM
//
//  Created by islam Elshazly on 8/6/18.
//  Copyright © 2018 islam Elshazly. All rights reserved.
//

import UIKit

final class Presenter: NSObject {

    // MARK: - properties
    
    fileprivate var  postModel: PostModel = PostModel()
    weak var delegate: presenterDelegate?
    
    override init() {
        super.init()
    }
    
    init(viewController: MVPViewController) {
        self.delegate = viewController
    }
    
    // MARK: - Prepare Data
    
    func fetchPost() {
        postModel = PostModel(image: #imageLiteral(resourceName: "image"), title: "First Post", isLiked: false, isDisliked: false)
        updatePostInfo()
    }
    
    func updatePostInfo() {
        self.delegate?.updatePostInfo(withPostModel: postModel)
        postEngadmentLogic()
    }
    
    func postEngadmentLogic() {
        if postModel.data.isLiked {
            delegate?.likeUI()
        }else if postModel.data.isDisliked {
            delegate?.dislikeUI()
        }
    }
    
    // MARK: - actions
    
    func likeAction() {
        postModel.setPostLike()
    }
    
    func disLikeAction() {
        postModel.setPostDisLike()
    }
}
