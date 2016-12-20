//
//  ViewController.swift
//  TestStatusBarHidden
//
//  Created by Yosuke Yamamoto on 2016/12/20.
//  Copyright © 2016年 Sky Grid LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var statusBarHiddenFlag: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btAction(_ sender: Any) {
        self.statusBarHiddenFlag = !self.statusBarHiddenFlag
        self.setNeedsStatusBarAppearanceUpdate()
    }

    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return UIStatusBarAnimation.slide
    }

    override var prefersStatusBarHidden: Bool {
        return self.statusBarHiddenFlag
    }

}

