//
//  TrainTicketProtocol.h
//  享元模式
//
//  Created by qrh on 2019/7/29.
//  Copyright © 2019 zdq. All rights reserved.
//

//角色1，享元接口
#import <Foundation/Foundation.h>

@protocol TrainTicketProtocol <NSObject>

- (void)showTicketInfo:(NSString *)bunk;

@end
