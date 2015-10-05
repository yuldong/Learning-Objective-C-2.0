//
//  Greeter.m
//  HelloObjectiveC
//
//  Created by YrionPlus on 15/10/5.
//  Copyright © 2015年 YrionPlus. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

- (NSString *)greetingText {
    return greetingText;
}

- (void)setGreetingText:(NSString *)newText {
    [newText retain];
    [greetingText release];
    greetingText = newText;
}

- (void)issueGreeting {
    NSLog(@"%@", [self greetingText]);
}

- (void)dealloc {
    [greetingText release];
    [super dealloc];
}

@end
