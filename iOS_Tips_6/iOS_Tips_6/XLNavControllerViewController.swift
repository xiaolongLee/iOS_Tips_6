//
//  XLNavControllerViewController.swift
//  iOS_Tips_6
//
//  Created by yuanshi on 2020/7/24.
//  Copyright © 2020 yuanshi. All rights reserved.
//

import UIKit

class XLNavControllerViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Swift5.1 UINavigationBar设置文本属性
//        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:XLColor.SSRGB_S(V: 51),
//        NSAttributedString.Key.font:UIFont.init(name: "PingFangSC-Medium", size: 18)!]


//        navController.navigationBar.titleTextAttributes = [.foregroundColor:SSColor.SSRGB_S(V: 51),
//                                                           .font:UIFont.init(name: "PingFangSC-Medium", size: 18)!]

        // Do any additional setup after loading the view.
    }
    
    //Swift5.1 自定义后退按钮


    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
    
        if self.children.count > 0 {
    
            let button = UIButton(type: .custom)
            button.setImage(UIImage.init(named: "back"), for: .normal)
//            button.addTarget(viewController, action: #selector(backBarButtonItemHandle), for: .touchUpInside)
            button.frame = CGRect(x: 0, y: 0, width: 60, height: 50)
            button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
            let backItem = UIBarButtonItem(customView: button)
            viewController.navigationItem.leftBarButtonItem = backItem
        }
    
        super.pushViewController(viewController, animated: animated)
    }

}
