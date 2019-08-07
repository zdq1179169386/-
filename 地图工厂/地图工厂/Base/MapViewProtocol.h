//
//  MapViewProtocol.h
//  地图工厂
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LocationProtocol.h"
//抽象产品： 地图接口，配置地图的各种属性
@protocol MapViewProtocol <NSObject>

- (instancetype)initWithFrame:(CGRect)frame;
//获取地图
- (UIView *)getView;
//是否显示定位
-(void)setShowUserLocation:(BOOL)isShowUserLocation;

//添加大头针
- (void)addAnnotation:(id<LocationProtocol>)location;

#pragma  mark --  管理地图的生命周期
/*
 由于百度地图SDK必须的。
 BMKMapView使用viewWillAppear、viewWillDisappear方法来控制BMKMapView的生命周期，
 并且在一个时刻只能有一个BMKMapView接受回调消息，
 因此在使用BMKMapView的viewController中必须需要在viewWillAppear、viewWillDisappear方法中
 调用BMKMapView的对应的方法。
 
 */

@optional
- (void)viewWillAppear;

- (void)viewWillDisappear;

@end
