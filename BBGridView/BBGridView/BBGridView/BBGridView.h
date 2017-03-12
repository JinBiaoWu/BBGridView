//
//  BBGridView.h
//  BBGridView
//
//  Created by Biao on 2017/3/12.
//  Copyright © 2017年 Biao. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BBGridButton;

@protocol GridViewDelegate<NSObject>
-(void)updateHeight:(CGFloat)height;
-(void)clickGridView:(BBGridButton *)item;
@end


@interface BBGridView : UIView

-(instancetype)initWithFrame:(CGRect)frame showGridTitleArray:(NSMutableArray *)showGridTitleArray showImageGridArray:(NSMutableArray *) showImageGridArray showGridIDArray:(NSMutableArray *)showGridIDArray;
@property(nonatomic,assign)id<GridViewDelegate> gridViewDelegate;
-(void)updateNewFrame;
@end
