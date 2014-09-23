//
//  main.m
//  HowLongIHaveBeenAlive
//
//  Created by Ken Swain on 9/23/14.
//  Copyright (c) 2014 KenSwain. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1981];
        [comps setMonth:1];
        [comps setDay:1];
        [comps setHour:1];
        [comps setMinute:1];
        [comps setSecond:1];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        NSDate *now = [[NSDate alloc] init];
        double secondsSinceBirth = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"I have been alive %f seconds", secondsSinceBirth);

    }
    return 0;
}
