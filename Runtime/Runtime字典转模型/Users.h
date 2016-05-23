//
//  Users.h
//  Runtime
//
//  Created by 任玉飞 on 16/5/23.
//  Copyright © 2016年 任玉飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Users : NSObject

@property(nonatomic, assign) NSInteger mbrank;
@property(nonatomic, assign) NSInteger mbtype;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *profile_image_url;
@property(nonatomic, assign) BOOL vip;
@end
