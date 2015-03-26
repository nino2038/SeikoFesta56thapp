//
//  TimetableViewController.h
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/02/24.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimetableViewController : UIViewController<UIScrollViewDelegate>{
    
    
    UIScrollView *scrollView;
    UIPageControl *pageControl;
    
    int a;
    int b;
    
}
-(IBAction)Timetableback;


@end
