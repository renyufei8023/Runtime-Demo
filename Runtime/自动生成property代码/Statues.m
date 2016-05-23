//
//  Statues.m
//  Runtime
//
//  Created by 任玉飞 on 16/5/23.
//  Copyright © 2016年 任玉飞. All rights reserved.
//

#import "Statues.h"

@implementation Statues

+ (Statues *)statuesWithDict:(NSDictionary *)dict
{
    Statues *statues = [[Statues alloc]init];
    [statues setValuesForKeysWithDictionary:dict];
    return statues;
}

// 解决KVC报错,可以在这个方法中实现property中未声明的属性
- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{

    // key:没有找到key
    // value:没有找到key对应的值

}
@end
