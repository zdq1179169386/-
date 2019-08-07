//
//  ViewController.swift
//  构建者模式
//
//  Created by qrh on 2019/7/26.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        Builder.init(self)
            .setTitle("提示")
            .setMessage("信息")
            .setOk("确定")
            .setCancel("取消")
            .setOkAction { (_) in
                print("确定")
            }.setCancelAction { (_) in
                print("取消")
            }.build().show()
        
    }
}


