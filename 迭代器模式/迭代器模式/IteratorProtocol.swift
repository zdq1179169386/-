//
//  IteratorProtocol.swift
//  迭代器模式
//
//  Created by qrh on 2019/7/27.
//  Copyright © 2019 zdq. All rights reserved.
//

import Foundation
//迭代器接口
protocol  IteratorProtocol {
    //关联类型
    associatedtype ItemType
    //下一个元素
    func next() -> ItemType?
    //是否有下一个
    func hasNext() -> Bool
}
