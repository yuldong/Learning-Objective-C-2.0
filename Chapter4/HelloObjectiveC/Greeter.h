//
//  Greeter.h
//  HelloObjectiveC
//
//  Created by YrionPlus on 15/10/5.
//  Copyright © 2015年 YrionPlus. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Greeting;
@interface Greeter : NSObject
{
    Greeting *normalGreeting;
    Greeting *vipGreeting;
}

- (Greeting *)normalGreeting;
- (void)setNormalGreeting:(Greeting *)newGreeting;

- (Greeting *)vipGreeting;
- (void)setVipGreeting:(Greeting *)newGreeting;

- (void)issueGreeting:(NSUInteger)whichGreeting;

@end
