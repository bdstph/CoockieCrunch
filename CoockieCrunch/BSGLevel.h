//
//  BSGLevel.h
//  CoockieCrunch
//
//  Created by Developers on 3/24/15.
//  Copyright (c) 2015 BrylleS Games, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BSGCoockie.h"

static const NSInteger NumColumns = 9;
static const NSInteger NumRows = 9;

@interface BSGLevel : NSObject

- (NSSet *)shuffle;

- (BSGCoockie *)cookieAtColumn:(NSInteger)column row:(NSInteger)row;

@end
