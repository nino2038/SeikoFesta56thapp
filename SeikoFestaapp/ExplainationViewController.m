//
//  ExplainationViewController.m
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/03/24.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import "ExplainationViewController.h"

@implementation ExplainationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"聖光祭アイコン.png"]];
    UILabel *label = [[UILabel alloc] init];
    UILabel *label2 = [[UILabel alloc] init];
    UILabel *label3 = [[UILabel alloc] init];
    UILabel *label4 = [[UILabel alloc] init];
    label.font = [UIFont fontWithName:@"HiraKakuProN-W3" size:17];
    label2.font = [UIFont fontWithName:@"HiraKakuProN-W3" size:17];
    label3.font = [UIFont fontWithName:@"HiraKakuProN-W3" size:17];
    label4.font = [UIFont fontWithName:@"HiraKakuProN-W3" size:17];
    label.text = @"聖光祭ホームページ";
    label2.text = @"聖光生徒会ホームページ";
    label3.text = @"製作者";
    label4.text = @"二宮　啓、増田 大祐、今成 優矢";
    
    UITextView *button = [[UITextView alloc] init];
    UITextView *button2 = [[UITextView alloc] init];
    button.font = [UIFont fontWithName:@"HiraKakuProN-W3" size:17];
    button2.font = [UIFont fontWithName:@"HiraKakuProN-W3" size:17];
    button.dataDetectorTypes = UIDataDetectorTypeAll;
    button2.dataDetectorTypes = UIDataDetectorTypeAll;
    button.editable=NO;
    button2.editable=NO;
    button.text = @"http://www.seiko.ac.jp/";
    button2.text = @"http://www.seiko.ac.jp/";
    /*
     [button setTitle:@"http://www.seiko.ac.jp/" forState:UIControlStateNormal];
     [button setTitle:@"http://www.seiko.ac.jp/" forState:UIControlStateHighlighted];
     [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
     [button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
     [button addTarget:self action:@selector(tapButton:) forControlEvents:UIControlEventTouchUpInside];
     [button2 setTitle:@"http://www.seiko.ac.jp/" forState:UIControlStateNormal];
     [button2 setTitle:@"http://www.seiko.ac.jp/" forState:UIControlStateHighlighted];
     [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
     [button2 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
     [button2 addTarget:self action:@selector(tapButton:) forControlEvents:UIControlEventTouchUpInside];
     */
    
    UIScreen *sc = [UIScreen mainScreen];
    CGRect rect = sc.bounds;
    
    if (rect.size.height == 480) {
        imageView.frame = CGRectMake(85, 85, 150, 150);
        label.frame = CGRectMake(30, 270, 300, 30);
        button.frame = CGRectMake(55, 300, 300, 30);
        label2.frame = CGRectMake(30, 340, 300, 30);
        button2.frame = CGRectMake(55, 370, 300, 30);
        label3.frame = CGRectMake(30, 410, 300, 30);
        label4.frame = CGRectMake(55, 440, 300, 30);
    } else if (rect.size.height == 568){
        imageView.frame = CGRectMake(85, 105, 150, 150);
        label.frame = CGRectMake(30, 300, 300, 30);
        button.frame = CGRectMake(55, 330, 300, 30);
        label2.frame = CGRectMake(30, 390, 300, 30);
        button2.frame = CGRectMake(55, 420, 300, 30);
        label3.frame = CGRectMake(30, 480, 300, 30);
        label4.frame = CGRectMake(55, 510, 300, 30);
    }
    
    
    else if (rect.size.height == 667){
        imageView.frame = CGRectMake(100, 105, 175, 175);
        label.frame = CGRectMake(45, 330, 300, 30);
        button.frame = CGRectMake(75, 360, 300, 30);
        label2.frame = CGRectMake(45, 430, 300, 30);
        button2.frame = CGRectMake(75, 460, 300, 30);
        label3.frame = CGRectMake(45, 530, 300, 30);
        label4.frame = CGRectMake(75, 560, 300, 30);
    } else if (rect.size.height == 736){
        imageView.frame = CGRectMake(107, 120, 200, 200);
        label.frame = CGRectMake(80, 380, 300, 20);
        button.frame = CGRectMake(110, 410, 300, 30);
        label2.frame = CGRectMake(80, 480, 300, 20);
        button2.frame = CGRectMake(110, 510, 300, 30);
        label3.frame = CGRectMake(80, 580, 300, 20);
        label4.frame = CGRectMake(110, 610, 300, 20);
    }
    
    
    imageView.layer.shadowOffset = CGSizeMake(10.0f, 10.0f);
    imageView.layer.shadowOpacity = 0.5f;
    imageView.layer.shadowColor = [UIColor blackColor].CGColor;
    imageView.layer.shadowRadius = 10.0f;
    
    [self.view addSubview:imageView];
    [self.view addSubview:label];
    [self.view addSubview:label2];
    [self.view addSubview:label3];
    [self.view addSubview:label4];
    [self.view addSubview:button];
    [self.view addSubview:button2];
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
