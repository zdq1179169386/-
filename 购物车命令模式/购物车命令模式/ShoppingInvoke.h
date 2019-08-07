//
//  ShoppingInvoke.h
//  购物车命令模式
//
//  Created by qrh on 2019/7/23.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShoppingReceive.h"

NS_ASSUME_NONNULL_BEGIN

@interface ShoppingInvoke : NSObject

- (instancetype)initReceiver:(ShoppingReceive *)receiver;

- (void)reduceCount:(NSString *)value;

- (void)addCount:(NSString *)value;

- (void)undo;
@end

NS_ASSUME_NONNULL_END
