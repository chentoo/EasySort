//
//  SortAlgorithm.m
//  EasySort
//
//  Created by Summer on 26/11/13.
//  Copyright (c) 2013 kodak. All rights reserved.
//

#import "SortAlgorithm.h"

@implementation SortAlgorithm


/**
 *  Bubble sort 1.
 *
 *  @param nums 数组中的数据用array方式保存，排序时，更改相应位置的元素的值。
 */
+ (void)BubbleSort1:(NSMutableArray *)nums
{
    NSInteger i, j;
    for (i = 0; i < nums.count; i++)
    {
        for (j = 1; j < nums.count - 1; j++)
        {
            if ([nums[j - 1] floatValue] > [nums[j] floatValue])
            {
                [nums exchangeObjectAtIndex:j-1 withObjectAtIndex:j];
            }
        }
    }
}

@end
