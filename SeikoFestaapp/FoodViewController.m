//
//  FoodViewController.m
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/02/03.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import "FoodViewController.h"

@implementation FoodViewController
@synthesize foodCollectionView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [foodCollectionView setDataSource:self];
    [foodCollectionView setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -collection view delegate

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    //とりあえずセクションは2つ
    return 2;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    if(section==0){//セクション0には５個
        return 5;
    }else if(section==1){ //セクション1には7個
        return 7;
    }else{
        return 0;
    }
}

@end
