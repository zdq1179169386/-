//
//  DynamicCommand.h
//  购物车命令模式
//
//  Created by qrh on 2019/7/23.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommonProtocol.h"
#import "ShoppingReceive.h"
NS_ASSUME_NONNULL_BEGIN

//具体命令

typedef void(^DynamicBlock)(ShoppingReceive * receiver);
@interface DynamicCommand : NSObject<CommonProtocol>

- (instancetype)initReceiver:(ShoppingReceive *)receiver block:(DynamicBlock)block;

+(id<CommonProtocol>)createCommand:(ShoppingReceive *)receiver block:(DynamicBlock)block;

@end

NS_ASSUME_NONNULL_END
