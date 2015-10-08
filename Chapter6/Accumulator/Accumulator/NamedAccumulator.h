//
//  NamedAccumulator.h
//  Accumulator
//
//  Created by YrionPlus on 15/10/7.
//  Copyright © 2015年 YrionPlus. All rights reserved.
//

#import "Accumulator.h"

@interface NamedAccumulator : Accumulator
{
    NSString *name;
}

- (NSString *)name;
- (void)setName:(NSString *)newName;
- (void)addToTotal:(NSUInteger)amount;

@end
