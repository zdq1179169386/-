//
//  ShoppingReceive.h
//  购物车命令模式
//
//  Created by qrh on 2019/7/23.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//接受者
@interface ShoppingReceive : NSObject

- (void)reduceCount:(NSString *)value;

- (void)addCount:(NSString *)value;

- (void)printCount;
@end

NS_ASSUME_NONNULL_END
