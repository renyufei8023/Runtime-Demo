//
//  Person.m
//  Runtime
//
//  Created by 任玉飞 on 16/5/23.
//  Copyright © 2016年 任玉飞. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)eat
{
    NSLog(@"对象方法-吃东西");
}

+ (void)hehe
{
    NSLog(@"类方法-吃东西");
}

- (void)run:(int)age
{
    NSLog(@"%d",age);
}

@end
