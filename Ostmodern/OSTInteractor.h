//
//  OSTInteractor.h
//  Ostmodern
//
//  Created by Ondrej Rafaj on 22/01/2016.
//  Copyright © 2016 Ridiculous Innovations. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void (^OSTInteractorReturnDataBlock)(NSArray *data);
typedef void (^OSTInteractorErrorBlock)(NSError *error);


@interface OSTInteractor : NSObject

- (void)loadDataSetsWithSuccess:(OSTInteractorReturnDataBlock)successBlock andError:(OSTInteractorErrorBlock)errorBlock;


@end
