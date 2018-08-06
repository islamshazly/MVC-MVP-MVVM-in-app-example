//
//  MVVM.swift
//  MVC-MVP-MVVM
//
//  Created by islam Elshazly on 8/6/18.
//  Copyright © 2018 islam Elshazly. All rights reserved.
//

import UIKit

final class MVVMViewController: UIViewController {

    // MARK: - properties
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var disLikeButton: UIButton!
    
    fileprivate var postViewModel: PostViewModel = PostViewModel() {
        didSet {
            updatePostUI()
        }
    }
    
    // MARK: - life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    func updatePostInfo() {
        postTitle.text = postViewModel.title
        imageView.image = postViewModel.image
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
        if postViewModel.isLike {
            likeUI()
        }else if postViewModel.isDisLike {
            disLikeLUI()
        }
    }
}

// MARK: - Actions

extension MVVMViewController {
    
    @IBAction func likeAction(_ sender: Any) {
        postViewModel.setPostLike()
    }
    
    @IBAction func disLikeAction(_ sender: Any) {
        postViewModel.setPostDisLike()
    }
}
