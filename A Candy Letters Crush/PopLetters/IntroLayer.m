//
//  IntroLayer.m
//
//  Copyright 2015 Ablinx. All rights reserved.
//

#import "IntroLayer.h"
#import "HomeScene.h"

#import <UIKit/UIKit.h>


#pragma mark - IntroLayer

@implementation IntroLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	IntroLayer *layer = [IntroLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}


-(void) onEnter
{
	[super onEnter];
    
	// In one second transition to the new scene
	[self scheduleOnce:@selector(makeTransition:) delay:0];
}


-(void) makeTransition:(ccTime)dt
{
	[[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1 scene:[HomeScene scene] withColor:ccBLACK]];
}
@end
