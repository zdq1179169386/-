//
//  ViewController.swift
//  命令模式
//
//  Created by qrh on 2019/7/19.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tm = TetrisMachine();
        //        let left = TMToLeftCommand(tm: tm);
        //        let manager = TetrisMachineManager(tm: tm, command: left);
        //        manager.toLeftCommand()
        //        manager.toTopCommand()
        //        manager.toRightCommand()
        //        manager.undoOpreation()
        //        manager.undoAllOpreation()
        
        
//        let manager = DynamicCommandManager(tm: tm)
//        manager.toLeftCommand()
//        manager.toTopCommand()
//        manager.toRightCommand()
//        manager.undoOpreation()
//        manager.undoAllOpreation()
        
        let manager = QueueCommandManager(tm: tm)
        manager.toLeftCommand()
        manager.toTopCommand()
        manager.toRightCommand()
        manager.undoOpreation()
        manager.undoAllOpreation()
        
        
    }
}


