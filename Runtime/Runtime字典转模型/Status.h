//
//  Status.h
//  Runtime
//
//  Created by 任玉飞 on 16/5/23.
//  Copyright © 2016年 任玉飞. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Users;
@interface Status : NSObject

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, strong) NSString *source;

@property (nonatomic, assign) NSInteger reposts_count;

@property (nonatomic, strong) NSArray *pic_urls;

@property (nonatomic, strong) NSString *created_at;

@property (nonatomic, assign) int attitudes_count;

@property (nonatomic, strong) NSString *idstr;

@property (nonatomic, strong) NSString *text;

@property (nonatomic, assign) int comments_count;

@property (nonatomic, strong) Users *user;

@property (nonatomic, strong) NSDictionary *retweeted_status;

@end
