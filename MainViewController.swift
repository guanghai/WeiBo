//
//  MainViewController.swift
//  WeiBo
//
//  Created by LGH on 16/9/20.
//  Copyright © 2016年 LGH. All rights reserved.
//

import UIKit



class MainViewController: UITabBarController {

//    var vcInfo:[String]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupUI()
        addButton()
    }

    @objc func centerButton(){
        
        
        
    }

}

extension MainViewController {
    
    func setupUI() {
        
        let vcInfo = [
            ["className":"HomeViewController","title":"首页","imageName":"tabbar_home","hightedName":"tabbar_home_selected"],
            ["className":"DiscoverViewController","title":"发现","imageName":"tabbar_discover","hightedName":"tabbar_discover_selected"],
            
            ["className":"","title":"","imageName":"","hightedName":""],
            
            ["className":"MessageViewController","title":"消息","imageName":"tabbar_message_center","hightedName":"tabbar_message_center_selected"],
            ["className":"ProfileViewController","title":"发现","imageName":"tabbar_profile","hightedName":"tabbar_profile_selected"]]
        var vcArray = [UIViewController]()
        for dict in vcInfo {
            
            let vc = getSubController(dict:dict)
            
            vcArray.append(vc)
        }
        
        viewControllers = vcArray
        
        
    }
    
   private func getSubController(dict:[String:String]) ->UIViewController {
        
        guard

            let className = dict["className"],
            let title = dict["title"],
            let imageName = dict["imageName"],
            let hightedName = dict["hightedName"],
            let nameSpace = Bundle.main.infoDictionary?["CFBundleName"] as? String,
            let cls = NSClassFromString(nameSpace + "." + className) as? UIViewController.Type
            else {

                return UIViewController()
        }

        let vc = cls.init()

        vc.title = title
        
        vc.tabBarItem.image = UIImage(named: imageName)
        vc.tabBarItem.selectedImage = UIImage(named: hightedName)?.withRenderingMode(.alwaysOriginal)
        
        let nav = MainNavigationController(rootViewController: vc)

        return nav
    }
    
    func addButton() {
        
        let itemCount = CGFloat(childViewControllers.count)
        let tabbaritemWidth = tabBar.bounds.width / itemCount - 1
        let btnFrame: CGRect = tabBar.bounds.insetBy(dx: tabbaritemWidth * 2, dy:0)
        let btn = UIButton(frame: btnFrame,
                           imageNameNormal: "tabbar_compose_icon_add",
                           imageNameHighlighted: "tabbar_compose_icon_add_highlighted",
                           bgimageNameFormal: "tabbar_compose_button",
                           bgimageNameHighlighted: "tabbar_compose_button_highlighted",
                           target: self,
                           action: #selector(centerButton))
        tabBar.addSubview(btn)

    }

}
