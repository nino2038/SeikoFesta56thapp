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
//    InfinitePagingView *pagingView = [[InfinitePagingView alloc] initWithFrame:self.view.bounds];
//    pagingView.frame = CGRectMake(169,227,149,332);
//    
//    /* サブビュー作成 */
//    UIImage *image1 = [UIImage imageNamed:@"ポスター素材.png"];
//    UIImage *image2 = [UIImage imageNamed:@"ポスター素材.png"];
//    UIImage *image3 = [UIImage imageNamed:@"ポスター素材.png"];
//    UIImage *image4 = [UIImage imageNamed:@"ポスター素材.png"];
//    UIImage *image5 = [UIImage imageNamed:@"ポスター素材.png"];
//    UIImageView *page1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 149, 210)];
//    UIImageView *page2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 149, 210)];
//    UIImageView *page3 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 149, 210)];
//    UIImageView *page4 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 149, 210)];
//    UIImageView *page5 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 149, 210)];
//    page1.image=image1;
//    page2.image=image2;
//    page3.image=image3;
//    page4.image=image4;
//    page5.image=image5;
//    /* スクロール方向を垂直に指定 */
//    pagingView.scrollDirection = InfinitePagingViewVerticalScrollDirection;
//    /* ページとして追加 */
//    [pagingView addPageView:page1];
//    [pagingView addPageView:page2];
//    [pagingView addPageView:page3];
//    [pagingView addPageView:page4];
//    [pagingView addPageView:page5];
//    pagingView.contentMode=UIViewContentModeScaleToFill;
//    pagingView.pageSize = CGSizeMake(149.f, 210.f);
//    
//    [self.view addSubview:pagingView];
    
}

//#pragma mark -collection view delegate
//- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
//{
//    return 1;
//}
//
//-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
//    return 3;
//}
//
//-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
//    
//    PosterCell *cell=(PosterCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
//    cell.image.image=[UIImage imageNamed:PosterImageArray[indexPath.row]];
//    
//    return cell;
//    
//}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
