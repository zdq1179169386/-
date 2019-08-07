//
//  GaodeMapViewFactory.h
//  地图工厂
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapViewFactoryProtocol.h"

NS_ASSUME_NONNULL_BEGIN
//具体产品，高德地图工厂， 产出高德地图和高德定位类
@interface GaodeMapViewFactory : NSObject<MapViewFactoryProtocol>

@end

NS_ASSUME_NONNULL_END
