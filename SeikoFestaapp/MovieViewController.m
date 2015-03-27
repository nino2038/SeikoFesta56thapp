//
//  MovieViewController.m
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/03/24.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import "MovieViewController.h"
#import "YTPlayerView.h"

@implementation MovieViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.playerView loadWithVideoId:@"M7lc1UVf-VE"];

}
@end
