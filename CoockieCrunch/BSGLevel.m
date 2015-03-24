//
//  BSGLevel.m
//  CoockieCrunch
//
//  Created by Developers on 3/24/15.
//  Copyright (c) 2015 BrylleS Games, Inc. All rights reserved.
//

#import "BSGLevel.h"

@implementation BSGLevel
{
    BSGCoockie *_cookies[NumColumns][NumRows];
}

- (NSSet *)shuffle {
    return [self createInitialCookies];
}

- (NSSet *)createInitialCookies {
    NSMutableSet *set = [NSMutableSet set];
    
    // 1
    for (NSInteger row = 0; row < NumRows; row++) {
        for (NSInteger column = 0; column < NumColumns; column++) {
            
            // 2
            NSUInteger cookieType = arc4random_uniform(NumCookieTypes) + 1;
            
            // 3
            BSGCoockie *cookie = [self createCookieAtColumn:column row:row withType:cookieType];
            
            // 4
            [set addObject:cookie];
        }
    }
    return set;
}

- (BSGCoockie *)createCookieAtColumn:(NSInteger)column row:(NSInteger)row withType:(NSUInteger)cookieType {
    BSGCoockie *cookie = [[BSGCoockie alloc] init];
    cookie.cookieType = cookieType;
    cookie.column = column;
    cookie.row = row;
    _cookies[column][row] = cookie;
    return cookie;
}

- (BSGCoockie *)cookieAtColumn:(NSInteger)column row:(NSInteger)row {
    NSAssert1(column >= 0 && column < NumColumns, @"Invalid column: %ld", (long)column);
    NSAssert1(row >= 0 && row < NumRows, @"Invalid row: %ld", (long)row);
    
    return _cookies[column][row];
}



@end
