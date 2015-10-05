//
//  Accumulator.h
//  Chapter3
//
//  Created by YrionPlus on 15/10/5.
//  Copyright © 2015年 YrionPlus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Accumulator : NSObject
{
    int total;
}

- (void)addToTotal:(int)amount;

- (int)total;

- (void)zeroTotal;

@end
