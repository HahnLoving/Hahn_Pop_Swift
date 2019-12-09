//
//  CustomNavigationViewController.swift
//  meiZhouHelp_swfit
//
//  Created by Hahn on 2019/7/20.
//  Copyright © 2019 Hahn. All rights reserved.
//

import UIKit

class CustomNavigationViewController: UINavigationController, UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.interactivePopGestureRecognizer?.delegate = self
    }
    
    // MARK : - 定义
    func navController(vc: Any) -> CustomNavigationViewController {
        let naVC = CustomNavigationViewController(rootViewController: vc as! ViewController)
        naVC.navigationBar.tintColor = UIColor.white
        naVC.navigationBar.isTranslucent = false
        return naVC
    }
    
    // MARK : - 重写方法：shouldAutorotate 和 supportedInterfaceOrientations 支持旋转
    func shouldAutorotate() -> Bool{
        return self.topViewController!.shouldAutorotate
    }
    
    // MARK : - 支持单方向
    func supportedInterfaceOrientations() -> UIInterfaceOrientationMask{
        return self.topViewController!.supportedInterfaceOrientations
    }
    
    // MARK : - UIGestureRecognizerDelegate
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if self.children.count == 1 {
            return false
        }else{
            return true
        }
    }

}
