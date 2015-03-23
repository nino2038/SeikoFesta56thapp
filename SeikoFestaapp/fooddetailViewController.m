//
//  fooddetailViewController.m
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/02/10.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import "fooddetailViewController.h"

@implementation fooddetailViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    shopimageArray=[[NSArray alloc] initWithObjects:
                    @"アプリ食品素材-01.png",
                    @"アプリ食品素材-02.png",
                    @"アプリ食品素材-03.png",
                    @"アプリ食品素材-04.png",
                    @"アプリ食品素材-05.png",
                    @"アプリ食品素材-06.png",
                    @"アプリ食品素材-07.png",
                    @"アプリ食品素材-08.png",
                    @"アプリ食品素材-09.png",
                    @"アプリ食品素材-10.png",
                    @"アプリ食品素材-11.png",
                    @"アプリ食品素材-12.png",
                    @"アプリ食品素材-13.png",
                    @"アプリ食品素材-14.png",
                    @"アプリ食品素材-15.png",
                    @"アプリ食品素材-16.png",
                    @"アプリ食品素材-17.png",
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
                         nil];
    
    NSUserDefaults *foodpathdata = [NSUserDefaults standardUserDefaults];
    NSInteger foodpathnumber=[foodpathdata integerForKey:@"foodindexpath"];
    //NSLog(@"int:%ld", (long)pathnumber);
    imageView.image=[UIImage imageNamed:shopimageArray[foodpathnumber]];
    shopname.text=[NSString stringWithFormat:shoptextArray[foodpathnumber]];
    foodname.text=[NSString stringWithFormat:foodtextArray[foodpathnumber]];
    detail.text=[NSString stringWithFormat:shopdetailtextArray[foodpathnumber]];
    
    
    
}

-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

@end
