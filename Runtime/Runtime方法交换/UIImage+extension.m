//
//  UIImage+extension.m
//  Runtime
//
//  Created by 任玉飞 on 16/5/23.
//  Copyright © 2016年 任玉飞. All rights reserved.
//

#import "UIImage+extension.h"
#import <objc/message.h>

@implementation UIImage (extension)

+ (void)load
{
    // 交换方法实现,方法都是定义在类里面
    // class_getMethodImplementation:获取方法实现
    // class_getInstanceMethod:获取对象
    // class_getClassMethod:获取类方法
    // IMP:方法实现
    
    // imageNamed
    // Class:获取哪个类方法
    // SEL:获取方法编号,根据SEL就能去对应的类找方法
    Method imageNameMethod = class_getClassMethod([UIImage class], @selector(imageNamed:));
    Method ryf_imageNameMethod = class_getClassMethod([UIImage class], @selector(ryf_imageNamed:));
    
    // 交换方法实现
    method_exchangeImplementations(imageNameMethod, ryf_imageNameMethod);
}

+ (UIImage *)ryf_imageNamed:(NSString *)imageName
{
    UIImage *image = [UIImage ryf_imageNamed:imageName];
    
    if (image == nil) {
        NSLog(@"图片是空的");
    }
    return image;
}
@end
