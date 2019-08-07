//
//  BaiduLocation.h
//  地图工厂
//
//  Created by qrh on 2019/7/26.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LocationProtocol.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BMKLocationkit/BMKLocationComponent.h>
NS_ASSUME_NONNULL_BEGIN
//百度地图的位置模型
@interface BaiduLocation : NSObject<LocationProtocol>

- (instancetype)initWithUserLocation:(BMKLocation *)location;

@end

NS_ASSUME_NONNULL_END
