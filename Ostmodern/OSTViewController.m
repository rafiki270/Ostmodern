//
//  OSTViewController.m
//  Ostmodern
//
//  Created by Ondrej Rafaj on 22/01/2016.
//  Copyright © 2016 Ridiculous Innovations. All rights reserved.
//

#import "OSTViewController.h"
#import "OSTAppDelegate.h"


@interface OSTViewController ()

@end


@implementation OSTViewController


#pragma mark Accessors

- (OSTInteractor *)interactor {
    return [(OSTAppDelegate *)[[UIApplication sharedApplication] delegate] interactor];
}

#pragma mark Layout

- (void)setupLayout {
    
}

#pragma mark Subviews

- (void)addSubviews {
    
}

#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addSubviews];
    [self setupLayout];
}


@end
