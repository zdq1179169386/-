//
//  MVPLoginModel.swift
//  中介者模式
//
//  Created by ZDQ on 2019/8/7.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit

protocol HttpCallback {
    func onLoginResult(result: Any)
}
//M 层具体实例
class MVPLoginModel: NSObject {
    
    fileprivate var callback : HttpCallback?

//    向外暴露的登录方法，和回调
    func login(name: String, password: String, callback: HttpCallback)  {
        self.callback = callback
        self.login(name: name, password: password)
    }
    
//    真正的登录方法
    fileprivate func login(name: String, password: String)  {
        print("执行登录请求")
        self.callback?.onLoginResult(result: "请求成功返回数据")
    }
}
