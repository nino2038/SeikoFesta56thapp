//
//  ViewController.h
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2014/07/26.
//  Copyright (c) 2014年 SatoshiNinomiya. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>
{
    NSArray *PosterImageArray;//ポスター用の配列;
}
@property (weak, nonatomic) IBOutlet UICollectionView *posterCollectionView;

@end

