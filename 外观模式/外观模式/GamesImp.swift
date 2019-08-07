//
//  GamesImp.swift
//  外观模式
//
//  Created by ZDQ on 2019/8/7.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit

class GamesImp: GamesProtocol {
    
    func open() {
        print("打开游戏")
    }
    
    func playGames() {
        print("玩游戏")
    }
    
    func close() {
        print("关闭游戏")
    }
 
}
