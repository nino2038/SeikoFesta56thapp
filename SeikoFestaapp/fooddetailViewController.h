//
//  fooddetailViewController.h
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/02/10.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface fooddetailViewController : UIViewController{
    IBOutlet UIImageView *imageView;
    IBOutlet UILabel *shopname;
    IBOutlet UILabel *foodname;
    IBOutlet UILabel *detail;
    NSArray *shopimageArray;
    NSArray *shoptextArray;
    NSArray *foodtextArray;
    NSArray *shopdetailtextArray;
}

@end
