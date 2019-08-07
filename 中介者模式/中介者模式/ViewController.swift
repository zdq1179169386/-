//
//  ViewController.swift
//  中介者模式
//
//  Created by ZDQ on 2019/8/7.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //MVP : 就是典型的中介者模式，P层负责调度 M层和V层
        let loginView = MVPLoginView()
        self.view.addSubview(loginView)
        let presenter = MVPLoginPresenter();
        presenter.attachView(view: loginView)
        presenter.login(name: "zhangsan", password: "123")
        
        
    }
}

