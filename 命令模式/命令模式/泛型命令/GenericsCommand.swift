//
//  GenericsCommand.swift
//  命令模式
//
//  Created by qrh on 2019/7/22.
//  Copyright © 2019 zdq. All rights reserved.
//  

import Foundation

class GenericsCommand<T> : TMCommandProtocol {
//   1，持有接受者，2，实现接口
    private var tm : T
    private var block : (T) -> Void
    
    init(tm: T, block: @escaping (T) -> Void) {
        self.tm = tm
        self.block = block
    }
    
    func excute() {
        self.block(self.tm)
    }
    
//   类方法
    class func creatCommand(tm: T, block: @escaping(T)-> Void) -> TMCommandProtocol {
        return GenericsCommand(tm: tm, block: block)
    }
    
}
