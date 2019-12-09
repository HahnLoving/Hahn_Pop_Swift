//
//  ViewController3.swift
//  Hahn_Pop_Swift
//
//  Created by Hahn on 2019/12/5.
//  Copyright © 2019 Hahn. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blue
        
        // MARK:-删除栈里面指定push过的控制器
        /**
        通过循环找到指定控制器删除
        @param ViewController1 返回的指定控制器
        */
        for vc in (self.navigationController?.viewControllers)! {
            if vc.isKind(of: ViewController1.self) {
                vc.removeFromParent()
            }
        }
        
        
        let backBtn = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        backBtn.setTitle("自定义返回", for: .normal)
        // 这里的#selector 不要重名
        backBtn.addTarget(self, action: #selector(backBtnCkick), for: .touchUpInside)
        self.view.addSubview(backBtn)
    }
    
    // MARK: - 返回按钮
    @objc func backBtnCkick(){
        self.navigationController?.popViewController(animated: true)
    }

}
