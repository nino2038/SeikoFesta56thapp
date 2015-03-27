//
//  fooddetailViewController.m
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/02/10.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import "fooddetailViewController.h"
#import <Social/Social.h>
//#import "UnderLineView.h"

@implementation fooddetailViewController
- (void) drawRect : (CGRect)rect {
    // create bezierPath instance
    UIBezierPath *aPath = [UIBezierPath bezierPath];
    
    // set render color and style
    [[UIColor blackColor] setStroke];
    aPath.lineWidth = 5;
    
    // set start point
    [aPath moveToPoint:CGPointMake(100, 0)];
    
    //draw line
    [aPath addLineToPoint:CGPointMake(200, 40)];
    [aPath addLineToPoint:CGPointMake(160, 140)];
    [aPath addLineToPoint:CGPointMake(40, 140)];
    [aPath addLineToPoint:CGPointMake(0, 40)];
    
    // close path so that successed to create pentagon.
    [aPath closePath];
    
    //rendering
    [aPath stroke];
}

-(void)viewDidLoad{
    [super viewDidLoad];
    [detailbutton setTitleColor:[UIColor blueColor]forState:UIControlStateNormal];
    [mapbutton setTitleColor:[UIColor redColor]forState:UIControlStateNormal];

    //[UINavigationBar appearance].barTintColor = [UIColor clearColor];
    [ UIApplication sharedApplication ].statusBarHidden = YES;
    shopimageArray=[[NSArray alloc] initWithObjects:
                    @"食品横長画像-01.png",
                    @"食品横長画像-02.png",
                    @"食品横長画像-03.png",
                    @"食品横長画像-04.png",
                    @"食品横長画像-05.png",
                    @"食品横長画像-06.png",
                    @"食品横長画像-07.png",
                    @"食品横長画像-08.png",
                    @"食品横長画像-09.png",
                    @"食品横長画像-10.png",
                    @"食品横長画像-11.png",
                    @"食品横長画像-12.png",
                    @"食品横長画像-13.png",
                    @"食品横長画像-14.png",
                    @"食品横長画像-15.png",
                    @"食品横長画像-16.png",
                    @"食品横長画像-17.png",
                    @"",
                    nil];
    mapimageArray=[[NSArray alloc] initWithObjects:
                   @"食品横長画像-01.png",
                   @"食品横長画像-02.png",
                   @"食品横長画像-03.png",
                   @"食品横長画像-04.png",
                   @"食品横長画像-05.png",
                   @"食品横長画像-06.png",
                   @"食品横長画像-07.png",
                   @"食品横長画像-08.png",
                   @"食品横長画像-09.png",
                   @"食品横長画像-10.png",
                   @"食品横長画像-11.png",
                   @"食品横長画像-12.png",
                   @"食品横長画像-13.png",
                   @"食品横長画像-14.png",
                   @"食品横長画像-15.png",
                   @"食品横長画像-16.png",
                   @"食品横長画像-17.png",
                   @"",
                   nil];
    shoptextArray=[[NSArray alloc] initWithObjects:
                   @"麺's RUNRUN",
                   @"三代目J Sauce Brothers",
                   @"俺のケバブ",
                   @"鉄板職人",
                   @"朱雀猛豪炎",
                   @"Frank Furters",
                   @"王のたこ焼き",
                   @"餃子　昇龍軒",
                   @"クレープブレーク",
                   @"氷菓",
                   @"綿あめふわりぃ",
                   @"オアシス",
                   @"ＳＥＩＫＯ　ＰＯＰ",
                   @"Ｊｕｉｃｙ　Ｊｕｉｃｅｒ",
                   @"題名のない音楽喫茶",
                   @"駅弁",
                   @"魅惑のワッフル",
                   @"",
                   nil];
    foodtextArray=[[NSArray alloc]initWithObjects:
                   @"塩焼きそば",
                   @"ソース焼きそば",
                   @"ケバブ",
                   @"お好み焼き",
                   @"焼き鳥",
                   @"フランクフルト",
                   @"たこ焼き",
                   @"餃子",
                   @"クレープ",
                   @"かき氷",
                   @"わたあめ",
                   @"ドリンク",
                   @"ポップコーン",
                   @"スムージー",
                   @"喫茶店",
                   @"駅弁",
                   @"ワッフル",
                   @"",
                   nil];
    shopdetailtextArray=[[NSArray alloc] initWithObjects:
                         @"二年連続売り上げ一位を獲得した圧倒的実力を持つ職人達の匠の技をご賞味あれ。絶対に満足させます。",
                         @"初代、二代目からの魂を受け継ぎ、熱意を込めて焼きあげます。聖光のソース焼きそば味で勝負！後悔はさせません。",
                         @"今年もあの店が聖光祭にやってくる…。ケバブ専門店『俺のケバブ』！ケバブを食べずに聖光祭は終われない？！",
                         @"新生「鉄板職人」！先代から受け継いだ究極のお好み焼きで貴方を唸らせる。これを食べずに帰るとは…",
                         @"毎年進化を続ける焼き鳥がさらに進化！溢れる笑顔がここにある！ジューシーな焼き鳥を食べに来てください！",
                         @"肉の旨みが溢れ出す美味しすぎるフランクフルト‼‼食べないなんて勿体ない！是非一度ご賞味あれ！！！",
                         @"？？？？「うまいっ…！うますぎるっ…！犯罪的だっ…！涙が出るっ…！」ぜひご賞味あれ！！",
                         @"今年は聖光祭に餃子が殴り込み！パリパリあつあつ餃子！この突き上げるおいしさ、是非一度ご賞味あれ！",
                         @"聖光祭名物のクレープでほっと一休み、いかがですか？",
                         @"夏の暑さ…聖光生の発する熱気…全てを冷やし尽すものがここにある",
                         @"その軽さ、綿の如しその柔らかさ、絹の如しこれぞ綿あめの中の綿あめ！ぜひ聖光の綿あめをご賞味あれ",
                         @"喉の渇きを覚えたそこのあなた！豊富なドリンクと共にあなたの来店を待っています！",
                         @"是非聖光祭のお供に!たくさんの味を用意してお待ちしております。",
                         @"去年大人気のスムージーが聖光祭に再登場！聖光生手作りのスムージーを是非一度　ご賞味あれ！！",
                         @"聖光祭の熱気から離れて、音楽と共に過ごすティータイムはいかがでしょうか。",
                         @"毎年恒例の駅弁販売、今年も各地の駅弁をご用意しました。詳細は、○,○ページをご覧下さい。",
                         @"聖光祭を楽しんでいる皆さんを甘い香りと優しい感触で包み込むでしょう。是非お越し下さい。",
                         @"",
                         nil];
    
    NSUserDefaults *foodpathdata = [NSUserDefaults standardUserDefaults];
    NSInteger foodpathnumber=[foodpathdata integerForKey:@"foodindexpath"];
    //NSLog(@"int:%ld", (long)pathnumber);
    UILabel *shopname = [[UILabel alloc] initWithFrame:CGRectMake(0,0,160,30)];
    UILabel *foodname = [[UILabel alloc] initWithFrame:CGRectMake(160,0,160,30)];
    UITextView *detail = [[UITextView alloc] initWithFrame:CGRectMake(0,0,320,320)];
    detail.editable = NO;
    detail.font =[UIFont fontWithName:@"HiraKakuProN-W3" size:16];
    UIImageView *mapview=[[UIImageView alloc] initWithFrame:CGRectMake(320,0,320,305)];
    imageView.image=[UIImage imageNamed:shopimageArray[foodpathnumber]];
    shopnamelabel.text=[NSString stringWithFormat:shoptextArray[foodpathnumber]];
    foodnamelabel.text=[NSString stringWithFormat:foodtextArray[foodpathnumber]];
    detail.text=[NSString stringWithFormat:shopdetailtextArray[foodpathnumber]];
    mapview.image=[UIImage imageNamed:mapimageArray[foodpathnumber]];
    UIView *foodDetailTextView = [[UIView alloc] initWithFrame:CGRectMake(0,0,320,305)];
    UIView *foodDetailMapView = [[UIView alloc] initWithFrame:CGRectMake(320,0,320,305)];
    [foodDetailTextView addSubview:mapview];
    //[foodDetailTextView addSubview:shopname];
    //[foodDetailTextView addSubview:foodname];
    [foodDetailTextView addSubview:detail];
    foodDetailTextView.backgroundColor = [UIColor redColor];
   // foodDetailMapView.backgroundColor=[UIColor blueColor];
    [foodDetailScrollView addSubview:foodDetailTextView];
    [foodDetailScrollView addSubview:foodDetailMapView];
    foodDetailScrollView.scrollEnabled = YES;
    [foodDetailScrollView setContentSize:CGSizeMake(320 * 2.0f, 290)];
    foodDetailScrollView.delegate=self;
    foodDetailScrollView.clipsToBounds = NO;
}

