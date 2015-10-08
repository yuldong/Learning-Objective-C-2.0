//
//  Accumulator.m
//  Accumulator
//
//  Created by YrionPlus on 15/10/7.
//  Copyright © 2015年 YrionPlus. All rights reserved.
//

#import "Accumulator.h"

@implementation Accumulator

- (void)addToTotal:(NSUInteger)amount {
    total = total + amount;
}

- (NSUInteger)total {
    return total;
}

- (void)zeroTotal {
    total = 0;
}

- (id)copyWithZone:(NSZone *)zone {
    id copiedAccumulator = [[[self class] allocWithZone:zone] init];
    return copiedAccumulator;
}
@end
