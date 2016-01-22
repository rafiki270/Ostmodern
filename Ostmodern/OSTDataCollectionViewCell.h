//
//  OSTDataCollectionViewCell.h
//  Ostmodern
//
//  Created by Ondrej Rafaj on 22/01/2016.
//  Copyright © 2016 Ridiculous Innovations. All rights reserved.
//

#import "OSTCollectionViewCell.h"


@class OSTObjectEntity;

@interface OSTDataCollectionViewCell : OSTCollectionViewCell

@property (nonatomic, strong) OSTObjectEntity *object;


@end
