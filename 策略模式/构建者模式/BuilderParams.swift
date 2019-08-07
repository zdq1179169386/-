//
//  BuilderParams.swift
//  构建者模式
//
//  Created by qrh on 2019/7/26.
//  Copyright © 2019 zdq. All rights reserved.
//

import Foundation
import UIKit

//参数类
class BuilderParams: NSObject {
    var context : UIViewController?
    var title : String?
    var message : String?
    var ok : String?
    var cancel : String?
    var okAction : ((UIAlertAction)->Void)?
    var cancelAction : ((UIAlertAction)->Void)?

    init(_ context: UIViewController?) {
        self.context = context
    }
    
    func setTitle(_ title:String?)  {
        self.title = title;
    }
    func setMessage(_ message:String?)  {
        self.message = message;
    }
    func setOk(_ ok:String?)  {
        self.ok = ok;
    }
    func setCancel(_ cancel:String?)  {
        self.cancel = cancel;
    }
    func setOkAction(_ okAction: ((UIAlertAction)->Void)?)  {
        self.okAction = okAction;
    }
    func setCancelAction(_ cancelAction: ((UIAlertAction)->Void)?)  {
        self.cancelAction = cancelAction;
    }
    
}
