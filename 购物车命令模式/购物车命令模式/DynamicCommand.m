//
//  DynamicCommand.m
//  购物车命令模式
//
//  Created by qrh on 2019/7/23.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "DynamicCommand.h"

@interface DynamicCommand ()

@property (nonatomic, strong) ShoppingReceive * receiver;
@property (nonatomic, copy) DynamicBlock  block;

@end

@implementation DynamicCommand

- (instancetype)initReceiver:(ShoppingReceive *)receiver block:(DynamicBlock)block;
{
    if (self = [super init]) {
        self.receiver = receiver;
        self.block = block;
    }
    return self;
}

// 类方法
+(id<CommonProtocol>)createCommand:(ShoppingReceive *)receiver block:(DynamicBlock)block;
{
    return [[DynamicCommand alloc]initReceiver:receiver block:block];
}

- (void)excute;
{
    self.block(self.receiver);
}

@end
