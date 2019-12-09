//
//  MainViewController.swift
//  Hahn_Pop_Swift
//
//  Created by Hahn on 2019/12/5.
//  Copyright © 2019 Hahn. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    // 屏幕的宽高
    let SCREENW = UIScreen.main.bounds.size.width
    let SCREENH = UIScreen.main.bounds.size.height
    
    var tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: SCREENW, height: SCREENH))
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "返回指定界面(没有包含手势返回)"
            break
        case 1:
            cell.textLabel?.text = "返回指定界面(包含手势返回)"
            break
        default:
            break
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = ViewController2()
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case 1:
            let vc = ViewController1()
            self.navigationController?.pushViewController(vc, animated: true)
            break
        default:
            break
        }
    }

}
