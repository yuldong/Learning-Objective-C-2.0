//
//  main.m
//  HelloObjectiveC
//
//  Created by YrionPlus on 15/10/5.
//  Copyright © 2015年 YrionPlus. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Greeter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Greeter *myGreeter = [[Greeter alloc] init];
        
        [myGreeter setGreetingText:@"Hello Objective-C"];
        
        [myGreeter issueGreeting];
        
        [myGreeter release];
    }
    return 0;
}
