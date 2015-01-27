//
//  ViewController.m
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2014/07/26.
//  Copyright (c) 2014年 SatoshiNinomiya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Poster.delegate=self;
    Poster.dataSource = self;
    imageArray = [[NSMutableArray alloc] initWithObjects:
                  [UIImage imageNamed:@"ゲリラダンス.png"],
                  nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark
-(NSInteger)collectionView:(UICollectionView *)collectionView
       numberOfRowInSection:(NSInteger)section
{
    return [imageArray count];
}

@end
