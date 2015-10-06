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
- (void)setNormalGreeting:(Greeting *)aNormalGreeting;

- (Greeting *)vipGreeting;
- (void)setVipGreeting:(Greeting *)aVipGreeting;

- (void)issueGreeting:(NSUInteger)whichGreeting;

- (void)setNormalGreeting:(Greeting *)aNormalGreeting vipGreeting:(Greeting *)aVIPGreeting;

@end
