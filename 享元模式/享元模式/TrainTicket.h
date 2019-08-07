//
//  TrainTicket.h
//  享元模式
//
//  Created by qrh on 2019/7/29.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TrainTicketProtocol.h"
NS_ASSUME_NONNULL_BEGIN
//角色2，享元对象
@interface TrainTicket : NSObject<TrainTicketProtocol>

@property (nonatomic,assign) NSInteger price; //价格
@property (nonatomic,copy) NSString * from;  //从哪里出发
@property (nonatomic,copy) NSString * to;    //要到哪里
@property (nonatomic,copy) NSString * bunk;  //座位
- (instancetype)initWithFrom:(NSString *)from to:(NSString *)to;
@end

NS_ASSUME_NONNULL_END
