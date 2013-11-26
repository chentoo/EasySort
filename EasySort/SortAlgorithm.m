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
 *  Bubble sort 最原始方式.
 *  时间复杂度 o(n*n)
 *
 *  @param nums 数组中的数据用array方式保存，排序时，更改相应位置的元素的值。
 */
+ (void)BubbleSort1:(NSMutableArray *)nums
{
    NSInteger i, j;
    for (i = 0; i < nums.count; i++)
    {
        for (j = 1; j < nums.count - i; j++)
        {
            if ([nums[j - 1] floatValue] > [nums[j] floatValue])
            {
                [nums exchangeObjectAtIndex:j-1 withObjectAtIndex:j];
            }
        }
    }
}

/**
 *  Bubble sort 改进算法
 *  1、如果数组后m个元素在一次排序中没有发生交换，说明后N个元素已经排序完毕，下次只需对N-m个元素进行冒泡。
 *  2、如果某次排序没有发生任何元素交换，说明数组已经成序，无需再往下进行冒泡。
 *
 *  @param nums 数组中的数据用array方式保存，排序时，更改相应位置的元素的值。
 */
+ (void)BubbleSort:(NSMutableArray *)nums
{
    NSInteger i, j, flag = nums.count;
    
    while (flag > 0)
    {
        j = flag;
        flag = 0;
        for (i = 1; i < j; i ++)
        {
            if ([nums[i - 1] floatValue] > [nums[i] floatValue])
            {
                [nums exchangeObjectAtIndex:i-1 withObjectAtIndex:i];
                flag = i;
            }
        }
    }
}

@end
