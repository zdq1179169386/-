//
//  ViewController.swift
//  访问者模式
//
//  Created by ZDQ on 2019/8/6.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        CTO 访问普通员工，只看代码行数，CTO 访问项目经理，只看项目数量
//        CTEO 访问普通员工，只看KPI，  CEO 访问项目经理，只看KPI
        
//        需要对对象进行不同的访问操作，就需要访问者模式
        
        let report = Report();
        let cto = CTOVisitor(name: "李四")
        let ceo = CEOVisitor(name: "张三")
        
        report.show(visitor: ceo);
        
    }
}

