//
//  MVPLoginPresenter.swift
//  中介者模式
//
//  Created by ZDQ on 2019/8/7.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//p层具体实例
class MVPLoginPresenter: MVPPresenterProtocol {
    
    fileprivate var view : MVPLoginView?
    fileprivate var model : MVPLoginModel

    init() {
        self.model = MVPLoginModel()
    }

    func attachView(view: MVPViewProtocol) {
        self.view = view as? MVPLoginView
    }
    
    func detachView() {
        self.view?.removeFromSuperview()
        self.view = nil
    }
    
    func login(name: String, password: String)  {
        self.model.login(name: name, password: password, callback: self)
    }
    
    
}

extension MVPLoginPresenter : HttpCallback{
//    model 层执行请求之后回调，传给view 层
     func onLoginResult(result: Any) {
        self.view?.onLoginViewResult(result: result)
    }

}
