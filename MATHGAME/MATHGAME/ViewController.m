//
//  ViewController.m
//  MATHGAME UI
//
//  Created by Sean Liu on 2017-11-06.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import "ViewController.h"
#import "QuestionGenerator.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *questionLabel;
@property (strong, nonatomic) IBOutlet UITextField *anwserTextField;
@property (nonatomic) NSInteger number_of_player;
@property (strong,nonatomic) NSMutableArray* players;
@property (strong,nonatomic) Player* yourTurn;
@property (strong, nonatomic) QuestionGenerator* game;
@property (strong, nonatomic) IBOutlet UILabel *infoLabel;
@property NSInteger player_index;
@property (strong, nonatomic) IBOutlet UILabel *anwserBoolLabel;
- (IBAction)enter:(id)sender;
- (IBAction)addPlayerButton:(id)sender;

@end

@implementation ViewController
//--------------------------------------------
-(void)new_question{
    _game = [QuestionGenerator new];
    _questionLabel.text = _game.questionString;}


-(void)setPlayer{
    if (_player_index  < (_players.count-1)){
        _player_index += 1;}
    else{
        _player_index = 0;}
    
    _yourTurn = _players[(_player_index)];}



-(void)infoUpdate{
    NSMutableString* info = [[NSString stringWithFormat:@"Current Player: %@\n", _yourTurn] mutableCopy];
    
    for (Player* player in _players){
            [info appendFormat: @"%@",[NSString stringWithFormat: @"%@ score: %ld \n", player,(long)player.score]];
    }
    
    _infoLabel.text = info;}



-(void)cycle{
    [self new_question];
    [self setPlayer];
    [self infoUpdate];
    
}
-(void)addPlayer{
    if (_players.count == _number_of_player){
        if (_number_of_player == 5){
            NSLog(@"cant add more ppl");}
        else{
            _number_of_player += 1;
            [_players addObject:[Player maxFivePlayerArray][(_number_of_player - 1)]];}
    }}




//--------------------------------------------

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _number_of_player = 0;
    _players = [NSMutableArray new];
    [self addPlayer];
    
    _player_index = -1;
    [self cycle];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-------------------------------------------



- (IBAction)enter:(id)sender {
    if([_anwserTextField.text isEqualToString:_game.anwserString]){
        _anwserBoolLabel.text = (@"correct");
        _yourTurn.score += 1;
        [self cycle];}
    
    else{
        _anwserBoolLabel.text = (@"wrong");
        _anwserTextField.text = @"";}
    
    _anwserTextField.text = @"";
    
}

- (IBAction)addPlayerButton:(id)sender {
    [self addPlayer];}

@end
