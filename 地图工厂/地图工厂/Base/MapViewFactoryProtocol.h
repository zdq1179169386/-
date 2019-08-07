//
//  MapViewFactoryProtocol.h
//  地图工厂
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapViewProtocol.h"
#import "MapLocationProtocol.h"

//抽象产品： 地图工厂，可以产出地图和定位 产品
@protocol MapViewFactoryProtocol <NSObject>
//初始化
- (instancetype)initWithAppKey:(NSString *)AppKey;
//获取地图
- (id<MapViewProtocol>)getMapViewWithFrame:(CGRect)frame;
//获取定位
- (id<MapLocationProtocol>)getLocationServiceWithMapView:(id<MapViewProtocol>)mapView;
@end
