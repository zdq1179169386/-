//
//  MVPLoginView.swift
//  中介者模式
//
//  Created by ZDQ on 2019/8/7.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//V 层具体实例
class MVPLoginView: UIView,MVPViewProtocol {
    
    func onLoginViewResult(result: Any) {
        print("登录请求成功之后，返回数据，刷新UI")
    }
}
