//
//  CustomSlider.swift
//  Scepter
//
//  Created by Muhammad Khan on 1/13/18.
//  Copyright © 2018 MK. All rights reserved.
//

import UIKit

@IBDesignable
class CustomSlider: UISlider {

    @IBInspectable var thumbImage: UIImage? {
        didSet {
            setupView()
        }
    }
    
    @IBInspectable var thumbHighlightedImage: UIImage? {
        didSet {
            setupView()
        }
    }
    
    func setupView() {
        setThumbImage(thumbImage, for: .normal)
        
        if let highlighted = thumbHighlightedImage {
            setThumbImage(highlighted, for: .highlighted)
        } else {
            setThumbImage(thumbImage, for: .highlighted)
        }
    }
}
