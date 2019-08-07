//
//  DynamicCommand.swift
//  命令模式
//
//  Created by qrh on 2019/7/19.
//  Copyright © 2019 zdq. All rights reserved.
//

import Foundation


class DynamicCommand: TMCommandProtocol {
    private var tm : TetrisMachine
    private var block: (TetrisMachine)-> Void
    
    init(tm: TetrisMachine, block: @escaping(TetrisMachine)-> Void) {
        self.tm = tm
        self.block = block
    }
    
    func excute() {
        self.block(self.tm)
    }
    
    class func creatCommand(tm: TetrisMachine, block: @escaping(TetrisMachine)-> Void) -> TMCommandProtocol {
        return DynamicCommand(tm: tm, block: block)
    }
}
