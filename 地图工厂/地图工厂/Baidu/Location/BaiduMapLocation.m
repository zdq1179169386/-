//
//  BaiduMapLocation.m
//  地图工厂
//
//  Created by qrh on 2019/7/26.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "BaiduMapLocation.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件
#import <BMKLocationkit/BMKLocationComponent.h>
#import "BaiduLocation.h"
#import "MapLocationDelegateProtocol.h"

@interface BaiduMapLocation ()<BMKLocationManagerDelegate>
@property (nonatomic, strong) BMKLocationManager *locationManager; //当前位置对象
@property (nonatomic, strong) BMKMapView *mapview;
@property (nonatomic, weak) id<MapLocationDelegateProtocol> delegate;
@property(nonatomic,strong) BMKUserLocation *userLocation;

@end

@implementation BaiduMapLocation
//初始化
- (instancetype)initWithMapView:(id<MapViewProtocol>)mapView;
{
    if (self = [super init]) {
        self.mapview = (BMKMapView *)[mapView getView];
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
   return [self.locationManager requestLocationWithReGeocode:withReGeocode withNetworkState:withNetWorkState completionBlock:^(BMKLocation * _Nullable location, BMKLocationNetworkState state, NSError * _Nullable error) {
       __strong typeof(self) sSelf = wSelf;
       //更新Map中的UI
       BMKUserLocation *usrlocation = [[BMKUserLocation alloc]init];
       usrlocation.location = location.location;
       if (sSelf) {
           [sSelf.mapview updateLocationData:usrlocation];
           [sSelf.mapview setCenterCoordinate:location.location.coordinate animated:YES];
       }
//       返回自定义的位置数据
        BaiduLocation * baiduLocal = [[BaiduLocation alloc] initWithUserLocation:location];
        completionBlock(baiduLocal,error);
    }];
}
//连续定位
#pragma mark -- BMKLocationManagerDelegate
/**
 *  @brief 当定位发生错误时，会调用代理的此方法。
 *  @param manager 定位 BMKLocationManager 类。
 *  @param error 返回的错误，参考 CLError 。
 */
- (void)BMKLocationManager:(BMKLocationManager * _Nonnull)manager didFailWithError:(NSError * _Nullable)error{
    
    NSLog(@"定位失败");
    [self.delegate LocationManagerdidFailWithError:error];
    
}


/**
 *  @brief 连续定位回调函数。
 *  @param manager 定位 BMKLocationManager 类。
 *  @param location 定位结果，参考BMKLocation。
 *  @param error 错误信息。
 */
- (void)BMKLocationManager:(BMKLocationManager * _Nonnull)manager didUpdateLocation:(BMKLocation * _Nullable)location orError:(NSError * _Nullable)error{
    
    if (error) {
        NSLog(@"locError:{%ld - %@};", (long)error.code, error.localizedDescription);
    }
    if (!location) {
        
        return;
    }
    self.userLocation.location = location.location;
    [self.mapview updateLocationData: self.userLocation];
    [self.mapview setCenterCoordinate: location.location.coordinate animated:YES];
    //实现该方法，否则定位图标不出现
    BaiduLocation *baodulocation = [[BaiduLocation alloc]initWithUserLocation:location];
    [self.delegate LocationdidUpdateLocation:baodulocation orError:error];
}

/**
 *  @brief 定位权限状态改变时回调函数
 *  @param manager 定位 BMKLocationManager 类。
 *  @param status 定位权限状态。
 */
- (void)BMKLocationManager:(BMKLocationManager * _Nonnull)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status{
    
    [self.delegate LocationManagerdidChangeAuthorizationStatus:status];
    
}
/**
 * @brief 该方法为BMKLocationManager提示需要设备校正回调方法。
 * @param manager 提供该定位结果的BMKLocationManager类的实例。
 */
- (BOOL)BMKLocationManagerShouldDisplayHeadingCalibration:(BMKLocationManager * _Nonnull)manager{
    
    return [self.delegate LocationManagerShouldDisplayHeadingCalibration];
}

/**
 * @brief 该方法为BMKLocationManager提供设备朝向的回调方法。
 * @param manager 提供该定位结果的BMKLocationManager类的实例
 * @param heading 设备的朝向结果
 */
- (void)BMKLocationManager:(BMKLocationManager * _Nonnull)manager
          didUpdateHeading:(CLHeading * _Nullable)heading{
    
    [self.delegate LocationManagerdidUpdateHeading:heading];
}

/**
 * @brief 该方法为BMKLocationManager所在App系统网络状态改变的回调事件。
 * @param manager 提供该定位结果的BMKLocationManager类的实例
 * @param state 当前网络状态
 * @param error 错误信息
 */
- (void)BMKLocationManager:(BMKLocationManager * _Nonnull)manager
     didUpdateNetworkState:(BMKLocationNetworkState)state orError:(NSError * _Nullable)error{
    
    [self.delegate LocationManagerdidUpdateNetworkState:[self getLocationNetWorkStateformBMKLocationNetworkState:state] orError:error];
    
}

- (LocationNetworkState)getLocationNetWorkStateformBMKLocationNetworkState:(BMKLocationNetworkState)state{

    LocationNetworkState NetworkState = LocationNetworkStateUnknown;

    switch (state) {
        case BMKLocationNetworkStateUnknown:
        {
            NetworkState = LocationNetworkStateUnknown;
        }
            break;
        case BMKLocationNetworkStateWifi:
        {
            NetworkState = LocationNetworkStateWifi;
        }
            break;
        case BMKLocationNetworkStateWifiHotSpot:
        {
            NetworkState = LocationNetworkStateWifiHotSpot;
        }
            break;
        case BMKLocationNetworkStateMobile2G:
        {
            NetworkState = LocationNetworkStateMobile2G;
        }
            break;
        case BMKLocationNetworkStateMobile3G:
        {
            NetworkState = LocationNetworkStateMobile3G;
        }
            break;
        case BMKLocationNetworkStateMobile4G:
        {
            NetworkState = LocationNetworkStateMobile4G;
        }
            break;

        default:
            break;
    }

    return NetworkState;

}

#pragma mark -- getter
- (BMKLocationManager *)locationManager {
    if (!_locationManager) {
        //初始化BMKLocationManager类的实例
        _locationManager = [[BMKLocationManager alloc] init];
        //基本参数
        _locationManager.coordinateType = BMKLocationCoordinateTypeBMK09LL;
        _locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        _locationManager.activityType = CLActivityTypeAutomotiveNavigation;
        _locationManager.pausesLocationUpdatesAutomatically = NO;
        _locationManager.allowsBackgroundLocationUpdates = NO;
        _locationManager.locationTimeout = 10;
        _locationManager.reGeocodeTimeout = 10;
        _locationManager.delegate = self;
    }
    return _locationManager;
}
- (BMKUserLocation *)userLocation {
    if (!_userLocation) {
        //初始化BMKUserLocation类的实例
        _userLocation = [[BMKUserLocation alloc] init];
    }
    return _userLocation;
}

@end