- (void)viewWillAppear:(BOOL)animated {
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.translucent=YES;
    
    if (self.navigationController.navigationBar.backgroundColor == [UIColor redColor]) {
        self.navigationController.navigationBar.backgroundColor = [UIColor clearColor];
    }
}
 

- (void)viewWillDisappear:(BOOL)animated {
    self.navigationController.navigationBar.backgroundColor = [UIColor redColor];
    [ UIApplication sharedApplication ].statusBarHidden = NO;
    self.navigationController.navigationBar.translucent=NO;

  //  [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
}



- (void)scrollViewDidScroll:(UIScrollView *)scrollView;{
    CGFloat page=round(scrollView.contentOffset.x/scrollView.frame.size.width);
    
    if ((int)page==0) {
        [detailbutton setTitleColor:[UIColor redColor]forState:UIControlStateNormal];
        [mapbutton setTitleColor:[UIColor blueColor]forState:UIControlStateNormal];
        [UIView animateWithDuration:0.3f
                              delay:0
                            options:UIViewAnimationOptionCurveEaseInOut
                         animations:^{
                             underlineView.transform =
                             CGAffineTransformMakeTranslation(0,0);
                         } completion:^(BOOL finished) {
                             // アニメーシ~ョンが終わった後実行する処理
                         }];
    }else if((int)page==1){
        [detailbutton setTitleColor:[UIColor blueColor]forState:UIControlStateNormal];
        [mapbutton setTitleColor:[UIColor redColor]forState:UIControlStateNormal];
        [UIView animateWithDuration:0.3f
                              delay:0
                            options:UIViewAnimationOptionCurveEaseInOut
                         animations:^{
                             underlineView.transform =
                             CGAffineTransformMakeTranslation(160,0);
                         } completion:^(BOOL finished) {
                             // アニメーシ~ョンが終わった後実行する処理
                         }];
    }
   //NSLog(@"%f",page);

}
-(IBAction)detail{
    NSLog(@"push detail");
    CGPoint offset;
    
    offset.x = 0.0f;
    offset.y = 0.0f;
    [UIView animateWithDuration:0.3f
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         underlineView.transform =
                         CGAffineTransformMakeTranslation(0,0);
                     } completion:^(BOOL finished) {
                         // アニメーシ~ョンが終わった後実行する処理
                     }];
    
    [foodDetailScrollView setContentOffset:offset animated:YES];
}
-(IBAction)map{
    NSLog(@"push map");
    CGPoint offset;
    
    offset.x = 320.0f;
    offset.y = 0.0f;
    [UIView animateWithDuration:0.3f
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         underlineView.transform =
                         CGAffineTransformMakeTranslation(160,0);
                     } completion:^(BOOL finished) {
                         // アニメーシ~ョンが終わった後実行する処理
                     }];
    [foodDetailScrollView setContentOffset:offset animated:YES];
}
- (IBAction)tweet
{
    SLComposeViewController *twvc = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    
    [twvc setInitialText:[NSString stringWithFormat:@"%@にいってきました", shopnamelabel.text]];
    [twvc addURL:[NSURL URLWithString:@"URL"]];
    [self presentViewController:twvc animated:YES completion:nil];
    
    [twvc setCompletionHandler:^(SLComposeViewControllerResult result){
        // 結果判定
        switch (result) {
            case SLComposeViewControllerResultDone:
                break;
            case SLComposeViewControllerResultCancelled:

                break;
            default:
                break;
        }
    
        // 投稿用ビューコントローラからの復帰設定
    }];
}
-(IBAction)facebook{
    SLComposeViewController *facebookPostVC=[SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    [facebookPostVC setInitialText:[NSString stringWithFormat:@"%@にいってきました", shopnamelabel.text]];
    [self presentViewController:facebookPostVC animated:YES completion:nil];
}
//- (IBAction)postTwitter:(id)sender {
//    NSString* postContent = [NSString stringWithFormat:@"aaaa"];
//    //NSURL* appURL = [NSURL URLWithString:_entry.link];
//    // =========== iOSバージョンで、処理を分岐 ============
//    // iOS Version
//    //NSString *iosVersion = [[[UIDevice currentDevice] systemVersion] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
//    // Social.frameworkを使う
//    SLComposeViewController *twitterPostVC = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
//    [twitterPostVC setInitialText:postContent];
//    //[twitterPostVC addURL:appURL]; // アプリURL
//    [self presentViewController:twitterPostVC animated:YES completion:nil];
//    
//    // Twitter.frameworkを使う
//}
//-(int)getcurrentViewPageIndex{
//    CGFloat page=round(foodDetailScrollView.contentOffset.x/foodDetailScrollView.frame.size.width);
//    return page;
//}

-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

@end
