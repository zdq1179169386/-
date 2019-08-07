//
//  TicketFactory.m
//  享元模式
//
//  Created by qrh on 2019/7/29.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "TicketFactory.h"

@interface TicketFactory ()

@property (nonatomic, strong) NSMutableDictionary * dict;

@end

@implementation TicketFactory
- (id<TrainTicketProtocol>)ticketFrom:(NSString *)from to:(NSString *)to;
{
    NSString * key = [NSString stringWithFormat:@"%@-%@",from,to];
    if (![self.dict objectForKey:key]) {
        id<TrainTicketProtocol> ticket = [self.dict objectForKey:key];
        [self.dict setObject:ticket forKey:key];
        return ticket;
    }
   return  self.dict[key];
}
- (void)clean
{
    [self.dict removeAllObjects];
    self.dict = nil;
}
- (NSMutableDictionary *)dict
{
    if (!_dict) {
        _dict = [NSMutableDictionary dictionary];
    }
    return _dict;
}
@end
