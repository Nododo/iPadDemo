//
//  MySplitViewController.swift
//  iPadDemo
//
//  Created by 杜维欣 on 16/4/15.
//  Copyright © 2016年 Nododo. All rights reserved.
//

import UIKit

class MySplitViewController: UISplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setValue(NSNumber.init(float: 200), forKey: "_masterColumnWidth")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
