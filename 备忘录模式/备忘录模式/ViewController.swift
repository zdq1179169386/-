//
//  ViewController.swift
//  备忘录模式
//
//  Created by qrh on 2019/7/30.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        开始游戏
        let originator = JDQSOriginator()
        originator.play()
        originator.play()

//        创建备忘录,存档
        let caretaker = JDQSCaretaker()
        let memo = originator.createMemo();
        caretaker.write(memo: memo)

//        c退出游戏
        originator.exit()
        
//        恢复游戏
        let restoreOrg = JDQSOriginator()
        restoreOrg.restore(memo: memo)
    
        
    }


}

