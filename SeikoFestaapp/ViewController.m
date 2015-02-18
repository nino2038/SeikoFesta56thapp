//
//  ViewController.m
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2014/07/26.
//  Copyright (c) 2014年 SatoshiNinomiya. All rights reserved.
//

#import "ViewController.h"
#import "PosterCell.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize posterCollectionView;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.navigationController setNavigationBarHidden:YES animated:YES];//navigationBar非表示
    //[self.CollectionView setScrollBarHidden:YES animated:YES];//navigationBar非表示
    [posterCollectionView setDataSource:self];
    [posterCollectionView setDelegate:self];
    PosterImageArray=[[NSArray alloc]initWithObjects:
                      @"ゲリラダンス.png",
                      @"ゲリラダンス.png",
                      @"ゲリラダンス.png",
                      nil];
}
#pragma mark -collection view delegate
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 3;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    PosterCell *cell=(PosterCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.image.image=[UIImage imageNamed:PosterImageArray[indexPath.row]];
    //if (collectionView.numberOfSections == indexPath.section + 1){
      //  self.posterCollectionView.cell.image.image=[[UICollectionView alloc] initWithFrame:CGRectMake(163, 212, 153, 348)];
    //}
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
