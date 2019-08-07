//
//  TrainTicket.m
//  享元模式
//
//  Created by qrh on 2019/7/29.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "TrainTicket.h"

@implementation TrainTicket
- (instancetype)initWithFrom:(NSString *)from to:(NSString *)to;
{
    if (self = [super init]) {
        self.from = from;
        self.to = to;
    }
    return self;
}
- (void)showTicketInfo:(NSString *)bunk
{
    self.bunk = bunk;
    if ([bunk isEqualToString:@"二等座"]) {
        self.price = 880;
    } else if ([bunk isEqualToString:@"一等座"]) {
        self.price = 1200;
    } else if ([bunk isEqualToString:@"特等座"]) {
        self.price = 1500;
    } else if ([bunk isEqualToString:@"商务座"]) {
        self.price = 1800;
    }
    
    NSLog(@"from = %@，to = %@，bunk = %@， price = %ld",self.from,self.to,self.bunk,self.price);
}
@end
