//
//  MVCViewController.swift
//  MVC-MVP-MVVM
//
//  Created by islam Elshazly on 8/6/18.
//  Copyright © 2018 islam Elshazly. All rights reserved.
//

import UIKit

final class MVCViewController: UIViewController {
    
    // MARK: - properties
    
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var disLikeButton: UIButton!
    
    fileprivate var  postModel: PostModel = PostModel() {
        didSet {
            updatePostUI()
        }
    }
    
    // MARK: - Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        fetchPost()
    }
    
    // MARK: - Prepare Data
    
    func fetchPost() {
        postModel = PostModel(image: #imageLiteral(resourceName: "image"), title: "First Post", isLiked: false, isDisliked: false)
        updatePostInfo()
    }
    
    func updatePostInfo() {
        postTitle.text = postModel.data.title
        imageView.image = postModel.data.image
        updatePostUI()
    }
    
    func likeUI() {
        likeButton.imageWith(color: .red, for: .normal)
        disLikeButton.imageWith(color: .black, for: .normal)
    }
    
    func disLikeLUI() {
        likeButton.imageWith(color: .black, for: .normal)
        disLikeButton.imageWith(color: .red, for: .normal)
    }
    
    func updatePostUI() {
        if postModel.data.isLiked {
            likeUI()
        }else if postModel.data.isDisliked {
            disLikeLUI()
        }
    }

}

// MARK: - Actions

extension MVCViewController {
    
    @IBAction func likeAction(_ sender: Any) {
        postModel.setPostLike()
    }
    
    @IBAction func disLikeAction(_ sender: Any) {
        postModel.setPostDisLike()
    }
}

