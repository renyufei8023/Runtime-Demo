//
//  Person.m
//  Runtime
//
//  Created by 任玉飞 on 16/5/23.
//  Copyright © 2016年 任玉飞. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>

@implementation Person

void hehe(id self,SEL _cmd)
{
    NSLog(@"调用eat %@ %@",self,NSStringFromSelector(_cmd));
}

// 默认一个方法都有两个参数,self,_cmd,隐式参数
// self:方法调用者
// _cmd:调用方法的编号

// 动态添加方法,首先实现这个resolveInstanceMethod
// resolveInstanceMethod调用:当调用了没有实现的方法没有实现就会调用resolveInstanceMethod
// resolveInstanceMethod作用:就知道哪些方法没有实现,从而动态添加方法
// sel:没有实现方法

+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    if (sel == @selector(eat)) {
        /*
         cls:给哪个类添加方法
         SEL:添加方法的方法编号是什么
         IMP:方法实现,函数入口,函数名
         types:方法类型
         */
        // @:对象 :SEL
        class_addMethod(self, sel, (IMP)hehe, "v@");
        return YES;
    }
    
    return [super resolveInstanceMethod:sel];
}
@end
