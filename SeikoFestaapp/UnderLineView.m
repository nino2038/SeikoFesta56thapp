//
//  UnderLineView.m
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/03/27.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import "UnderLineView.h"

@implementation UnderLineView
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
- (void)drawRect:(CGRect)rect
{
    // UIBezierPath のインスタンス生成
    UIBezierPath *line = [UIBezierPath bezierPath];
    
    // 起点
    [line moveToPoint:CGPointMake(50,50)];
    
    // 帰着点
    [line addLineToPoint:CGPointMake(220,350)];
    
    // 色の設定
    [[UIColor redColor] setStroke];
    // ライン幅
    line.lineWidth = 2;
    // 描画
    [line stroke];
    
}
@end
