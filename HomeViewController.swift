//
//  HomeViewController.swift
//  WeiBo
//
//  Created by LGH on 16/9/20.
//  Copyright © 2016年 LGH. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension HomeViewController {
    
    override func setupUI() {
        super.setupUI()
        let btn = UIButton(title: "好友",
                           titleColorForNormal: UIColor.darkGray,
                           titleColorForHighlighted: UIColor.orange, fontSize: 16,
                           target:self ,
                           action: #selector(composeButton))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
    }
    
    @objc func composeButton() {
        
        let vc = DemoViewController()
        
        
        navigationController?.pushViewController(vc, animated: true)
  
    }
}
