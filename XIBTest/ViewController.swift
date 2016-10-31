//
//  ViewController.swift
//  XIBTest
//
//  Created by Keith on 2016/8/21.
//  Copyright © 2016年 Rytass. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //三個state的畫面都應該有一個controller去控制這個view，你可以選擇哪些行為可以直接在controller裡控制（像是一些文字輸入的檢查），哪些必須要呼叫到上層的view controller(像是dismiss/present這些會影響到整個view本身的行為)。
    
    var view1VC : View1ViewController = View1ViewController(nibName: "View1ViewController", bundle: nil) 
    var view2VC : View2ViewController = View2ViewController(nibName: "View2ViewController", bundle: nil) 
    var view3VC : View3ViewController = View3ViewController(nibName: "View3ViewController", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureSubViewButtonActions()
        presentView1()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //這裡負責把需要由parent view controller操控的行為加上。這裡的範例是每一個vc按下button會present下一個vc。
    func configureSubViewButtonActions(){
        view1VC.view1Button.addTarget(self, action: #selector(presentView2), forControlEvents: .TouchUpInside)
        view2VC.view2Button.addTarget(self, action: #selector(presentView3), forControlEvents: .TouchUpInside)
        view3VC.view3Button.addTarget(self, action: #selector(presentView1), forControlEvents: .TouchUpInside)
    }
    
    func presentView1(){
        presnetView(fromVC: view1VC)
        
        dismissView(fromVC: view2VC)
        dismissView(fromVC: view3VC)
    }
    
    func presentView2(){
        presnetView(fromVC: view2VC)
        
        dismissView(fromVC: view1VC)
        dismissView(fromVC: view3VC)
    }
    
    func presentView3(){
        presnetView(fromVC: view3VC)
        
        dismissView(fromVC: view2VC)
        dismissView(fromVC: view1VC)
    }
    
    func presnetView(fromVC fVC:UIViewController){
        self.view.addSubview(fVC.view)
    }
    
    func dismissView(fromVC fVC:UIViewController){
        fVC.view.removeFromSuperview()
    }
}

