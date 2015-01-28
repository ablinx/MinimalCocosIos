//
//  Shop.m
//  PopLetters
//
//  Created by Alexander Cram on 31/05/2014.
//  Copyright (c) 2014 Adorama Apps. All rights reserved.
//

#import "Shop.h"
#import "cocos2d.h"

@implementation Shop
+(CCScene *) scene
{
    CCScene *scene = [CCScene node];
    Shop *shop = [Shop node];
    [scene addChild: shop];
    return scene;
}

-(void) addRepeatButtonOnScreen
{
    
	CCMenuItemImage * menuItem1 =[CCMenuItemImage itemWithNormalImage:@"menuBubbles.png"
														selectedImage: @"menuBubbles.png"
															   target:self
															 selector:@selector(loadHome:)];
    
	CCMenu *menu = [CCMenu menuWithItems:menuItem1,nil];
    CGSize windowSize = [[CCDirector sharedDirector] winSize];
	menu.position = ccp(windowSize.width/1.1, windowSize.height/1.08);
    [menu alignItemsHorizontallyWithPadding:5];
	
	[self addChild:menu];
}

-(id) init
{
    if( self = [super init]){
        [self addWebView];
    }
    return self;
    
}

-(void) addWebView
{
    CGSize screenSize = [[CCDirector sharedDirector] winSize];
    UIWebView *webview = [[[UIWebView alloc]init]autorelease];
    int offset = screenSize.height/12;
    [webview initWithFrame:CGRectMake(0, offset , screenSize.width, screenSize.height- offset)];
    NSString *urlAddress = @"http://www.bbc.co.uk";
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObject = [NSURLRequest requestWithURL:url];
    [webview loadRequest:requestObject];
    
    UIView* glView = [[CCDirector sharedDirector] openGLView];
    glView.opaque=NO;
    [glView addSubview:webview.viewForBaselineLayout];
}

-(void) loadHome:(CCMenuItem *) menuItem
{
	//[[CCDirector sharedDirector] replaceScene:[HomeScene scene]];
    
}
- (void) dealloc{
    [super dealloc];
}

@end
