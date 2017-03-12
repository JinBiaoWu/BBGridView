//
//  ViewController.m
//  BBGridView
//
//  Created by Biao on 2017/3/12.
//  Copyright © 2017年 Biao. All rights reserved.
//

#import "ViewController.h"
#import "PersonalViewController.h"
#import "BBButton.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor magentaColor];
    
    BBButton *button =[BBButton LXButtonWithTitle:@"你点我啊" titleFont:[UIFont systemFontOfSize:16.0] Image:nil backgroundImage:nil backgroundColor:nil titleColor:[UIColor blackColor] frame:CGRectMake(20, 100, 100, 40)];
    [self.view addSubview:button];
    __weak ViewController *weakSelf = self;
    [button addClickBlock:^(UIButton *button) {
        PersonalViewController *personal =[[PersonalViewController alloc]init];
        [weakSelf.navigationController pushViewController:personal animated:YES];
    }];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
