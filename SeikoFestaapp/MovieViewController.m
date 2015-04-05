//
//  MovieViewController.m
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/03/24.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import "MovieViewController.h"
//#import "YTPlayerView.h"

@implementation MovieViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Seiko logo.png"]];
    UILabel *label = [[UILabel alloc] init];
    UILabel *label2 = [[UILabel alloc] init];
    label.font = [UIFont fontWithName:@"HiraKakuProN-W3" size:20];
    label2.font = [UIFont fontWithName:@"HiraKakuProN-W3" size:15];
    label.text = @"+360°-All around";
    label2.text = @"一回りして新しくなった新校舎と　ともに文化祭も進化していると　　いう意味を込めたスローガンに　　なっています";
    label2.lineBreakMode = NSLineBreakByWordWrapping;
    label2.numberOfLines = 0;
    [label2 sizeToFit];
    
    UIScreen *sc = [UIScreen mainScreen];
    CGRect rect = sc.bounds;
    
    if (rect.size.height == 480) {
        imageView.frame = CGRectMake(35, 85, 270, 130);
        label.frame = CGRectMake(30, 260, 300, 30);
        label2.frame = CGRectMake(40, 290, 250, 120);
    } else if (rect.size.height == 568){
        imageView.frame = CGRectMake(35, 105, 270, 130);
        label.frame = CGRectMake(30, 290, 300, 30);
        label2.frame = CGRectMake(40, 320, 250, 120);
    }else if (rect.size.height == 667){
        imageView.frame = CGRectMake(50, 105, 270, 130);
        label.frame = CGRectMake(45, 320, 300, 30);
        label2.frame = CGRectMake(55, 350, 250, 120);
    } else if (rect.size.height == 736){
        imageView.frame = CGRectMake(57, 120, 270, 130);
        label.frame = CGRectMake(80, 370, 300, 20);
        label2.frame = CGRectMake(90, 400, 250, 120);
    }
    
    
    imageView.layer.shadowOffset = CGSizeMake(10.0f, 10.0f);
    imageView.layer.shadowOpacity = 0.5f;
    imageView.layer.shadowColor = [UIColor blackColor].CGColor;
    imageView.layer.shadowRadius = 10.0f;
    
    [self.view addSubview:imageView];
    [self.view addSubview:label];
    [self.view addSubview:label2];
}

/*
 - (void)tapButton:(id)sender
 {
 [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.seiko.ac.jp/"]];
 }
 
 - (void)tapButton2:(id)sender
 {
 [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.seiko.ac.jp/"]];
 }
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
