//
//  BSGMyScene.h
//  CoockieCrunch
//

//  Copyright (c) 2015 BrylleS Games, Inc. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@import SpriteKit;

@class BSGLevel;

@interface BSGMyScene : SKScene

@property (strong, nonatomic) BSGLevel *level;

- (void)addSpritesForCookies:(NSSet *)cookies;

@end
