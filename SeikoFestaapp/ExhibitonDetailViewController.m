//
//  ExhibitonDetailViewController.m
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/02/14.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import "ExhibitonDetailViewController.h"
#import <Social/Social.h>


@implementation ExhibitonDetailViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    [detailbutton setTitleColor:[UIColor blueColor]forState:UIControlStateNormal];
    [mapbutton setTitleColor:[UIColor redColor]forState:UIControlStateNormal];
    [UIApplication sharedApplication ].statusBarHidden = YES;
    shopimageArray=[[NSArray alloc] initWithObjects:
                    @"アプリ趣味研素材-01",
                    @"アプリ趣味研素材-02",
                    @"アプリ趣味研素材-03",
                    @"アプリ趣味研素材-04",
                    @"アプリ趣味研素材-05",
                    @"アプリ趣味研素材-06",
                    @"アプリ趣味研素材-07",
                    @"アプリ趣味研素材-08",
                    @"アプリ趣味研素材-09",
                    @"アプリ趣味研素材-10",
                    @"アプリ趣味研素材-11",
                    @"アプリ趣味研素材-12",
                    @"アプリ趣味研素材-13",
                    @"アプリ趣味研素材-14",
                    @"アプリ趣味研素材-15",
                    @"アプリ趣味研素材-16",
                    @"アプリ趣味研素材-17",
                    @"アプリ趣味研素材-18",
                    @"アプリ趣味研素材-19",
                    @"アプリ趣味研素材-20",
                    @"アプリ趣味研素材-21",
                    @"アプリ趣味研素材-22",
                    @"アプリ趣味研素材-24",
                    @"アプリ趣味研素材-25",
                    @"アプリ趣味研素材-26",
                    @"アプリ趣味研素材-27",
                    @"アプリ趣味研素材-28",
                    @"アプリ趣味研素材-29",
                    @"アプリ趣味研素材-30",
                    @"アプリ趣味研素材-31",
                    @"アプリ趣味研素材-32",
                    @"アプリ趣味研素材-33",
                    @"アプリ趣味研素材-34",
                    @"アプリ趣味研素材-35",
                    @"アプリ趣味研素材-36",
                    @"アプリ趣味研素材-37",
                    @"アプリ趣味研素材-38",
                    @"アプリ趣味研素材-39",
                    @"アプリ趣味研素材-40",
                    @"アプリ趣味研素材-41",
                    @"",
                    nil];
    mapimageArray=[[NSArray alloc] initWithObjects:
                    @"地図テスト.png",
                    @"アプリ趣味研素材-02",
                    @"アプリ趣味研素材-03",
                    @"アプリ趣味研素材-04",
                    @"アプリ趣味研素材-05",
                    @"アプリ趣味研素材-06",
                    @"アプリ趣味研素材-07",
                    @"アプリ趣味研素材-08",
                    @"アプリ趣味研素材-09",
                    @"アプリ趣味研素材-10",
                    @"アプリ趣味研素材-11",
                    @"アプリ趣味研素材-12",
                    @"アプリ趣味研素材-13",
                    @"アプリ趣味研素材-14",
                    @"アプリ趣味研素材-15",
                    @"アプリ趣味研素材-16",
                    @"アプリ趣味研素材-17",
                    @"アプリ趣味研素材-18",
                    @"アプリ趣味研素材-19",
                    @"アプリ趣味研素材-20",
                    @"アプリ趣味研素材-21",
                    @"アプリ趣味研素材-22",
                    @"アプリ趣味研素材-24",
                    @"アプリ趣味研素材-25",
                    @"アプリ趣味研素材-26",
                    @"アプリ趣味研素材-27",
                    @"アプリ趣味研素材-28",
                    @"アプリ趣味研素材-29",
                    @"アプリ趣味研素材-30",
                    @"アプリ趣味研素材-31",
                    @"アプリ趣味研素材-32",
                    @"アプリ趣味研素材-33",
                    @"アプリ趣味研素材-34",
                    @"アプリ趣味研素材-35",
                    @"アプリ趣味研素材-36",
                    @"アプリ趣味研素材-37",
                    @"アプリ趣味研素材-38",
                    @"アプリ趣味研素材-39",
                    @"アプリ趣味研素材-40",
                    @"アプリ趣味研素材-41",
                    @"",
                    nil];
    shoptextArray=[[NSArray alloc] initWithObjects:
                   @"将棋の間",
                   @"物理化学部",
                   @"Seikomp3",
                   @"Origin",
                   @"OCG研究会",
                   @"お菓子処『さくら』",
                   @"横浜萬才フィルム",
                   @"Trick×Hark",
                   @"生物部",
                   @"聖書研究会",
                   @"早打ちジョニー",
                   @"美術部",
                   @"古本市",
                   @"交通研究部",
                   @"ポケモンセンターSeiko",
                   @"地学天文学部",
                   @"ミャンマーからの便り",
                   @"地理歴史巡検部",
                   @"数学研究会",
                   @"題名のない音楽喫茶",
                   @"ぶいえいす",
                   @"英語劇",
                   @"魔女の卓球便",
                   @"Wanted",
                   @"クイズ研究会",
                   @"高３英語劇",
                   @"生徒会展示",
                   @"盲目の目",
                   @"山手の森　ジブリ研究室",
                   @"あにけん！",
                   @"ベイスボール友の会",
                   @"コントさん×演劇物語",
                   @"英語道楽",
                   @"宇宙戦艦ヤマト研究会",
                   @"俊造チャレンジ",
                   @"コンピュータ部",
                   @"文映会",
                   @"７７枚目のジョーカー",
                   @"Brains",
                   @"スケットバスケット",
                   @"VS聖光",
                   nil];
    shopdetailtextArray=[[NSArray alloc]initWithObjects:
                         @"今年は一風変わった和室での開催。囲碁将棋部員との真剣な勝負をお楽しみください。（今年も飴は配ります）",
                         @"保留",
                         @"美しい手捌きと巧みな言葉によって心を奪われるでしょう。壁ドンよりも魅力的な空間へぜひ来て見ては？",
                         @"Title :Seiko.mp3 Artist:Seiko DTM Club Place :（場所が決まったら入れてください） Please listen to our music!!",
                         @"あなたの『折り紙観』を変える、ちょっぴりオトナな美術館。",
                         @"遊戯王やデュエルマスターズなどたくさんのカードゲームについて展示してます。カードゲームならここへ！",
                         @"2020年に迫った東京オリンピック。今回は競技体験に加え表彰台レプリカを作成。主役は君だ！",
                         @"被災地のお菓子を販売中！ 休憩スペースもありますので疲れた足に一休みを！",
                         @"アンパンマン、食パンマン、カレーパンマン、ジャムおじマン、サンドウィッチマン、バナナマン、横濱萬…",
                         @"聖光祭の定番といったらマジック！あなたに不思議な時間をお届けします。未知の世界への扉が今開かれる…",
                         @"エビや魚、クワガタ、猪の頭の骨などを展示しています。部誌の頒布もしているので、是非来てください。",
                         @"例年人気の制服試着はもちろん、キリスト教クイズも行ってます。ぜひお越し下さい。",
                         @"赤外線銃で聖光生と撃ち合う体験型シューティングゲーム。子供から大人まで楽しめます。",
                         @"聖光学院において長い伝統を誇る美術部の部員がこの１年で製作した作品の展示を行ってます。",
                         @"ひょっとしたら欲しい本が見つかるかもしれない！　古本売ってます。見に来て下さい！",
                         @"今年の模型はダイナミック！部員たちの熱意のこもった研究展示と巨大鉄道模型ジオラマをとくとご覧あれ！",
                         @"5thを迎えたポケセン。その活動はついに世界大会へ!?こころぴょんぴょんする展示と共にお待ちしています。",
                         @"石とか星を見るだけが地学天文学部じゃねえ！！化石のレプリカ制作やプラネタリウムやってます。",
                         @"高校１年の２人がミャンマーにボランティアに行ってきました。その時の様子や雰囲気を写真でお伝えします。",
                         @"今年は巡見をテーマにした展示や小学生に向けた鎧の着付け体験もしています。是非一度来てみてください！",
                         @"「考える楽しさ」がここにある...論文、立体模型、数学ゲーム等を用意しています。入試予想問題もあります！",
                         @"聖光祭の熱気から離れて音楽と共に過ごすティータイムはいかがでしょうか。",
                         @"体力テストと心理ゲームやってるので気軽に寄ってね！体力テストはランキングも開催！目指すはもちろん？",
                         @"今年の演目は「シンデレラ」です！さあ、聖光生の迫真の演技を見ながらこの奥深さに触れてみませんか？",
                         @"どうも、魔女卓です！卓球ができる場所です。部員とも打てます。一同心よりお越しをお待ちしております！",
                         @"イケメンが好き？イケメンと遊びたい？だったらWanted！選りすぐりの男達に賭けてみませんか？",
                         @"早押しクイズ、ボードクイズ、それぞれ実施中！初心者も大歓迎！「越後製菓！」以外の正解が、ここにはある",
                         @"今年の高３英語劇では、ニール・サイモンの「おかしな二人」を演じます。是非一見しに来てください！",
                         @"新校舎にゆるキャラ…。変貌と共に歩んだ前年度生徒会をご覧あれ！生徒会企画の景品受け渡しもやってます。",
                         @"光を見ることなく、儚く散った命。怨念は貴方を血みどろの惨劇へと誘う。「ねぇ…一緒に遊ぼうよ」",
                         @"映画に関する研究発表の他、ジオラマでとなりのトトロの舞台を再現。ジブリの世界へお越しください。",
                         @"アニ研、復活！！過去の名作から話題の新作までをまとめました。今年は「京アニ」特集もあるよ！",
                         @"ベイスターズの同好会が誕生！球団DVD上映、グッズ展示をはじめとした活動をしています。お気軽にどうぞ！",
                         @"コント演劇どっちもやります！聖光祭に来たのなら絶対みて損なし！どっちも観て笑って行きましょう！",
                         @"様々なジャンルの物を展示しています。英語は勿論日本語も併記しています。聖光生の英語力を篤とご覧あれ‼",
                         @"ヤマト40周年を記念し、2199年の科学技術を徹底検証。ヤマトのあの装置も実験中！聖光生の本気を刮目せよ",
                         @"「人間熱くなったときがホントの自分に出会えるんだ」これは松岡修造の言葉です。みんなで熱くなろうぜ！",
                         @"中教室１にはお宝があふれているらしい…宝くじと違って必ず当たる！　ハマるゲーム多数展示中！！！",
                         @"聖光学院唯一、「創作活動」…文芸及び映像制作…の同好会が、今年もあなたを奇奇怪怪な世界へとご招待。",
                         @"イケメンサッカー部と遊びたいそこのあなた,カジノやってます。",
                         @"簡単で楽しく遊べるパズルアクションを愉快な野球部がお送りしてみます。",
                         @"体を動かしたきゃスケバスだ！楽しみたきゃスケバスだ！",
                         @"",
                         nil];
    
    
    NSUserDefaults *ExhibitonPathdata = [NSUserDefaults standardUserDefaults];
    NSInteger ExhibitonPathNumber=[ExhibitonPathdata integerForKey:@"foodindexpath"];
    //NSLog(@"int:%ld", (long)pathnumber);
