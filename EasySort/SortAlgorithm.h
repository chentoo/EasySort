//
//  SortAlgorithm.h
//  EasySort
//
//  Created by Summer on 26/11/13.
//  Copyright (c) 2013 kodak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EasySortArray.h"

@interface SortAlgorithm : NSObject


+ (void)BubbleSort1:(EasySortArray *)nums;
+ (void)BubbleSort:(EasySortArray *)nums;
+ (void)InsertSort1:(EasySortArray *)nums;
+ (void)InsertSort2:(EasySortArray *)nums;
+ (void)InsertSort:(EasySortArray *)nums;

@end
