//
//  exhibitonViewController.m
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/02/04.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import "exhibitonViewController.h"
#import "exhibitionCell.h"

@implementation exhibitonViewController
@synthesize exhibitionCollectionView;
// は垂直方向のセル間のマージンの最小値を返却する
- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(UICollectionViewLayout*)collectionViewLayout
minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 1;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *backgroundHeaderView= [[UIView alloc] initWithFrame:CGRectMake(0, -500, 320, 500)];
    [backgroundHeaderView setBackgroundColor:[UIColor whiteColor]];
    [exhibitionCollectionView addSubview:backgroundHeaderView];
    UIView *backgroundFooterView= [[UIView alloc] initWithFrame:CGRectMake(0, 3179, 320, 500)];
    [backgroundFooterView setBackgroundColor:[UIColor whiteColor]];
    [exhibitionCollectionView addSubview:backgroundFooterView];
    
    [exhibitionCollectionView setDataSource:self];
    [exhibitionCollectionView setDelegate:self];
    [UINavigationBar appearance].barTintColor = [UIColor blueColor ];
    [UINavigationBar appearance].tintColor = [UIColor whiteColor];
    [UINavigationBar appearance].titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    

    exhibitionimageArray=[[NSArray alloc] initWithObjects:
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
                          @"アプリ趣味研素材-41",nil];
    exhibitiontextArray=[[NSArray alloc] initWithObjects:
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
                         @"スケットバスケット",nil];
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
    return 40
    ;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    exhibitionCell *cell=(exhibitionCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.label.text=exhibitiontextArray[indexPath.row];
    cell.imageView.image=[UIImage imageNamed:exhibitionimageArray[indexPath.row]];
    
    
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSUserDefaults *ExhibitonPathdata = [NSUserDefaults standardUserDefaults];
    [ExhibitonPathdata setInteger:indexPath.row forKey:@"foodindexpath"];
    
    
    [self performSegueWithIdentifier:@"toExhibitonDetail" sender:self];
    
}
-(IBAction)Exhibitionback{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
