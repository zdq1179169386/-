//
//  JDQSOriginator.swift
//  备忘录模式
//
//  Created by qrh on 2019/7/30.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//创建备忘录，可以恢复或记录内部状态
class JDQSOriginator: NSObject {
    private var point: Int
    private var level: Int
    
    override init() {
        self.point = 0;
        self.level = 0;
    }

    func play()  {
        print("游戏开始了，当前等级\(self.level),当前积分\(self.point)")
        self.level += 1
        self.point += 10
        print("当前等级\(self.level),当前积分\(self.point)")
    }
    
    func exit() {
        print("游戏结束,当前等级\(self.level),当前积分\(self.point)")
    }
    
    func restore(memo: JDQSMemento)  {
        self.point = memo.point
        self.level = memo.level
        print("恢复，当前等级\(self.level),当前积分\(self.point)")

    }
    
    func createMemo() -> JDQSMemento  {
        return JDQSMemento(point: self.point, level: self.level)
    }
    
    func printMemo()  {
        print("打印，当前等级\(self.level),当前积分\(self.point)")
    }
}
