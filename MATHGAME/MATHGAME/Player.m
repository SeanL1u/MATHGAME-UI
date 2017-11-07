//
//  Player.m
//  MATHGAME
//
//  Created by Sean Liu on 2017-11-06.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import "Player.h"

@implementation Player
- (instancetype)init{
    self = [super init];
    if (self) {
        self.score = 0;}
    return self;}


- (NSString *)description{
    return [NSString stringWithFormat:@"%@", self.display_name];}


+(NSArray*)maxFivePlayerArray{
    Player*player1 = [Player new];
    player1.display_name =@"Player 1";
    Player*player2 = [Player new];
    player2.display_name =@"Player 2";
    Player*player3 = [Player new];
    player3.display_name =@"Player 3";
    Player*player4 = [Player new];
    player4.display_name =@"Player 4";
    Player*player5 = [Player new];
    player5.display_name =@"Player 5";
    return @[player1,player2,player3,player4,player5];
}

@end
