//
//  ViewController4.swift
//  Hahn_Pop_Swift
//
//  Created by Hahn on 2019/12/5.
//  Copyright © 2019 Hahn. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.gray
        
        
        let backBtn = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        backBtn.setTitle("自定义返回", for: .normal)
        // 这里的#selector 不要重名
        backBtn.addTarget(self, action: #selector(backBtnCkick), for: .touchUpInside)
        self.view.addSubview(backBtn)
        
        // 自定义导航栏的返回事件 因为自定义导航栏的返回事件 系统侧滑返回无效、所以需要重写UINavigationController
        let leftBarBtn = UIBarButtonItem(title: "", style: .plain, target: self,action: #selector(backBtnCkick))
        leftBarBtn.image = UIImage(named: "backBtn_black")
        leftBarBtn.imageInsets.left = -90
        self.navigationItem.hidesBackButton = true
        self.navigationItem.leftBarButtonItem = leftBarBtn
//        self.navigationController?.navigationBar.tintColor = UIColor.black
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: - 返回按钮
    @objc func backBtnCkick(){
        for vc in (self.navigationController?.viewControllers)! {
            if vc.isKind(of: MainViewController.self) {
                self.navigationController?.popToViewController(vc, animated: true)
            }
        }
    }
}
