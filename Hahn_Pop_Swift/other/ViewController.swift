//
//  ViewController.swift
//  Hahn_Pop_Swift
//
//  Created by Hahn on 2019/12/2.
//  Copyright © 2019 Hahn. All rights reserved.
//



import UIKit

class ViewController: UIViewController {

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

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
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
            cell.textLabel?.text = "返回指定界面"
            break
        case 1:
            cell.textLabel?.text = "一直Push返回指定界面"
            break
        default:
            break
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = ViewController1()
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case 1:
            let vc = ViewController2()
            let naVc = UINavigationController(rootViewController: vc)
            self.navigationController?.pushViewController(naVc, animated: true)
            break
        default:
            break
        }
    }
}
