//
//  ViewController.h
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2014/07/26.
//  Copyright (c) 2014年 SatoshiNinomiya. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>
{
    IBOutlet UICollectionView *Poster;
    NSMutableArray *imageArray;//ポスター用の配列;
}

@end