//    UILabel *shopnamelabel = [[UILabel alloc] initWithFrame:CGRectMake(0,0,160,30)];
    UITextView *detail = [[UITextView alloc] initWithFrame:CGRectMake(0,0,320,320)];
    detail.editable = NO;
    detail.font =[UIFont fontWithName:@"HiraKakuProN-W3" size:16];
    UIImageView *mapview=[[UIImageView alloc] initWithFrame:CGRectMake(320,0,320,305)];
    imageView.image=[UIImage imageNamed:shopimageArray[ExhibitonPathNumber]];
    shopnamelabel.text=[NSString stringWithFormat:shoptextArray[ExhibitonPathNumber]];
    detail.text=[NSString stringWithFormat:shopdetailtextArray[ExhibitonPathNumber]];
    detail.layer.borderWidth = 3;
    detail.layer.borderColor = [[UIColor grayColor] CGColor];
    
    mapview.image=[UIImage imageNamed:mapimageArray[ExhibitonPathNumber]];
    UIView *exhibitionDetailTextView = [[UIView alloc] initWithFrame:CGRectMake(0,0,320,305)];
    UIView *exhibitonDetailMapView = [[UIView alloc] initWithFrame:CGRectMake(320,0,320,305)];
    [exhibitionDetailTextView addSubview:mapview];
    //[foodDetailTextView addSubview:shopname];
    //[foodDetailTextView addSubview:foodname];
    [exhibitionDetailTextView addSubview:detail];
    exhibitionDetailTextView.backgroundColor = [UIColor redColor];
    // foodDetailMapView.backgroundColor=[UIColor blueColor];
    [exhibitionDetailScrollView addSubview:exhibitionDetailTextView];
    [exhibitionDetailScrollView addSubview:exhibitonDetailMapView];
    exhibitionDetailScrollView.scrollEnabled = YES;
    [exhibitionDetailScrollView setContentSize:CGSizeMake(320 * 2.0f, 290)];
    exhibitionDetailScrollView.delegate=self;
    exhibitionDetailScrollView.clipsToBounds = NO;
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
    
    [exhibitionDetailScrollView setContentOffset:offset animated:YES];
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
    [exhibitionDetailScrollView setContentOffset:offset animated:YES];
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
-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}


@end
