//
//  Greeter.m
//  HelloObjectiveC
//
//  Created by YrionPlus on 15/10/5.
//  Copyright © 2015年 YrionPlus. All rights reserved.
//

#import "Greeter.h"

#import "Greeting.h"

@implementation Greeter

- (Greeting *)normalGreeting {
    return normalGreeting;
}

- (void)setNormalGreeting:(Greeting *)newGreeting {
    [newGreeting retain];
    [normalGreeting release];
    normalGreeting = newGreeting;
}

- (Greeting *)vipGreeting {
    return vipGreeting;
}

- (void)setVipGreeting:(Greeting *)newGreeting {
    [newGreeting retain];
    [vipGreeting release];
    vipGreeting = newGreeting;
}

- (void)issueGreeting:(NSUInteger)whichGreeting {
    if (whichGreeting == 0) {
        NSLog(@"%@", [self normalGreeting]);
    } else {
        NSLog(@"%@", [self vipGreeting]);
    }
}

- (void)dealloc {
    [vipGreeting release];
    [normalGreeting release];
    [super dealloc];
}

@end
