//
//  AppDelegate.h
//  MATHGAME
//
//  Created by Sean Liu on 2017-11-06.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "QuestionGenerator.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

