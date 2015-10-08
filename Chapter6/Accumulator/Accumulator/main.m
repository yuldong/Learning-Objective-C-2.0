//
//  main.m
//  Accumulator
//
//  Created by YrionPlus on 15/10/7.
//  Copyright © 2015年 YrionPlus. All rights reserved.
//

#import <Foundation/Foundation.h>


#import "NamedAccumulator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NamedAccumulator *ac = [[NamedAccumulator alloc] init];
        
        [ac zeroTotal];
        [ac setName:@"Bandersnatch"];
        
        [ac addToTotal:100];
        [ac addToTotal:37];
        
        NSLog(@"The total in the %@ Accumulator is... %ld", [ac name], [ac total]);
        
        [ac release];
    }
    return 0;
}
