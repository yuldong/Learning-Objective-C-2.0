//
//  Accumulator.m
//  Chapter3
//
//  Created by YrionPlus on 15/10/5.
//  Copyright © 2015年 YrionPlus. All rights reserved.
//

#import "Accumulator.h"

@implementation Accumulator

- (void)addToTotal:(int)amount {
    total = total + amount;
}

- (int)total {
    return total;
}

- (void)zeroTotal {
    total = 0;
    if (CGFLOAT_IS_DOUBLE) {
        NSLog(@"Double!\n");
    } else {
        NSLog(@"Float!\n");
    }
}

@end
