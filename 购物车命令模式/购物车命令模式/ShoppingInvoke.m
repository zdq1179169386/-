//
//  ShoppingInvoke.m
//  购物车命令模式
//
//  Created by qrh on 2019/7/23.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "ShoppingInvoke.h"
#import "DynamicCommand.h"

@interface ShoppingInvoke ()
@property (nonatomic, strong) ShoppingReceive * receiver;
@property (nonatomic, strong) NSMutableArray *commands;

@end

@implementation ShoppingInvoke

- (instancetype)initReceiver:(ShoppingReceive *)receiver;
{
    if (self = [super init]) {
        self.receiver = receiver;
        self.commands = [NSMutableArray array];
    }
    return self;
}
//保存的l命令是用于撤销的，所以要保存相反的命令
- (void)reduceCount:(NSString *)value;
{
    [self.receiver reduceCount:value];
    [self addCommand:@"addCount:" value:value];
}

- (void)addCount:(NSString *)value;
{
    [self.receiver addCount:value];
    [self addCommand:@"reduceCount:" value:value];
}

- (void)addCommand:(NSString *)methodName value:(NSString *)value{
    SEL method = NSSelectorFromString(methodName);
    [self.commands addObject: [[DynamicCommand alloc] initReceiver:self.receiver block:^(ShoppingReceive * _Nonnull receiver) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        [self performSelector:method withObject:value];
#pragma clang diagnostic pop
    }]] ;
}

- (void)undo;
{
    if (self.commands.count > 0) {
        DynamicCommand * command = self.commands.lastObject;
        [command excute];
        [self.commands removeLastObject];
    }
}

@end
