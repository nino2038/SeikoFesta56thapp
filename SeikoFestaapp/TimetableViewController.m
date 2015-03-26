//
//  TimetableViewController.m
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/02/24.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import "TimetableViewController.h"

@interface TimetableViewController ()

@end

@implementation TimetableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // UIScrollViewのインスタンス化
    scrollView = [[UIScrollView alloc]init];
    scrollView.frame = CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height-64);
    
    // 横スクロールのインジケータを非表示にする
    scrollView.showsHorizontalScrollIndicator = NO;
    
    // ページングを有効にする
    scrollView.pagingEnabled = YES;
    scrollView.userInteractionEnabled = YES;
    
    // デリゲートを有効にする
    scrollView.delegate = self;
    
    scrollView.directionalLockEnabled = YES;
    
    scrollView.bounces = NO;
    
    // スクロールの範囲を設定
    [scrollView setContentSize:CGSizeMake((6 * self.view.bounds.size.width), 900)];
    
    UIImageView *timeTable = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 1920, 900)];
    timeTable.image = [UIImage imageNamed:@"Timetable-4-inch.png"];
    timeTable.contentMode = UIViewContentModeScaleToFill;
    
    
    // スクロールビューを貼付ける
    [self.view addSubview:scrollView];
    
    [scrollView addSubview:timeTable];
    
    a = scrollView.contentOffset.x;
    b = scrollView.contentOffset.y;
    
    // UIPageControlのインスタンス化
    CGFloat x = (self.view.bounds.size.width - 300) / 2;
    pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(x, self.view.bounds.size.height-60, 300, 50)];
    
    //ドットの色
    pageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
    pageControl.currentPageIndicatorTintColor = [UIColor blackColor];
    
    // ページ数を設定
    pageControl.numberOfPages = 6;
    
    // 現在のページを設定
    pageControl.currentPage = 0;
    
    // ページコントロールをタップされたときに呼ばれるメソッドを設定
    pageControl.userInteractionEnabled = YES;
    [pageControl addTarget:self
                    action:@selector(pageControl_Tapped:)
          forControlEvents:UIControlEventValueChanged];
    
    // ページコントロールを貼付ける
    [self.view addSubview:pageControl];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(47, 340, 273, 110)];
    [button setImage:[UIImage imageNamed:@"Timetable-Image.png"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(toDetail:) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:button];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)scrollViewWillBeginDragging:(UIScrollView *)_scrollView{
    
    scrollView.pagingEnabled=YES;
    
}
//スクロールされたとき
- (void)scrollViewDidScroll:(UIScrollView *)_scrollView
{
    if ((NSInteger)fmod(scrollView.contentOffset.x , scrollView.frame.size.width) == 0) {
        // ページコントロールに現在のページを設定
        pageControl.currentPage = scrollView.contentOffset.x / scrollView.frame.size.width;
        
    }
    
    
    
}

//ページコントロールがタップされたとき
- (void)pageControl_Tapped:(id)sender
{
    CGRect frame = scrollView.frame;
    frame.origin.x = scrollView.frame.size.width * pageControl.currentPage;
    [scrollView scrollRectToVisible:frame animated:YES];
    
    scrollView.pagingEnabled=YES;
    
}

-(void)toDetail:(UIButton *)button{
    
    [self performSegueWithIdentifier:@"Detail" sender:self];
    
}
-(IBAction)Timetableback{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
