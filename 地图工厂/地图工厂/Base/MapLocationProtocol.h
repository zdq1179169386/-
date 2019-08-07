//
//  MapLocationProtocol.h
//  地图工厂
//
//  Created by qrh on 2019/7/26.
//  Copyright © 2019 zdq. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MapViewProtocol.h"
#import "LocationProtocol.h"
#import "MapLocationDelegateProtocol.h"

typedef void (^MapLocatingCompletionBlock)(id<LocationProtocol> _Nullable location, NSError * _Nullable error);

//抽象产品： 定位接口
@protocol MapLocationProtocol <NSObject>

//初始化
- (instancetype _Nonnull )initWithMapView:(id<MapViewProtocol>_Nonnull)mapView;
//设置代理
- (void)setDelegateProtocol:(id<MapLocationDelegateProtocol>_Nonnull)delegateProtocol;
//开始
- (void)startLocation;
//停止
- (void)stopLocation;

//单次定位
- (BOOL)requestLocationWithReGeocode:(BOOL)withReGeocode withNetworkState:(BOOL)withNetWorkState completionBlock:(MapLocatingCompletionBlock _Nonnull)completionBlock;
@end
