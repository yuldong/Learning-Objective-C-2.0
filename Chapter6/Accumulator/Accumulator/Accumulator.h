//
//  Accumulator.h
//  Accumulator
//
//  Created by YrionPlus on 15/10/7.
//  Copyright © 2015年 YrionPlus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Accumulator : NSObject
{
    NSUInteger total;
}

- (void)addToTotal:(NSUInteger)amount;
- (NSUInteger)total;
- (void)zeroTotal;

@end
