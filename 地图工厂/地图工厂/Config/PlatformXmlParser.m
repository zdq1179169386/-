//
//  PlatformXmlParser.m
//  地图工厂
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "PlatformXmlParser.h"
#import "Platform.h"

@interface PlatformXmlParser ()<NSXMLParserDelegate>

@property (nonatomic, strong) NSMutableArray * array;

@end

@implementation PlatformXmlParser
- (instancetype)init
{
    self = [super init];
    if (self) {
        _array = [[NSMutableArray alloc]init];
    }
    return self;
}

/** 解析方法，返回数组*/
-(NSMutableArray*)parser{
    //加载XML配置文件
    //绑定delegate
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"Config" ofType:@"map.xml"];
    NSURL* url = [[NSURL alloc] initFileURLWithPath:filePath];
    NSXMLParser* xmlParser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    xmlParser.delegate = self;
    //解析
    [xmlParser parse];
    return _array;
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(nullable NSString *)namespaceURI qualifiedName:(nullable NSString *)qName attributes:(NSDictionary<NSString *, NSString *> *)attributeDict{
    //解析xml
    if([elementName isEqualToString:@"platform"]){
        NSString* mapId = attributeDict[@"id"];
        NSString* appKey = attributeDict[@"appKey"];
        NSString* factoryName = attributeDict[@"factoryName"];
        NSString* isOpen = attributeDict[@"isOpen"];
        Platform* platform = [[Platform alloc] init];
        platform.mapId = mapId;
        platform.appKey = appKey;
        platform.factoryName =factoryName;
        platform.isOpen = isOpen;
        //保存
        [_array addObject:platform];
    }
}
@end
