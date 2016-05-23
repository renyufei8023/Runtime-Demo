//
//  NSObject+extension.m
//  Runtime
//
//  Created by 任玉飞 on 16/5/23.
//  Copyright © 2016年 任玉飞. All rights reserved.
//

#import "NSObject+extension.h"
#import <objc/message.h>

@implementation NSObject (extension)

- (void)setName:(NSString *)name
{
//    _name = name;
    // 添加属性,跟对象
    // 给某个对象产生关联,添加属性
    // object:给哪个对象添加属性
    // key:属性名,根据key去获取关联的对象 ,void * == id
    // value:关联的值
    // policy:策略
    objc_setAssociatedObject(self, "name", name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
}

- (NSString *)name
{
    return objc_getAssociatedObject(self, "name");
}
@end
