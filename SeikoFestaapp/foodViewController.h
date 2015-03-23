//
//  exhibitonViewController.h
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/02/04.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface foodViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>{
    NSArray *foodimageArray;
    NSArray *foodtextArray;
    NSArray *fooddetailtextArray;
    UIImage *img;
}

@property (weak, nonatomic) IBOutlet UICollectionView *foodCollectionView;


@end
