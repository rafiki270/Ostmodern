//
//  OSTEmptyCollectionViewCell.m
//  Ostmodern
//
//  Created by Ondrej Rafaj on 22/01/2016.
//  Copyright © 2016 Ridiculous Innovations. All rights reserved.
//

#import "OSTEmptyCollectionViewCell.h"
#import "Masonry.h"


@interface OSTEmptyCollectionViewCell ()

@property (nonatomic, strong, readwrite) UILabel *label;

@end


@implementation OSTEmptyCollectionViewCell


#pragma mark Layout

- (void)setupLayout {
    [super setupLayout];
    
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@10);
        make.left.and.right.equalTo(@15);
        make.bottom.equalTo(self).with.offset(-10);
    }];
}

#pragma mark Subviews

- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] init];
        [_label setTextColor:[UIColor blackColor]];
        [_label setBackgroundColor:[UIColor clearColor]];
        [_label setText:@"No data available, please refresh!"];
    }
    return _label;
}

- (void)addSubviews {
    [super addSubviews];
    
    [self addSubview:self.label];
}

@end
