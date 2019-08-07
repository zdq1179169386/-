//
//  ComponentProtocol.h
//  组合模式
//
//  Created by qrh on 2019/7/29.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>

//抽象根节点
@protocol ComponentProtocol <NSObject>

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSMutableArray *components;

- (void)addChild:(id<ComponentProtocol>)child;
- (void)removeChild:(id<ComponentProtocol>)child;
- (id<ComponentProtocol>)getChild:(NSInteger)index;
- (void)clear;
- (void)print;
@end
