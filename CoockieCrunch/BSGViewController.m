//
//  BSGViewController.m
//  CoockieCrunch
//
//  Created by Developers on 3/23/15.
//  Copyright (c) 2015 BrylleS Games, Inc. All rights reserved.
//

#import "BSGViewController.h"

#import "BSGMyScene.h"
#import "BSGLevel.h"

@interface BSGViewController ()

@property (strong, nonatomic) BSGLevel *level;
@property (strong, nonatomic) BSGMyScene *scene;

@end

@implementation BSGViewController

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Configure the view.
    SKView *skView = (SKView *)self.view;
    skView.multipleTouchEnabled = NO;
    
    // Create and configure the scene.
    self.scene = [BSGMyScene sceneWithSize:skView.bounds.size];
    self.scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Load the level.
    self.level = [[BSGLevel alloc] init];
    self.scene.level = self.level;
    
    // Present the scene.
    [skView presentScene:self.scene];
    
    // Let's start the game!
    [self beginGame];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (void)beginGame {
    [self shuffle];
}

- (void)shuffle {
    NSSet *newCookies = [self.level shuffle];
    [self.scene addSpritesForCookies:newCookies];
}

@end
