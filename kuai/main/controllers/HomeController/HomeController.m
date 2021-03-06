//
//  HomeController.m
//  kuai
//
//  Created by wangyongyue on 2020/7/8.
//  Copyright © 2020 sui. All rights reserved.
//

#import "HomeController.h"
#import "CameraVC.h"
#import "Router.h"
#import "Home.h"
@interface HomeController ()

@end
@implementation HomeController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.server = [[Home alloc]init];
    }
    return self;
}


- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.navigationItem.title = @"sdf";
    
    UIButton *right = [UIButton buttonWithType:UIButtonTypeSystem];
    [right setTitle:@"camera" forState:UIControlStateNormal];
    [right setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [right addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
    right.frame = CGRectMake(0, 0, 40, 40);
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:right];
    self.navigationItem.rightBarButtonItem  = item;
        
}
- (void)onClick{
    
    CameraVC *vc = [[CameraVC alloc]init];
    [Router push:vc];
    
}

@end
