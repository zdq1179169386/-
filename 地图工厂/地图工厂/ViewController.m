//
//  ViewController.m
//  地图工厂
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "ViewController.h"
#import "MapEngine.h"
#import "MapViewFactoryProtocol.h"
#import "MapLocationProtocol.h"

@interface ViewController ()<MapLocationDelegateProtocol>
{
    id<MapViewProtocol> _mapView;
    id<MapLocationProtocol> _locatonService;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MapEngine * engine = [MapEngine sharedInstance];
    id<MapViewFactoryProtocol> factory = [engine getFactory];
    _mapView = [factory getMapViewWithFrame:self.view.frame];
    [_mapView setShowUserLocation:YES];
    [self.view addSubview:[_mapView getView]];
    
    //单次定位
    _locatonService = [factory getLocationServiceWithMapView:_mapView];
//    [_locatonService requestLocationWithReGeocode:YES withNetworkState:YES completionBlock:^(id<LocationProtocol>  _Nullable location, NSError * _Nullable error) {
//        NSLog(@"block定位回调成功");
//        NSLog(@"longitude === %lf",[location getLocation].coordinate.longitude);
//        NSLog(@"latitude === %lf",[location getLocation].coordinate.latitude);
//        NSLog(@"%@",error);
//    }];
    
//    连续定位
    [_locatonService setDelegateProtocol:self];
    [_locatonService startLocation];
    
    
}
#pragma mark -- MapLocationDelegateProtocol
//定位发生错误
- (void)LocationManagerdidFailWithError:(NSError * _Nullable)error;
{
    
}
//连续定位回调函数。
- (void)LocationdidUpdateLocation:(id<LocationProtocol>  _Nullable)location orError:(NSError * _Nullable)error;
{
    NSLog(@"连续定位回调成功");
    NSLog(@"longitude === %lf",[location getLocation].coordinate.longitude);
    NSLog(@"latitude === %lf",[location getLocation].coordinate.latitude);
    NSLog(@"%@",error);
    [_mapView addAnnotation:location];
}
//定位权限状态改变时回调函数
- (void)LocationManagerdidChangeAuthorizationStatus:(CLAuthorizationStatus)status;{
    
}
//该方法为BMKLocationManager提示需要设备校正回调方法。
- (BOOL)LocationManagerShouldDisplayHeadingCalibration;
{
    return YES;
}
//提供设备朝向的回调方法。
- (void)LocationManagerdidUpdateHeading:(CLHeading * _Nullable)heading;{
    
}

- (void)LocationManagerdidUpdateNetworkState:(LocationNetworkState)state orError:(NSError * _Nullable)error;
{
    
}
@end
