//
//  DemoViewController.swift
//  WeiBo
//
//  Created by LGH on 16/9/22.
//  Copyright © 2016年 LGH. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        setupUI()
    }

    func setupUI() {
        
        let btn = UIButton(title: "下一个",
                           titleColorForNormal: UIColor.darkGray,
                           titleColorForHighlighted: UIColor.orange,
                           fontSize: 16,
                           target: self, action: #selector(nextButton))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: btn)
        
    }
    
    @objc func nextButton() {
        
        let vc = DemoViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }
}
