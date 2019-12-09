//
//  ViewController2.swift
//  Hahn_Pop_Swift
//
//  Created by Hahn on 2019/12/2.
//  Copyright © 2019 Hahn. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        
        let pushBtn = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        pushBtn.setTitle("push", for: .normal)
        // 这里的#selector 不要重名
        pushBtn.addTarget(self, action: #selector(pushBtnCkick), for: .touchUpInside)
        self.view.addSubview(pushBtn)
    }
    
    // MARK: - push按钮
    @objc func pushBtnCkick(){
        let vc = ViewController4()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
