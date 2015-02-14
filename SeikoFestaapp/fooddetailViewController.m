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
    shoptextArray=[[NSArray alloc] initWithObjects:
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
    foodtextArray=[[NSArray alloc] initWithObjects:
                   @"焼き鳥",
                   @"ケバブ",
                   @"塩焼きそば",
                   @"ソース焼きそば",
                   @"お好み焼き",
                   @"フランクフルト",
                   @"クレープ",
                   @"チョコバナナ",
                   @"わたあめ",
                   @"ドリンク",
                   @"かき氷"
                   ,nil];
    shopdetailtextArray=[[NSArray alloc]initWithObjects:
                         @"何を食べようか迷っているそこのあなた！！改良を続けたレシピと変わらない熱意で今年も焼きt理を焼いています。新メニューも追加して、中庭で待ってます。",
                         @"何を食べようか迷っているそこのあなた！！改良を続けたレシピと変わらない熱意で今年も焼きt理を焼いています。新メニューも追加して、中庭で待ってます。",
                         @"何を食べようか迷っているそこのあなた！！改良を続けたレシピと変わらない熱意で今年も焼きt理を焼いています。新メニューも追加して、中庭で待ってます。",
                         @"何を食べようか迷っているそこのあなた！！改良を続けたレシピと変わらない熱意で今年も焼きt理を焼いています。新メニューも追加して、中庭で待ってます。",
                         @"何を食べようか迷っているそこのあなた！！改良を続けたレシピと変わらない熱意で今年も焼きt理を焼いています。新メニューも追加して、中庭で待ってます。",
                         @"何を食べようか迷っているそこのあなた！！改良を続けたレシピと変わらない熱意で今年も焼きt理を焼いています。新メニューも追加して、中庭で待ってます。",
                         @"何を食べようか迷っているそこのあなた！！改良を続けたレシピと変わらない熱意で今年も焼きt理を焼いています。新メニューも追加して、中庭で待ってます。",
                         @"何を食べようか迷っているそこのあなた！！改良を続けたレシピと変わらない熱意で今年も焼きt理を焼いています。新メニューも追加して、中庭で待ってます。",
                         @"何を食べようか迷っているそこのあなた！！改良を続けたレシピと変わらない熱意で今年も焼きt理を焼いています。新メニューも追加して、中庭で待ってます。",
                         @"何を食べようか迷っているそこのあなた！！改良を続けたレシピと変わらない熱意で今年も焼きt理を焼いています。新メニューも追加して、中庭で待ってます。",
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
