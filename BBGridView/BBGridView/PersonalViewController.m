//
//  PersonalViewController.m
//  BBGridView
//
//  Created by Biao on 2017/3/12.
//  Copyright © 2017年 Biao. All rights reserved.
//

#import "PersonalViewController.h"

#import "BBGridView.h"
#import "BBGridButton.h"
#import "UIView+Frame.h"
#import "UIColor+Expanded.h"
#import "UILabel+LXLabel.h"

#define KScreenW [[UIScreen mainScreen]bounds].size.width
#define KScreenH [[UIScreen mainScreen]bounds].size.height
#define LBColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define LBRandomColor LBColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))
#define NAVH 64.0

@interface PersonalViewController ()<UIScrollViewDelegate,GridViewDelegate>

@property(nonatomic,strong)BBGridView *gridView;
@property(nonatomic,strong)UIScrollView *myScrollview;
@property (strong,nonatomic) NSMutableArray * showGridTitleArray; // 标题
@property (strong,nonatomic) NSMutableArray * showImageGridArray; // 图片
@property (strong,nonatomic) NSMutableArray * showGridIDArray;//ID

@end

@implementation PersonalViewController





- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"我";
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.myScrollview];
    self.gridView =[[BBGridView alloc]initWithFrame:CGRectMake(0, 0, KScreenW, 200) showGridTitleArray:self.showGridTitleArray showImageGridArray:self.showImageGridArray showGridIDArray:self.showGridIDArray];
    self.gridView.backgroundColor = [UIColor whiteColor];
    self.gridView.gridViewDelegate = self;
    [self.myScrollview addSubview:_gridView];
    [self.gridView updateNewFrame];
}


-(void)updateHeight:(CGFloat)height
{
    self.gridView.height = height;
    self.myScrollview.contentSize = CGSizeMake(KScreenW, height);
}

-(void)clickGridView:(BBGridButton *)item
{
    NSLog(@"%@",item.gridTitle);
}

- (UIScrollView *)myScrollview
{
    if(_myScrollview == nil) {
        _myScrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, KScreenW, KScreenH)];
        _myScrollview.contentSize = CGSizeMake(KScreenW, KScreenH *2);
        _myScrollview.contentOffset = CGPointMake(0, -64);
        _myScrollview.contentInset = UIEdgeInsetsMake(64, 0, 0, 0);
        _myScrollview.showsHorizontalScrollIndicator = NO;
        _myScrollview.showsVerticalScrollIndicator = YES;
        _myScrollview.bounces = NO;
        _myScrollview.backgroundColor =[UIColor clearColor];
    }
    return _myScrollview;
}

#pragma mark---懒加载---
- (NSMutableArray *)showGridTitleArray
{
    if(_showGridTitleArray == nil)
    {
        _showGridTitleArray = [NSMutableArray arrayWithObjects:
                               @"交易",
                               @"回购",
                               @"转增",
                               @"推荐",
                               @"品牌商家订单",
                               @"精品商家订单",
                               @"我的座驾",
                               @"我的消费排名",
                               @"品牌商家",
                               @"精品购物",
                               @"联盟数据",
                               @"财富专区",
                               @"娱乐中心",
                               @"品牌直播" ,
                               nil];
    }
    return _showGridTitleArray;
}

- (NSMutableArray *)showImageGridArray
{
    if(_showImageGridArray == nil)
    {
        _showImageGridArray = [NSMutableArray arrayWithObjects:
                               @"icon_deal",
                               @"icon_buy-back",
                               @"icon_give",
                               @"icon_recommend",
                               @"icon_brand" ,
                               @"icon_indent",
                               @"icon_car",
                               @"icon_ranking",
                               @"icon_merchant",
                               @"icon_boutique",
                               @"icon_data",
                               @"icon_deal" ,
                               @"icon_recreation" ,
                               @"icon_streaming",
                               nil];
        ;
    }
    return _showImageGridArray;
}

- (NSMutableArray *)showGridIDArray
{
    if(_showGridIDArray == nil)
    {
        _showGridIDArray = [NSMutableArray arrayWithObjects:
                            @"1000",@"1001", @"1002",
                            @"1003",@"1004",@"1005" ,@"1006",
                            @"1007",@"1008", @"1009",
                            @"1010",@"1011",@"1012" ,
                            @"1013" , @"1014",@"1015",@"0", nil];
    }
    return _showGridIDArray;
}



@end
