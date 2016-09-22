//
//  UIButton + Extensiion.swift
//  WeiBo
//
//  Created by LGH on 16/9/22.
//  Copyright © 2016年 LGH. All rights reserved.
//

import UIKit

extension UIButton {
    
    convenience init(title: String, titleColorForNormal: UIColor, titleColorForHighlighted: UIColor, fontSize: CGFloat = 16, imageNameForNormal: String, imageNameForHighlighted: String, target: Any?, action: Selector) {
        
        
        self.init(title: title,
                  titleColorForNormal: titleColorForNormal,
                  titleColorForHighlighted: titleColorForHighlighted,
                  fontSize: fontSize,
                  target:target,
                  action:action)
        
        setImage(UIImage(named:imageNameForNormal), for: .normal)
        setImage(UIImage(named:imageNameForHighlighted), for: .highlighted)
        sizeToFit()
    }
    
    convenience init(title: String, titleColorForNormal: UIColor, titleColorForHighlighted: UIColor, fontSize: CGFloat = 16,target: Any?, action: Selector){
        
        self.init()
        
        self.setTitle(title, for: .normal)
        setTitleColor(titleColorForNormal, for: .normal)
        setTitleColor(titleColorForHighlighted, for: .highlighted)
        titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        addTarget(target, action: action, for: .touchUpInside)
        
        sizeToFit()
    }
    
    convenience init(frame: CGRect, imageNameNormal: String, imageNameHighlighted: String, bgimageNameFormal: String,
                     bgimageNameHighlighted: String,target: Any?, action: Selector){
        
        self.init(frame:frame,imageNameNormal: imageNameNormal, imageNameHighlighted: imageNameHighlighted,
                  target:target, action:action)
        
        setBackgroundImage(UIImage(named:bgimageNameFormal), for: .normal)
        setBackgroundImage(UIImage(named:bgimageNameHighlighted), for: .highlighted)
        
    }
    
    convenience init(frame: CGRect, imageNameNormal: String, imageNameHighlighted: String,target: Any?, action: Selector) {
        
        self.init()
        
        self.frame = frame
        setImage(UIImage(named:imageNameNormal), for: .normal)
        setImage(UIImage(named:imageNameHighlighted), for: .highlighted)
        addTarget(target, action: action, for: .touchUpInside)
    }
 
}
