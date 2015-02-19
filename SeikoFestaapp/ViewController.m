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

//- (void)selectItemAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated scrollPosition:(UICollectionViewScrollPosition)scrollPosition{
-(void)scrollViewDidEndDecelerating:(UICollecitonview *)collecitonview {
    
    // Calculate where the collection view should be at the right-hand end item
    float contentOffsetWhenFullyScrolledBottom = self.posterCollectionView.frame.size.height * ([self->PosterImageArray count] -1);
    
    if (posterCollectionView.contentOffset.y == contentOffsetWhenFullyScrolledBottom) {
        
        // user is scrolling to the right from the last item to the 'fake' item 1.
        // reposition offset to show the 'real' item 1 at the left-hand end of the collection view
        
        NSIndexPath *newIndexPath = [NSIndexPath indexPathForItem:1 inSection:0];
        
        [self.posterCollectionView scrollToItemAtIndexPath:newIndexPath atScrollPosition:UICollectionViewScrollPositionTop animated:NO];
        
        } else if (posterCollectionView.contentOffset.y == 0) {
            
            // user is scrolling to the left from the first item to the fake 'item N'.
            // reposition offset to show the 'real' item N at the right end end of the collection view
            
            NSIndexPath *newIndexPath = [NSIndexPath indexPathForItem:([self->PosterImageArray count] -2) inSection:0];
            
            [self.posterCollectionView scrollToItemAtIndexPath:newIndexPath atScrollPosition:UICollectionViewScrollPositionTop animated:NO];
            
            }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
