//
//  AccessViewController.h
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/03/25.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AccessViewController : UIViewController<UIGestureRecognizerDelegate>{
    IBOutlet UIImageView *accessView;
    float _scale;
    CGAffineTransform _currentTransform;
    BOOL _isMoving;
}
-(IBAction)accessBack;

@end
