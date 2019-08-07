//
//  BaiduMapViewFactory.m
//  地图工厂
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "BaiduMapViewFactory.h"
#import "BaiduMapView.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BMKLocationkit/BMKLocationComponent.h>
#import "BaiduMapLocation.h"
@interface BaiduMapViewFactory ()<BMKLocationAuthDelegate,BMKGeneralDelegate>
@property(nonatomic,strong)BMKMapManager *mapManager;

@end

@implementation BaiduMapViewFactory

- (instancetype)initWithAppKey:(NSString *)AppKey
{
    self = [super init];
    if (self) {
        _mapManager = [[BMKMapManager alloc] init];
        // 如果要关注网络及授权验证事件，请设定generalDelegate参数
        [[BMKLocationAuth sharedInstance] checkPermisionWithKey:AppKey authDelegate:self];
        //启动引擎并设置AK并设置delegate
        BOOL result = [_mapManager start:AppKey generalDelegate:self];
        if (!result) {
            NSLog(@"启动引擎失败");
        }
    }
    return self;
}
#pragma  mark -- BMKLocationAuthDelegate
/**
 *@brief 返回授权验证错误
 *@param iError 错误号 : 为0时验证通过，具体参加BMKLocationAuthErrorCode
 */
- (void)onCheckPermissionState:(BMKLocationAuthErrorCode)iError{
    
}


#pragma mark -- BMKGeneralDelegate
/**
 联网结果回调
 
 @param iError 联网结果错误码信息，0代表联网成功
 */
- (void)onGetNetworkState:(int)iError {
    
    if (0 == iError) {
        NSLog(@"联网成功");
    } else {
        NSLog(@"联网失败：%d", iError);
    }
}

/**
 鉴权结果回调
 
 @param iError 鉴权结果错误码信息，0代表鉴权成功
 */
- (void)onGetPermissionState:(int)iError {
    if (0 == iError) {
        NSLog(@"授权成功");
    } else {
        NSLog(@"授权失败：%d", iError);
    }
}


//获取地图
- (id<MapViewProtocol>)getMapViewWithFrame:(CGRect)frame;
{
    return [[BaiduMapView alloc] initWithFrame:frame];
}
//获取定位
- (id<MapLocationProtocol>)getLocationServiceWithMapView:(id<MapViewProtocol>)mapView;
{
    return [[BaiduMapLocation alloc] initWithMapView: mapView];
}
@end
