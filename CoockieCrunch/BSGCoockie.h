//
//  BSGCoockie.h
//  CoockieCrunch
//
//  Created by Developers on 3/23/15.
//  Copyright (c) 2015 BrylleS Games, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@import SpriteKit;

static const NSUInteger NumCookieTypes = 6;

@interface BSGCoockie : NSObject

@property (assign, nonatomic) NSInteger column;
@property (assign, nonatomic) NSInteger row;
@property (assign, nonatomic) NSUInteger cookieType;
@property (strong, nonatomic) SKSpriteNode *sprite;

- (NSString *)spriteName;
- (NSString *)highlightedSpriteName;

@end
