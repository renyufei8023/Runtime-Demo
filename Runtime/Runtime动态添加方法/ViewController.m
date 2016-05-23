//
//  ViewController.m
//  Runtime动态添加方法
//
//  Created by 任玉飞 on 16/5/23.
//  Copyright © 2016年 任玉飞. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *p = [Person new];
    
    [p performSelector:@selector(eat)];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
