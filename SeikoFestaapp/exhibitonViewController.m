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

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [exhibitionCollectionView setDataSource:self];
    [exhibitionCollectionView setDelegate:self];
    [UINavigationBar appearance].barTintColor = [UIColor cyanColor];
    [UINavigationBar appearance].tintColor = [UIColor whiteColor];
    [UINavigationBar appearance].titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];

    exhibitionimageArray=[[NSArray alloc] initWithObjects:@"yakitori.jpg",
                    @"kebabu.jpeg",
                    @"yakisoba.jpg",
                    @"yakisoba.jpg",
                    @"okonomiyaki.jpg",
                    @"frankfrut.jpg",
                    @"kure-pu.jpg",
                    @"banana.jpeg",
                    @"wataame.jpg",
                    @"drink.jpg",
                    @"kori.jpeg",
                    nil];
    exhibitiontextArray=[[NSArray alloc] initWithObjects:@"Mr.Chiken",@"俺のケバブ",@"麺'sRUNRUN",@"麺の達人",@"鉄板職人",@"フランクフルトちゃん",@"クレープハウス 1.2.3",@"横浜ばな奈",@"坂の上の雲",@"Drink・Bar",@"氷菓",nil];
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
    return 11;
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


@end
