//
//  OSTViewController.h
//  Ostmodern
//
//  Created by Ondrej Rafaj on 22/01/2016.
//  Copyright © 2016 Ridiculous Innovations. All rights reserved.
//

#import <UIKit/UIKit.h>


@class OSTInteractor;

@interface OSTViewController : UIViewController


@property (nonatomic, strong, readonly) OSTInteractor *interactor;

- (void)addSubviews;
- (void)setupLayout;


@end
