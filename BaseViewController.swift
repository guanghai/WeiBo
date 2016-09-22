//
//  BaseViewController.swift
//  WeiBo
//
//  Created by LGH on 16/9/20.
//  Copyright © 2016年 LGH. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
    }

}

extension BaseViewController {
    
    func setupUI() {
        
        tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.orange], for: .highlighted)
        
    }
}
