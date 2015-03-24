//
//  BSGMyScene.m
//  CoockieCrunch
//
//  Created by Developers on 3/23/15.
//  Copyright (c) 2015 BrylleS Games, Inc. All rights reserved.
//

#import "BSGMyScene.h"

#import "BSGCoockie.h"
#import "BSGLevel.h"

static const CGFloat TileWidth = 32.0;
static const CGFloat TileHeight = 36.0;

@interface BSGMyScene ()

@property (strong, nonatomic) SKNode *gameLayer;
@property (strong, nonatomic) SKNode *cookiesLayer;

@end

@implementation BSGMyScene

- (id)initWithSize:(CGSize)size {
    if ((self = [super initWithSize:size])) {
        
        self.anchorPoint = CGPointMake(0.5, 0.5);
        
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"Background"];
        [self addChild:background];
        
        self.gameLayer = [SKNode node];
        [self addChild:self.gameLayer];
        
        CGPoint layerPosition = CGPointMake(-TileWidth*NumColumns/2, -TileHeight*NumRows/2);
        
        self.cookiesLayer = [SKNode node];
        self.cookiesLayer.position = layerPosition;
        
        [self.gameLayer addChild:self.cookiesLayer];
    }
    return self;
}

- (void)addSpritesForCookies:(NSSet *)cookies {
    for (BSGCoockie *cookie in cookies) {
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:[cookie spriteName]];
        sprite.position = [self pointForColumn:cookie.column row:cookie.row];
        [self.cookiesLayer addChild:sprite];
        cookie.sprite = sprite;
    }
}

- (CGPoint)pointForColumn:(NSInteger)column row:(NSInteger)row {
    return CGPointMake(column*TileWidth + TileWidth/2, row*TileHeight + TileHeight/2);
}

@end
