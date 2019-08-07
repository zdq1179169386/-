//
//  TicketFactory.h
//  享元模式
//
//  Created by qrh on 2019/7/29.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TrainTicketProtocol.h"
//角色3，享元工厂
NS_ASSUME_NONNULL_BEGIN

@interface TicketFactory : NSObject

- (id<TrainTicketProtocol>)ticketFrom:(NSString *)from to:(NSString *)to;
- (void)clean;
@end

NS_ASSUME_NONNULL_END
