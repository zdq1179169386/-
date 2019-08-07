//
//  BaiduMapViewFactory.h
//  地图工厂
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapViewFactoryProtocol.h"

NS_ASSUME_NONNULL_BEGIN
//具体产品，百度地图工厂， 产出百度地图和百度定位类
@interface BaiduMapViewFactory : NSObject<MapViewFactoryProtocol>

@end

NS_ASSUME_NONNULL_END
