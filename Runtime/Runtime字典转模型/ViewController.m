//
//  ViewController.m
//  Runtime字典转模型
//
//  Created by 任玉飞 on 16/5/23.
//  Copyright © 2016年 任玉飞. All rights reserved.
//

#import "ViewController.h"
#import "Status.h"
#import "NSObject+Model.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"status.plist" ofType:nil];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:filePath];
    NSArray *dictArr = dict[@"statuses"];
    
    NSMutableArray *statuses = [NSMutableArray array];
    
    for (NSDictionary *dict in dictArr) {
        Status *status = [Status modelWithDict:dict];
        [statuses addObject:status];
    }
    
    NSLog(@"-----%@",statuses);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
