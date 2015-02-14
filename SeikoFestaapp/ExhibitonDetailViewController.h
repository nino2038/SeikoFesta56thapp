//
//  ExhibitonDetailViewController.h
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/02/14.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExhibitonDetailViewController : UIViewController{
    IBOutlet UIImageView *imageView;
    IBOutlet UILabel *shopname;
    IBOutlet UILabel *detail;
    NSArray *shopimageArray;
    NSArray *shoptextArray;
    NSArray *shopdetailtextArray;
}

@end
