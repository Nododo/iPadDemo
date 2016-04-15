//
//  GreenViewController.swift
//  iPadDemo
//
//  Created by 杜维欣 on 16/4/15.
//  Copyright © 2016年 Nododo. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    var vcIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "green"
        self.view.backgroundColor = UIColor.greenColor()

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
