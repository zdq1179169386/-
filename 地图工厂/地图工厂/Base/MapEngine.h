//
//  MapEngine.h
//  地图工厂
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapViewFactoryProtocol.h"

NS_ASSUME_NONNULL_BEGIN
//简单工厂模式
@interface MapEngine : NSObject


+ (instancetype)sharedInstance;


-(id<MapViewFactoryProtocol>)getFactory;

@end

NS_ASSUME_NONNULL_END
