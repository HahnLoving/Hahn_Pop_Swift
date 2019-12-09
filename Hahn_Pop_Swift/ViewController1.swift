//
//  ViewController1.swift
//  Hahn_Pop_Swift
//
//  Created by Hahn on 2019/12/2.
//  Copyright © 2019 Hahn. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        
        
        let pushBtn = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        pushBtn.setTitle("push", for: .normal)
        // 这里的#selector 不要重名
        pushBtn.addTarget(self, action: #selector(pushBtnCkick), for: .touchUpInside)
        self.view.addSubview(pushBtn)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // 界面消失的时候隐藏返回按钮
        self.navigationItem.hidesBackButton = true
    }
    
    // MARK: - push按钮
    @objc func pushBtnCkick(){
        let vc = ViewController3()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
}
