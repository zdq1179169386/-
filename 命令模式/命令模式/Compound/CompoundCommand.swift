//
//  CompoundCommand.swift
//  命令模式
//
//  Created by qrh on 2019/7/20.
//  Copyright © 2019 zdq. All rights reserved.
//

import Foundation

class CompoundCommand: TMCommandProtocol {
    private var commands = Array<TMCommandProtocol>()
    init(commands: Array<TMCommandProtocol>) {
        
    }
    func excute() {
        for command in self.commands {
            command.excute()
        }
    }
}
