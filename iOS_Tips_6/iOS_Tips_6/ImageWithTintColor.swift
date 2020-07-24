//
//  ImageWithTintColor.swift
//  iOS_Tips_6
//
//  Created by yuanshi on 2020/7/24.
//  Copyright © 2020 yuanshi. All rights reserved.
//

import Foundation

 
import UIKit

extension UIImage {

    func withTintColor_ss(_ color: UIColor) -> UIImage {
        
        withTintColor_ss(color, blendMode: CGBlendMode.destinationIn)
    }
    
    func withGradientColor_ss(_ color: UIColor) -> UIImage {
        
        withTintColor_ss(color, blendMode: CGBlendMode.overlay)
    }
    
    func withTintColor_ss(_ color: UIColor, blendMode: CGBlendMode) -> UIImage {
        
        UIGraphicsBeginImageContextWithOptions(self.size, false, 0.0)
        color.setFill()
        let bounds = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height)
        UIRectFill(bounds)
        
        draw(in: bounds, blendMode: blendMode, alpha: 1.0)
        
        if blendMode != CGBlendMode.destinationIn {
            
            draw(in: bounds, blendMode: CGBlendMode.destinationIn, alpha: 1.0)
        }
        
        let tintedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return tintedImage!
    }
}
