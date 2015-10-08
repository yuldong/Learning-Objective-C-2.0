//
//  NamedAccumulator.m
//  Accumulator
//
//  Created by YrionPlus on 15/10/7.
//  Copyright © 2015年 YrionPlus. All rights reserved.
//

#import "NamedAccumulator.h"

@implementation NamedAccumulator

- (NSString *)name {
    return name;
}

- (void)setName:(NSString *)newName {
    [newName retain];
    [name release];
    name = newName;
}

- (void)addToTotal:(NSUInteger)amount {
    NSLog(@"Adding %ld to the %@ Accumulator", amount, [self name]);
    [super addToTotal:amount];
}

- (void)dealloc {
    [name release];
    [super dealloc];
}

@end
