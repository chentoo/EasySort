//
//  EasySortArray.m
//  EasySort
//
//  Created by Summer on 26/11/13.
//  Copyright (c) 2013 kodak. All rights reserved.
//

#import "EasySortArray.h"

@implementation EasySortArray


- (void)exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2
{
    [super exchangeObjectAtIndex:idx1 withObjectAtIndex:idx2];
    if ([self.delegate respondsToSelector:@selector(easySortArrayDidExchangeObjectAtIndex:withObjectAtIndex:)])
    {
        [self.delegate easySortArrayDidExchangeObjectAtIndex:idx1 withObjectAtIndex:idx2];
    }
}

- (instancetype)initWithCapacity:(NSUInteger)numItems
{
    NSMutableArray *aa = [super initWithCapacity:numItems];
    EasySortArray *aaa = (EasySortArray *)aa;
//    aaa.delegate = self.delegate;
    return aaa;
}
@end
