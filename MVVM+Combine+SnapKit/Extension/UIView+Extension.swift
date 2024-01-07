//
//  UIView+Extension.swift
//  MVVM+Combine+SnapKit
//
//  Created by Андрей Важенов on 08.01.2024.
//

import UIKit

extension UIView {
    
    func addShadow(offset: CGSize,
                   color: UIColor,
                   radius: CGFloat,
                   opacity: Float) {
        layer.cornerRadius = radius
        layer.masksToBounds = false
        layer.shadowOffset = offset
        layer.shadowColor = color.cgColor
        layer.shadowRadius = radius
        layer.shadowOpacity = opacity
        let backgroundCGColor = backgroundColor?.cgColor
        layer.backgroundColor = backgroundCGColor
    }
    
}
