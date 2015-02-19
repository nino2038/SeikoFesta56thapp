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
    
    return cell;
}

-(void)scrollViewDidEndDecelerating:(UICollectionView *)scrollview {
    // Calculate where the collection view should be at the right-hand end item
    float contentOffsetWhenFullyScrolledRight = self.posterCollectionView.frame.size.width * ([self.indexPath.row count] -1);
    if (posterCollectionView.contentOffset.y == contentOffsetWhenFullyScrolledRight) {
        NSIndexPath *newIndexPath = [NSIndexPath indexPathForItem:1 inSection:0];
            [self.posterCollectionView scrollToItemAtIndexPath:newIndexPath atScrollPosition:UICollectionViewScrollPositionLeft animated:NO];
    } else if (posterCollectionView.contentOffset.y == 0) {
                    NSIndexPath *newIndexPath = [NSIndexPath indexPathForItem:([self.dataArray count] -2) inSection:0];
                    [self.posterCollectionView scrollToItemAtIndexPath:newIndexPath atScrollPosition:UICollectionViewScrollPositionLeft animated:NO];
}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
