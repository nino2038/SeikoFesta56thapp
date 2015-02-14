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

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [foodCollectionView setDataSource:self];
    [foodCollectionView setDelegate:self];
    foodimageArray=[[NSArray alloc] initWithObjects:
                    @"yakitori.jpg",
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
    foodtextArray=[[NSArray alloc] initWithObjects:
                   @"Mr.Chiken",
                   @"俺のケバブ",
                   @"麺'sRUNRUN",
                   @"麺の達人",
                   @"鉄板職人",
                   @"フランクフルトちゃん",
                   @"クレープハウス 1.2.3",
                   @"横浜ばな奈",
                   @"坂の上の雲",
                   @"Drink・Bar",
                   @"氷菓"
                   ,nil];
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
    
    foodCell *cell=(foodCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.label.text=foodtextArray[indexPath.row];
    cell.image.image=[UIImage imageNamed:foodimageArray[indexPath.row]];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSUserDefaults *foodpathdata = [NSUserDefaults standardUserDefaults];
    [foodpathdata setInteger:indexPath.row forKey:@"foodindexpath"];
    
    
    [self performSegueWithIdentifier:@"toFoodDetail" sender:self];
   
}


@end
