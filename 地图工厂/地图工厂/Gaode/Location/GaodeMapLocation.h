//
//  GaodeMapLocation.h
//  地图工厂
//
//  Created by qrh on 2019/7/26.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapLocationProtocol.h"

NS_ASSUME_NONNULL_BEGIN
//具体产品，高德定位类 ，是高德工厂通过定位接口 MapLocationProtocol 生产出来的
@interface GaodeMapLocation : NSObject<MapLocationProtocol>

@end

NS_ASSUME_NONNULL_END
