//
//  EasySortArray.h
//  EasySort
//
//  Created by Summer on 26/11/13.
//  Copyright (c) 2013 kodak. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol EasySortArrayDelegate <NSObject>

@optional

- (void)easySortArrayDidExchangeObjectAtIndex:(NSInteger)idx1 withObjectAtIndex:(NSInteger)idx2;

@end


@interface EasySortArray : NSMutableArray
{
    
}

@property (nonatomic, weak) id <EasySortArrayDelegate> delegate;

@end
