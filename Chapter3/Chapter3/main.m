//
//  main.m
//  Chapter3
//
//  Created by YrionPlus on 15/10/5.
//  Copyright © 2015年 YrionPlus. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Accumulator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Accumulator *aAccumulator = [[Accumulator alloc] init];
        [aAccumulator zeroTotal];
    }
    return 0;
}
