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

- (void)setNormalGreeting:(Greeting *)aNormalGreeting {
    [aNormalGreeting retain];
    [normalGreeting release];
    normalGreeting = aNormalGreeting;
}

- (Greeting *)vipGreeting {
    return vipGreeting;
}

- (void)setVipGreeting:(Greeting *)aVipGreeting {
    [aVipGreeting retain];
    [vipGreeting release];
    vipGreeting = aVipGreeting;
}

- (void)issueGreeting:(NSUInteger)whichGreeting {
    if (whichGreeting == 0) {
        NSLog(@"%@", [self normalGreeting]);
    } else if (whichGreeting == 1) {
        NSLog(@"%@", [self vipGreeting]);
    } else {
        NSLog(@"Nothing to say");
    }
}

- (void)setNormalGreeting:(Greeting *)aNormalGreeting vipGreeting:(Greeting *)aVIPGreeting {
    
//    [aNormalGreeting retain];
//    [normalGreeting release];
//    normalGreeting = aNormalGreeting;
    [self setNormalGreeting:aNormalGreeting];
    
//    [aVIPGreeting retain];
//    [vipGreeting release];
//    vipGreeting = aVIPGreeting;
    [self setVipGreeting:aVIPGreeting];
}

- (void)dealloc {
    [vipGreeting release];
    [normalGreeting release];
    [super dealloc];
}

@end
