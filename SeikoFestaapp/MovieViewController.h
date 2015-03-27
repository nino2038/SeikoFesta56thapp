//
//  MovieViewController.h
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/03/24.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YTPlayerView.h"

@interface MovieViewController : UIViewController<YTPlayerViewDelegate>
@property(nonatomic,strong)IBOutlet YTPlayerView *playerView;
@end
