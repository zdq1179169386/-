//
//  MVPViewProtocol.swift
//  中介者模式
//
//  Created by ZDQ on 2019/8/7.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//V 层抽象接口
protocol MVPViewProtocol {
    func onLoginViewResult(result: Any)
}
