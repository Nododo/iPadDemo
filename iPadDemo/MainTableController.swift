//
//  MainTableController.swift
//  iPadDemo
//
//  Created by 杜维欣 on 16/4/15.
//  Copyright © 2016年 Nododo. All rights reserved.
//

import UIKit

extension UIColor {
    static func randomColor() -> UIColor {
        let r: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let g: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let b: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        return UIColor.init(red: r, green: g, blue: b, alpha: 1)
    }
}

class MainTableController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tableView.selectRowAtIndexPath(NSIndexPath.init(forRow: 0, inSection: 0), animated: false, scrollPosition: .Middle)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
        cell.backgroundColor = UIColor.randomColor()
        return cell
    }
 
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.selectRowAtIndexPath(indexPath, animated: false, scrollPosition: .Middle)
      let sb = UIStoryboard.init(name: "Main", bundle: nil)
        switch indexPath.row % 2 {
        case 0:
            let blackVc = sb.instantiateViewControllerWithIdentifier("BlackViewController") as! BlackViewController
            
            blackVc.vcIndex = indexPath.row
            let blackNc = UINavigationController.init(rootViewController: blackVc)
            self.splitViewController?.showDetailViewController(blackNc, sender: nil)
        case 1:
            let greenVc = GreenViewController()
            greenVc.vcIndex = indexPath.row
            let greenNc = UINavigationController.init(rootViewController: greenVc)
            self.splitViewController?.showDetailViewController(greenNc, sender: nil)
        default:
           return
        }
        
    }

}
