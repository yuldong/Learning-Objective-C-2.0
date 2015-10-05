//
//  Greeter.h
//  HelloObjectiveC
//
//  Created by YrionPlus on 15/10/5.
//  Copyright © 2015年 YrionPlus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Greeter : NSObject
{
    NSString *greetingText;
}

- (NSString *)greetingText;
- (void)setGreetingText:(NSString *)newText;
- (void)issueGreeting;
@end
