//
//  AppDelegate.h
//  Ostmodern
//
//  Created by Ondrej Rafaj on 22/01/2016.
//  Copyright © 2016 Ridiculous Innovations. All rights reserved.
//

#import <UIKit/UIKit.h>


@class OSTInteractor;

@interface OSTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) OSTInteractor *interactor;

@property (strong, nonatomic) UIWindow *window;


@end

