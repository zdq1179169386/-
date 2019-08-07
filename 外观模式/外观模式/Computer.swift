//
//  Computer.swift
//  外观模式
//
//  Created by ZDQ on 2019/8/7.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//外观模式：为子系统中的一组接口提供一个一致的界面，外观模式定义了一个高层接口
class Computer: NSObject {
//    子系统1
    fileprivate var photo : PhotoProtocol
//    子系统2
    fileprivate var games : GamesProtocol
    
    override init() {
        self.photo = PhotoImp()
        self.games = GamesImp()
        super.init()
    }

    //拍照
    func takePicture()  {
        self.photo.open()
        self.photo.takePhoto()
    }
    
    //玩游戏
    func playGames()  {
        self.games.open()
        self.games.playGames()
    }

}
