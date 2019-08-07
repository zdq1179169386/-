//
//  DynamicCommandManager.swift
//  命令模式
//
//  Created by qrh on 2019/7/19.
//  Copyright © 2019 zdq. All rights reserved.
//

import Foundation

class DynamicCommandManager: NSObject {
    private var tm : TetrisMachine
    private var commands : Array<TMCommandProtocol> = Array<TMCommandProtocol>()
    
    init(tm: TetrisMachine) {
        self.tm = tm
    }
    
   private func addCommand(method: @escaping(TetrisMachine)-> ()->(Void) ) {
        self.commands.append(DynamicCommand(tm: self.tm, block: { (tm) in
            print("\(String(describing: method))")
            method(tm)()
        }))
    }
    
    func toLeftCommand()  {
        self.tm.toLeft()
        self.addCommand(method: TetrisMachine.toLeft)
    }
    
    func toRightCommand()  {
        self.tm.toRight()
        self.addCommand(method: TetrisMachine.toRight)
        
    }
    func toTopCommand()  {
        self.tm.toTop()
        self.addCommand(method: TetrisMachine.toTop)
    }
    
    func undoOpreation()  {
        print("撤销操作")
        if self.commands.count > 0  {
            self.commands.last?.excute()
            self.commands.removeLast()
        }
    }
    
    func undoAllOpreation()  {
        print("撤销所有")
        for com in self.commands {
            com.excute()
        }
        self.commands.removeAll()
    }
}

