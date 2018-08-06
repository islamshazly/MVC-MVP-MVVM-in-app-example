//
//  ButtonExtension.swift
//  MVC-MVP-MVVM
//
//  Created by islam Elshazly on 8/6/18.
//  Copyright © 2018 islam Elshazly. All rights reserved.
//

import UIKit

extension UIButton {
    
    func imageWith(color:UIColor, for: UIControlState) {
        if let imageForState = self.image(for: state) {
            self.image(for: .normal)?.withRenderingMode(.alwaysTemplate)
            let colorizedImage = imageForState.image(withTintColor: color)
            self.setImage(colorizedImage, for: state)
            self.tintColor = color
        }
    }
    
}

