//
//  Player.h
//  MATHGAME
//
//  Created by Sean Liu on 2017-11-06.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property NSString* display_name;
@property NSInteger score;
+(NSArray*)maxFivePlayerArray;

@end
