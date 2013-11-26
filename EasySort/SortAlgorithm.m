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
+ (void)BubbleSort1:(EasySortArray *)nums
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
+ (void)BubbleSort:(EasySortArray *)nums
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

/**
 *  InsertSort 原始算法 每次将一个待排序的记录，按其关键字大小插入到前面已经排好序的子序列中的适当位置，直到全部记录插入完成为止。
 *
 *  @param nums 数组中的数据用array方式保存，排序时，更改相应位置的元素的值。
 */
+ (void)InsertSort1:(EasySortArray *)nums
{
    NSInteger i, j, k;
    for (i = 1; i < nums.count; i++)
    {
        //在 nums[0... i-1]区间内，寻找适合 num[i] 插入的位置 j
        for (j = i - 1; j >= 0; j--)
        {
            if ([nums[j] floatValue] < [nums[i] floatValue])
            {
                break;
            }
        }
        if (j != i - 1)
        {
            //把所有大于nums[i]的数据向后顺移
            NSString *temp = nums[i];
            for (k = i - 1; k > j; k--)
            {
                [nums replaceObjectAtIndex:k+1 withObject:nums[k]];
                
            }
            //放置nums[i]到正确位置
            [nums replaceObjectAtIndex:k+1 withObject:temp];
        }
    }
}

/**
 *  InsertSort 第一次改进算法，将搜索插入位置和元素后移的操作合并
 *
 *  @param nums 数组中的数据用array方式保存，排序时，更改相应位置的元素的值。
 */
+ (void)InsertSort2:(EasySortArray *)nums
{
    NSInteger i, j;
    for (i = 1; i < nums.count; i++)
    {
        //如果前一个元素比当前位置大，才进行当前元素插入前方有序序列的操作
        if ([nums[i] floatValue] < [nums[i-1] floatValue])
        {
            NSString *temp = nums[i];
            for (j = i - 1; j >= 0 && [nums[j] floatValue] > [temp floatValue]; j--)
            {
                //找到需要插入的位置，并且在寻找的过程中就将元素后移
                [nums replaceObjectAtIndex:j+1 withObject:nums[j]];
            }
            //放置需要插入的元素到正确位置
            [nums replaceObjectAtIndex:j+1 withObject:temp];
        }
    }
}

/**
 *  InsertSort 最终改进算法，将元素后移的操作改为交换，使代码更加简洁
 *
 *  @param nums 数组中的数据用array方式保存，排序时，更改相应位置的元素的值。
 */
+ (void)InsertSort:(EasySortArray *)nums
{
    NSInteger i, j;
    for (i = 1; i < nums.count; i++)
    {
        //如果前一个元素比当前位置大，才进行当前元素插入前方有序序列的操作
        for (j = i - 1; j >=0 && [nums[j] floatValue] > [nums[j+1] floatValue]; j--)
        {
            //搜寻需要插入的位置，并再进行中将后续的元素进行交换，从而实现有序
            [nums exchangeObjectAtIndex:j withObjectAtIndex:j+1];
        }
    }
}

@end
