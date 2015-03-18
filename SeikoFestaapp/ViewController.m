//
//  ViewController.m
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2014/07/26.
//  Copyright (c) 2014年 SatoshiNinomiya. All rights reserved.
//

#import "ViewController.h"
#import "PosterCell.h"
#import "MBInfiniteScrollCollectionViewLayout.h"
#import "InfinitePagingView.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize MBInfiniteScrollCollectionView;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.navigationController setNavigationBarHidden:YES animated:YES];//navigationBar非表示
    InfinitePagingView *pagingView = [[InfinitePagingView alloc] initWithFrame:self.view.bounds];
    pagingView.frame = CGRectMake(171,227,149,332);
    
    /* サブビュー作成 */
    UIImage *image1 = [UIImage imageNamed:@"ゲリラダンス.png"];
    UIImage *image2 = [UIImage imageNamed:@"ゲリラダンス.png"];
    UIImage *image3 = [UIImage imageNamed:@"ゲリラダンス.png"];
    UIImage *image4 = [UIImage imageNamed:@"ゲリラダンス.png"];
    UIImage *image5 = [UIImage imageNamed:@"ゲリラダンス.png"];
    UIImageView *page1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 149, 210)];
    UIImageView *page2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 149, 210)];
    UIImageView *page3 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 149, 210)];
    UIImageView *page4 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 149, 210)];
    UIImageView *page5 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 149, 210)];
    page1.image=image1;
    page2.image=image2;
    page3.image=image3;
    page4.image=image4;
    page5.image=image5;
    
    page1.contentMode=UIViewContentModeScaleToFill;
  
    //pagingView.pageSize = CGSizeMake(120.f, 100.f);
    /* スクロール方向を垂直に指定 */
    pagingView.scrollDirection = InfinitePagingViewVerticalScrollDirection;
    /* ページとして追加 */
    [pagingView addPageView:page1];
    [pagingView addPageView:page2];
    [pagingView addPageView:page3];
    [pagingView addPageView:page4];
    [pagingView addPageView:page5];
    pagingView.contentMode=UIViewContentModeScaleToFill;
    pagingView.pageSize = CGSizeMake(149.f, 210.f);
    
    [self.view addSubview:pagingView];

    /*[MBInfiniteScrollCollectionView setDataSource:self];
    [MBInfiniteScrollCollectionView setDelegate:self];
    PosterImageArray=[[NSArray alloc]initWithObjects:
                      @"ゲリラダンス.png",
                      @"ゲリラダンス.png",
                      @"ゲリラダンス.png",
                      nil];
    MBInfiniteScrollCollectionViewLayout *layout = (MBInfiniteScrollCollectionViewLayout *)self.MBInfiniteScrollCollectionView.collectionViewLayout;
    layout.xnum = 1;
    layout.ynum = 3;*/
    
//    [self setupDataForCollectionView];
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
/*-(void)setupDataForCollectionView {
    // Grab references to the first and last items
    // They're typed as id so you don't need to worry about what kind
    // of objects the originalArray is holding
    id firstItem = PosterImageArray[0];
    id lastItem = [PosterImageArray lastObject];
    
    NSMutableArray *workingArray = [PosterImageArray mutableCopy];
    
    // Add the copy of the last item to the beginning
    [workingArray insertObject:lastItem atIndex:0];
    
    // Add the copy of the first item to the end
    [workingArray addObject:firstItem];
    
    dataArray = [NSArray arrayWithArray:workingArray];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    // Calculate where the collection view should be at the right-hand end item
    //float contentOffsetWhenFullyScrolledBottom = self.posterCollectionView.frame.size.height * ([dataArray count] -1);
    
    if (posterCollectionView.contentOffset.y == 348) {
        
        // user is scrolling to the right from the last item to the 'fake' item 1.
        // reposition offset to show the 'real' item 1 at the left-hand end of the collection view
        
        NSIndexPath *newIndexPath = [NSIndexPath indexPathForItem:1 inSection:0];
        
        [self.posterCollectionView scrollToItemAtIndexPath:newIndexPath atScrollPosition:UICollectionViewScrollPositionTop animated:NO];
        
    } else if (posterCollectionView.contentOffset.y == 0)  {
        
        // user is scrolling to the left from the first item to the fake 'item N'.
        // reposition offset to show the 'real' item N at the right end end of the collection view
        
        NSIndexPath *newIndexPath = [NSIndexPath indexPathForItem:([dataArray count] -2) inSection:0];
        
        [self.posterCollectionView scrollToItemAtIndexPath:newIndexPath atScrollPosition:UICollectionViewScrollPositionBottom animated:NO];
        
    }
}
-(void)collectionViewDidEndDecelerating:(UICollectionview *)collectionview {
    
    // Calculate where the collection view should be at the right-hand end item
    float contentOffsetWhenFullyScrolledBottom = self.posterCollectionView.frame.size.height * ([dataArray count] -1);
    
    if (posterCollectionView.contentOffset.y == contentOffsetWhenFullyScrolledBottom) {
        
        // user is scrolling to the right from the last item to the 'fake' item 1.
        // reposition offset to show the 'real' item 1 at the left-hand end of the collection view
        
        NSIndexPath *newIndexPath = [NSIndexPath indexPathForItem:1 inSection:0];
        
        [self.posterCollectionView scrollToItemAtIndexPath:newIndexPath atScrollPosition:UICollectionViewScrollPositionTop animated:NO];
        
    } else if (posterCollectionView.contentOffset.y == 0)  {
        
        // user is scrolling to the left from the first item to the fake 'item N'.
        // reposition offset to show the 'real' item N at the right end end of the collection view
        
        NSIndexPath *newIndexPath = [NSIndexPath indexPathForItem:([dataArray count] -2) inSection:0];
        
        [self.posterCollectionView scrollToItemAtIndexPath:newIndexPath atScrollPosition:UICollectionViewScrollPositionTop animated:NO];
        
    }
}*/


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
