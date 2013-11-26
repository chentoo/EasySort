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
    NSMutableArray *nums = [NSMutableArray arrayWithObjects:@"13.2", @"-12.2", @"113.2", @"13", @"-13.2", nil];
	// Do any additional setup after loading the view, typically from a nib.
    [SortAlgorithm BubbleSort:nums];
    
    NSLog(@"%@  %f",nums, [nums[nums.count - 1] floatValue]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
