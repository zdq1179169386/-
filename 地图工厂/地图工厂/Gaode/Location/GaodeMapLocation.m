//
//  GaodeMapLocation.m
//  地图工厂
//
//  Created by qrh on 2019/7/26.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "GaodeMapLocation.h"
#import "GaodeMapView.h"
#import <AMapFoundationKit/AMapFoundationKit.h>
#import <AMapLocationKit/AMapLocationKit.h>
#import <MAMapKit/MAMapKit.h>
#import "GaodeLocation.h"


@interface GaodeMapLocation ()<AMapLocationManagerDelegate>

@property (nonatomic,strong) MAMapView * mapview;
@property (nonatomic,strong) AMapLocationManager *locationManager;
@property (nonatomic, weak) id<MapLocationDelegateProtocol> delegate;
@end

@implementation GaodeMapLocation
//初始化
- (instancetype _Nonnull )initWithMapView:(id<MapViewProtocol>_Nonnull)mapView;
{
    if (self = [super init]) {
        self.mapview = (MAMapView *)[mapView getView];
    }
    return self;
}
- (void)setDelegateProtocol:(id<MapLocationDelegateProtocol>)delegateProtocol
{
    _delegate = delegateProtocol;
}
//开始
- (void)startLocation;
{
    [self.locationManager startUpdatingLocation];
}
//停止
- (void)stopLocation;
{
    [self.locationManager stopUpdatingLocation];
}

//单次定位
- (BOOL)requestLocationWithReGeocode:(BOOL)withReGeocode withNetworkState:(BOOL)withNetWorkState completionBlock:(MapLocatingCompletionBlock _Nonnull)completionBlock;
{
    __weak typeof(self) wSelf = self;
    return [self.locationManager requestLocationWithReGeocode:withReGeocode completionBlock:^(CLLocation *location, AMapLocationReGeocode *regeocode, NSError *error) {
        if (error)
        {
            NSLog(@"locError:{%ld - %@};", (long)error.code, error.localizedDescription);
            
            if (error.code == AMapLocationErrorLocateFailed)
            {
                return;
            }
        }
        __strong typeof(self) sSelf = wSelf;
        if (sSelf) {
            [self.mapview setCenterCoordinate:location.coordinate animated:YES];
        }
        //定位
        GaodeLocation * gaodeLocal = [[GaodeLocation alloc] initWithLocation:location reGeocode:regeocode];
        completionBlock(gaodeLocal,error);
    }];;
}
//连续定位
#pragma mark -- AMapLocationManagerDelegate
/**
 *  @brief 当plist配置NSLocationAlwaysUsageDescription或者NSLocationAlwaysAndWhenInUseUsageDescription，并且[CLLocationManager authorizationStatus] == kCLAuthorizationStatusNotDetermined，会调用代理的此方法。
 此方法实现调用申请后台权限API即可：[locationManager requestAlwaysAuthorization](必须调用,不然无法正常获取定位权限)
 *  @param manager 定位 AMapLocationManager 类。
 *  @param locationManager  需要申请后台定位权限的locationManager。
 *  @since 2.6.2
 */
- (void)amapLocationManager:(AMapLocationManager *)manager doRequireLocationAuth:(CLLocationManager*)locationManager{
    [locationManager requestAlwaysAuthorization];
}

/**
 *  @brief 当定位发生错误时，会调用代理的此方法。
 *  @param manager 定位 AMapLocationManager 类。
 *  @param error 返回的错误，参考 CLError 。
 */
- (void)amapLocationManager:(AMapLocationManager *)manager didFailWithError:(NSError *)error{
    
    [self.delegate LocationManagerdidFailWithError:error];
}

/**
 *  @brief 连续定位回调函数.注意：如果实现了本方法，则定位信息不会通过amapLocationManager:didUpdateLocation:方法回调。
 *  @param manager 定位 AMapLocationManager 类。
 *  @param location 定位结果。
 *  @param reGeocode 逆地理信息。
 */
- (void)amapLocationManager:(AMapLocationManager *)manager didUpdateLocation:(CLLocation *)location reGeocode:(AMapLocationReGeocode *)reGeocode{
    
    
    //更新MapViewUI
    [self.mapview setCenterCoordinate:location.coordinate animated:YES];
    //回调
    GaodeLocation * userLocation = [[GaodeLocation alloc] initWithLocation:location reGeocode:reGeocode];
    [self.delegate LocationdidUpdateLocation: userLocation orError:nil];
    
}

/**
 *  @brief 定位权限状态改变时回调函数
 *  @param manager 定位 AMapLocationManager 类。
 *  @param status 定位权限状态。
 */
- (void)amapLocationManager:(AMapLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status{
    
    [self.delegate LocationManagerdidChangeAuthorizationStatus:status];
}

/**
 *  @brief 是否显示设备朝向校准
 *  @param manager 定位 AMapLocationManager 类。
 *  @return 是否显示设备朝向校准
 */
- (BOOL)amapLocationManagerShouldDisplayHeadingCalibration:(AMapLocationManager *)manager{
    
    return [self.delegate LocationManagerShouldDisplayHeadingCalibration];
    
}

/**
 *  @brief 设备方向改变时回调函数
 *  @param manager 定位 AMapLocationManager 类。
 *  @param newHeading 设备朝向。
 */
- (void)amapLocationManager:(AMapLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading{
    
}

#pragma mark -- getter
- (AMapLocationManager *)locationManager
{
    if (!_locationManager) {
        _locationManager = [[AMapLocationManager alloc] init];
        // 带逆地理信息的一次定位（返回坐标和地址信息）
        [_locationManager setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
        //   定位超时时间，最低2s，此处设置为2s
        _locationManager.locationTimeout =2;
        //   逆地理请求超时时间，最低2s，此处设置为2s
        _locationManager.reGeocodeTimeout = 2;
        _locationManager.delegate = self;
    }
    return _locationManager;
}

@end
