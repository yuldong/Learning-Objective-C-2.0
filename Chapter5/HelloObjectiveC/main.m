//
//  main.m
//  HelloObjectiveC
//
//  Created by YrionPlus on 15/10/5.
//  Copyright © 2015年 YrionPlus. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Greeter.h"
#import "Greeting.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Greeter *myGreeter = [[Greeter alloc] init];
        
        Greeting *myNormalGreeting = [[Greeting alloc] init];
        [myNormalGreeting setGreetingText:@"This is the everyday greeting"];
        
        Greeting *myVipGreeting = [[Greeting alloc] init];
        [myVipGreeting setGreetingText:@"This is the VIP greeting"];
        
        [myGreeter setNormalGreeting:myNormalGreeting vipGreeting:myVipGreeting];
        
        [myNormalGreeting release];
        [myVipGreeting release];
        
        [myGreeter issueGreeting:0];
        [myGreeter issueGreeting:1];
        
        [myGreeter performSelector:@selector(issueGreeting:) withObject:@2];
        
        [myGreeter release];
        
        Greeter *myGreeter2 = nil;
        [myGreeter2 issueGreeting:1];
    }
    return 0;
}
