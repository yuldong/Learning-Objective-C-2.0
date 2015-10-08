//
//  NamedAccumulator.m
//  Accumulator
//
//  Created by YrionPlus on 15/10/7.
//  Copyright © 2015年 YrionPlus. All rights reserved.
//

#import "NamedAccumulator.h"

@implementation NamedAccumulator

- (instancetype)init {
    return [self initWithName:@"NamedAccumulatorClass" total:0];
}

/**
 *  指定初始化程序
 *
 *  @param aName  默认name
 *  @param aTotal 默认total
 *
 *  @return 初始化后的实例对象
 */
- (instancetype)initWithName:(NSString *)aName total:(NSUInteger)aTotal {
    if (self = [super init]) {
        name = [aName retain];
        total = aTotal;
    }
    return self;
}

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

- (NSUInteger)total {
    return total;
}

- (void)setTotal:(NSUInteger)aTotal {
    total = aTotal;
}

- (id)copyWithZone:(NSZone *)zone {
    id copiedNamedAccumulator = [super copyWithZone:zone];
    [copiedNamedAccumulator setName:@"NamedAccumulatorClass"];
    [copiedNamedAccumulator setTotal:0];
    return copiedNamedAccumulator;
}

- (void)dealloc {
    [name release];
    [super dealloc];
}

@end
