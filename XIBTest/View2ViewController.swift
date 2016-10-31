//
//  View2ViewController.swift
//  XIBTest
//
//  Created by Keith on 2016/8/21.
//  Copyright © 2016年 Rytass. All rights reserved.
//

import UIKit

class View2ViewController: UIViewController {

    @IBOutlet weak var view2Button: UIButton!
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.view.frame = CGRectMake(0, 0, CGRectGetWidth(UIScreen.mainScreen().bounds), 200)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.view.frame = CGRectMake(0, 0, CGRectGetWidth(UIScreen.mainScreen().bounds), 200)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
