//
//  exhibitonViewController.h
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/02/04.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface exhibitonViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>{
    NSArray *exhibitionimageArray;
    NSArray *exhibitiontextArray;
}
-(IBAction)Exhibitionback;
@property (weak, nonatomic) IBOutlet UICollectionView *exhibitionCollectionView;



@end
