//
//  ExhibitonDetailViewController.h
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/02/14.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExhibitonDetailViewController : UIViewController<UIScrollViewDelegate>{
    IBOutlet UIImageView *imageView;
    IBOutlet UILabel *shopnamelabel;
    IBOutlet UIButton *detailbutton;
    IBOutlet UIButton *mapbutton;
    IBOutlet UIView *underlineView;
    NSArray *shopimageArray;
    NSArray *shoptextArray;
    NSArray *shopdetailtextArray;
    NSArray *mapimageArray;
    __weak IBOutlet UIScrollView *exhibitionDetailScrollView;
}
-(IBAction)tweet;
-(IBAction)facebook;
-(IBAction)detail;
-(IBAction)map;

@end
