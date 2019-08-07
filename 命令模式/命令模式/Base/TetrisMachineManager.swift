//
//  TetrisMachineManager.swift
//  命令模式
//
//  Created by qrh on 2019/7/19.
//  Copyright © 2019 zdq. All rights reserved.
//

import Foundation


class TetrisMachineManager : NSObject {
    
   private  var tm : TetrisMachine
   private var command : TMCommandProtocol
   private var commands :[TMCommandProtocol] = [TMCommandProtocol]()
    
    init(tm : TetrisMachine, command: TMCommandProtocol) {
        self.tm = tm
        self.command = command
        
    }
    
    func toLeftCommand()  {
        self.tm.toLeft()
        self.commands.append(TMToLeftCommand(tm: self.tm))
    }
    
    func toRightCommand()  {
        self.tm.toRight()
        self.commands.append(TMToRightCommand(tm: self.tm))

    }
    func toTopCommand()  {
        self.tm.toTop()
        self.commands.append(TMToTopCommand(tm: self.tm))

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
