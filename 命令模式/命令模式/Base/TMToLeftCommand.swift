//
//  TMToLeftCommand.swift
//  命令模式
//
//  Created by qrh on 2019/7/19.
//  Copyright © 2019 zdq. All rights reserved.
//

import Foundation

class TMToLeftCommand :  TMCommandProtocol{
    private var tm : TetrisMachine
    
    init(tm : TetrisMachine) {
        self.tm = tm
    }
    
    func excute() {
        self.tm.toLeft()
    }
}
