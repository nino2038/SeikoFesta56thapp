//
//  FoodViewController.h
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/02/03.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoodViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *foodCollectionView;


@end
