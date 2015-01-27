//
//  PosterCollectionViewFlowLayout.m
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/01/27.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import "PosterCollectionViewFlowLayout.h"

@implementation PosterCollectionViewFlowLayout

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSArray *attributes = [super layoutAttributesForElementsInRect:rect];
    [attributes enumerateObjectsUsingBlock:^(UICollectionViewLayoutAttributes *attribute, NSUInteger idx, BOOL *stop) {
        CGRect rect = attribute.bounds;
        rect.size.width += 10;
        attribute.bounds = rect;
    }];
    return attributes;
}
@end
