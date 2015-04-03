//
//  fooddetailViewController.h
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/02/10.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface fooddetailViewController : UIViewController<UIScrollViewDelegate>{
    IBOutlet UIImageView *imageView;
//    UILabel *shopname;
//    UILabel *foodname;
//    UILabel *detail;
//    UIImageView *mapview;
    NSArray *shopimageArray;
    NSArray *shoptextArray;
    NSArray *foodtextArray;
    NSArray *shopdetailtextArray;
    NSArray *mapimageArray;
    IBOutlet UILabel *shopnamelabel;
    IBOutlet UILabel *foodnamelabel;
    IBOutlet UIButton *detailbutton;
    IBOutlet UIButton *mapbutton;
    IBOutlet UIView *underlineView;
    int test;
    __weak IBOutlet UIScrollView *foodDetailScrollView;
}
-(IBAction)tweet;
-(IBAction)facebook;
-(IBAction)detail;
-(IBAction)map;
@end
