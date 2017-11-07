//
//  QuestionGenerator.m
//  MATHGAME UI
//
//  Created by Sean Liu on 2017-11-06.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import "QuestionGenerator.h"

@implementation QuestionGenerator
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSArray* operators = @[@"+",@"-",@"x",@"/"];
        int leftValue = arc4random() % 11;
        int rightValue = arc4random() % 11;
        int result = 0;
        int operator_index = arc4random() % 3;
        NSString *operator = operators[operator_index];
        
        switch (operator_index) {
            case 0:
                result = leftValue + rightValue;
                break;
            case 1:
                result = leftValue - rightValue;
                break;
            case 2:
                result = leftValue * rightValue;
                break;
            case 3:
                result = leftValue / rightValue;
                break;
            default:
                break;
        }
        NSString* left = [NSString stringWithFormat: @"%d", leftValue];
        NSString* right = [NSString stringWithFormat: @"%d", rightValue];
    
        NSLog(@"Anwser : %@", @(result));
//        NSArray* questionGenerated =  @[left,right,@(result),operator];
//        NSString* leftValue = questionGenerated[0];
//        NSString* rightValue = questionGenerated[1];
//        NSString* operator = questionGenerated[3];
//        NSInteger result = [questionGenerated[2] integerValue];
        
        self.questionString = [NSString stringWithFormat:@"%@ %@ %@ = ?" ,left,operator,right];
        self.anwserString = [NSString stringWithFormat:@"%i",result];
    }
    
    
    
    return self;
    }

@end
