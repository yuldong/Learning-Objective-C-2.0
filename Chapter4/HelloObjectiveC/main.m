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
        
        Greeting *myGreeting = [[Greeting alloc] init];
        [myGreeter setNormalGreeting:myGreeting];
        [myGreeting setGreetingText:@"This is the everyday greeting"];
        [myGreeting release];
        
        Greeting *myVipGreeting = [[Greeting alloc] init];
        [myGreeter setVipGreeting:myVipGreeting];
        [myVipGreeting setGreetingText:@"This is the VIP greeting"];
        [myVipGreeting release];
        
        [myGreeter issueGreeting:0];
        [myGreeter issueGreeting:1];
        
        [myGreeter release];
    }
    return 0;
}
