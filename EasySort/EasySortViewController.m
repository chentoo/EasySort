//
//  EasySortViewController.m
//  EasySort
//
//  Created by Summer on 26/11/13.
//  Copyright (c) 2013 kodak. All rights reserved.
//

#import "EasySortViewController.h"
#import "SortAlgorithm.h"

@interface EasySortViewController ()

@end

@implementation EasySortViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"hehehehehhhehehehe");
//    EasySortArray *nums = [EasySortArray arrayWithObjects:@"13.2", @"-12.2", @"113.2", @"13", @"-13.2", nil];
    EasySortArray *nums = [[EasySortArray alloc] initWithObjects:@"13.2", @"-12.2", @"113.2", @"13", @"-13.2", nil];

    nums.delegate = self;
    [SortAlgorithm InsertSort:nums];
    
    NSLog(@"%@  %f",nums, [nums[nums.count - 1] floatValue]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - EasySortArray Delegate

- (void)easySortArrayDidExchangeObjectAtIndex:(NSInteger)idx1 withObjectAtIndex:(NSInteger)idx2
{
    NSLog(@"%i %i", idx1, idx2);
}

@end
