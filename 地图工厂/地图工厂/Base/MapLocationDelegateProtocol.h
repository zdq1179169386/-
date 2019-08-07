//
//  MapLocationDelegateProtocol.h
//  地图工厂
//
//  Created by qrh on 2019/7/26.
//  Copyright © 2019 zdq. All rights reserved.
//



#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, LocationNetworkState) {
    LocationNetworkStateUnknown = 0,    ///<网络状态未知
    LocationNetworkStateWifi,           ///<网络状态wifi
    LocationNetworkStateWifiHotSpot,          ///<网络状态连接WIFI移动热点
    LocationNetworkStateMobile2G,          ///<网络状态移动2G
    LocationNetworkStateMobile3G,          ///<网络状态移动3G
    LocationNetworkStateMobile4G        ///<网络状态移动4G
};


//抽象产品： 定位产品，  各种回调方法
@protocol MapLocationDelegateProtocol <NSObject>

//定位发生错误
- (void)LocationManagerdidFailWithError:(NSError * _Nullable)error;
//连续定位回调函数。
- (void)LocationdidUpdateLocation:(id<LocationProtocol>  _Nullable)location orError:(NSError * _Nullable)error;
//定位权限状态改变时回调函数
- (void)LocationManagerdidChangeAuthorizationStatus:(CLAuthorizationStatus)status;
//该方法为BMKLocationManager提示需要设备校正回调方法。
- (BOOL)LocationManagerShouldDisplayHeadingCalibration;
//提供设备朝向的回调方法。
- (void)LocationManagerdidUpdateHeading:(CLHeading * _Nullable)heading;
//所在App系统网络状态改变的回调事件。
- (void)LocationManagerdidUpdateNetworkState:(LocationNetworkState)state orError:(NSError * _Nullable)error;

@end
