//
//  MVPPresenterProtocol.swift
//  中介者模式
//
//  Created by ZDQ on 2019/8/7.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//p层抽象接口
protocol MVPPresenterProtocol {
    func attachView(view: MVPViewProtocol)
    func detachView()
}
