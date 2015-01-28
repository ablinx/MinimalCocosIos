//
//  CongratsScene.h
//  PopLetters
//
//  Created by Mario Lellis on 06/10/12.
//  Copyright 2012 Adorama Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface CongratsScene : CCScene {
    
    CCParticleSnow *emitter;
    CGSize winSize;
}

+(id) scene;

@property (nonatomic,retain) CCParticleSnow *emitter;

@end
