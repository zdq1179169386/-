//
//  Leaf.m
//  组合模式
//
//  Created by qrh on 2019/7/29.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "Leaf.h"

@implementation Leaf
- (instancetype)initWithName:(NSString *)name;
{
    self = [super init];
    if (self) {
        self.name = name;
        self.components = @[].mutableCopy;
    }
    return self;
}

- (void)addChild:(id<ComponentProtocol>)child;
{
    NSLog(@"叶子节点没有子节点...");

}
- (void)removeChild:(id<ComponentProtocol>)child;
{
    NSLog(@"叶子节点没有子节点...");

}
- (id<ComponentProtocol>)getChild:(NSInteger)index;
{
    NSLog(@"叶子节点没有子节点...");
    return nil;
}
- (void)clear;
{
    NSLog(@"叶子节点没有子节点...");

}
- (void)print;
{
    NSLog(@"节点名称:%@",self.name);
}

@synthesize components;

@synthesize name;

@end
