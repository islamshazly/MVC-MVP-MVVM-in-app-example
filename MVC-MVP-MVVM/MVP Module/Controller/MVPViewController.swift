//
//  MVPViewController.swift
//  MVC-MVP-MVVM
//
//  Created by islam Elshazly on 8/6/18.
//  Copyright © 2018 islam Elshazly. All rights reserved.
//

import UIKit

protocol presenterDelegate: class {
    func likeUI()
    func dislikeUI()
    func updatePostInfo(withPostModel postModel: PostModel)
}

final class MVPViewController: UIViewController {

    // MARK: - properties
    var presenter: Presenter = Presenter()
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var disLikeButton: UIButton!
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        presenter = Presenter(viewController: self)
        presenter.fetchPost()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

}


// MARK: - Actions

extension MVPViewController {
    
    @IBAction func likeAction(_ sender: Any) {
        likeUI()
        presenter.likeAction()
    }
    
    @IBAction func disLikeAction(_ sender: Any) {
        dislikeUI()
        presenter.disLikeAction()
    }
}

// MARK: - Presenter Delegate

extension MVPViewController: presenterDelegate {
    func updatePostInfo(withPostModel postModel: PostModel) {
        postTitle.text = postModel.data.title
        imageView.image = postModel.data.image
    }
    
    func likeUI() {
        likeButton.imageWith(color: .red, for: .normal)
        disLikeButton.imageWith(color: .black, for: .normal)
    }
    
    func dislikeUI() {
        likeButton.imageWith(color: .black, for: .normal)
        disLikeButton.imageWith(color: .red, for: .normal)
    }

}
