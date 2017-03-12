
//
//  BBRootViewController.m
//  BBGridView
//
//  Created by Biao on 2017/3/12.
//  Copyright © 2017年 Biao. All rights reserved.
//

#import "BBRootViewController.h"

@interface BBRootViewController ()

@end

@implementation BBRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    UIImageView *icon =[[UIImageView alloc]initWithFrame:self.view.bounds];
    icon.image =[UIImage imageNamed:@"meinv07.jpg"];
    [self.view addSubview:icon];
    
    //毛玻璃效果
    
    UIBlurEffect *blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:blur];
    effectView.frame = CGRectMake(0, 0, icon.frame.size.width, icon.frame.size.height);
    [icon addSubview:effectView];
    
    self.backGroundImageview = icon;

    
}



@end
