//
//  MainNavigationController.swift
//  WeiBo
//
//  Created by LGH on 16/9/20.
//  Copyright © 2016年 LGH. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
            
        let childVcCount = childViewControllers.count
        
        
        if childVcCount >= 1 {
            
            viewController.hidesBottomBarWhenPushed = true
            viewController.title = "第\(childVcCount)个"
            var backBtnTitle = "返回"
            if childVcCount == 1{
                
                backBtnTitle = childViewControllers.first?.title ?? ""
            }
            setupBackButton(title: backBtnTitle, vc: viewController)
            
            
        }
        
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.darkGray]

        super.pushViewController(viewController, animated: animated)
    }

}

extension MainNavigationController{
    
    func setupBackButton(title: String, vc:UIViewController){
        
        
        
        let btn = UIButton(title: title,
                           titleColorForNormal: UIColor.darkGray,
                           titleColorForHighlighted: UIColor.orange,
                           fontSize:16,
                           imageNameForNormal: "navigationbar_back_withtext",
                           imageNameForHighlighted: "navigationbar_back_withtext_highlighted",
                           target: self,
                           action: #selector(backButton))
        let baritem = UIBarButtonItem(customView: btn)
        
        vc.navigationItem.leftBarButtonItem = baritem
        
    }
    
    @objc func backButton() {
        
        popViewController(animated: true)
    }
}
