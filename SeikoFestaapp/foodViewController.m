//
//  exhibitonViewController.m
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/02/04.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import "foodViewController.h"
#import "foodCell.h"

@implementation foodViewController
@synthesize foodCollectionView;

// は垂直方向のセル間のマージンの最小値を返却する
- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(UICollectionViewLayout*)collectionViewLayout
minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 2;
}
-(IBAction)foodback{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [foodCollectionView setDataSource:self];
    [foodCollectionView setDelegate:self];
    //
    UIView *backgroundHeaderView= [[UIView alloc] initWithFrame:CGRectMake(0, -500, 320, 500)];
    [backgroundHeaderView setBackgroundColor:[UIColor whiteColor]];
    [foodCollectionView addSubview:backgroundHeaderView];
    UIView *backgroundFooterView= [[UIView alloc] initWithFrame:CGRectMake(0, 1455, 320, 500)];
    [backgroundFooterView setBackgroundColor:[UIColor whiteColor]];
    [foodCollectionView addSubview:backgroundFooterView];

    [UINavigationBar appearance].barTintColor = [UIColor redColor];
    [UINavigationBar appearance].tintColor = [UIColor whiteColor];
    [UINavigationBar appearance].titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    foodimageArray=[[NSArray alloc] initWithObjects:
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
                    @"",
                    nil];
    foodtextArray=[[NSArray alloc] initWithObjects:
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
    fooddetailtextArray=[[NSArray alloc] initWithObjects:
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -collection view delegate

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 18;
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    foodCell *cell=(foodCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.label.text=foodtextArray[indexPath.row];
    cell.image.image=[UIImage imageNamed:foodimageArray[indexPath.row]];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if ([indexPath isEqual:[NSIndexPath indexPathForRow:17 inSection:0]]){
        nil;
    }else{
        NSUserDefaults *foodpathdata = [NSUserDefaults standardUserDefaults];
        [foodpathdata setInteger:indexPath.row forKey:@"foodindexpath"];
        
       // NSLog(@"%ld",(long)indexPath.row);
        
        [self performSegueWithIdentifier:@"toFoodDetail" sender:self];
    }
}
-(IBAction)tweet{
    
}
-(IBAction)facebook{

}
@end
