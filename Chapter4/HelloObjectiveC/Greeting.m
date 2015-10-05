//
//  Greeting.m
//  HelloObjectiveC
//
//  Created by YrionPlus on 15/10/5.
//  Copyright © 2015年 YrionPlus. All rights reserved.
//

#import "Greeting.h"

@implementation Greeting

- (NSString *)greetingText {
    return greetingText;
}

- (void)setGreetingText:(NSString *)newText {
    [newText retain];
    [greetingText release];
    greetingText = newText;
}

- (NSString *)description {
    return greetingText;
}

- (void)dealloc {
    [greetingText release];
    [super dealloc];
}

@end
