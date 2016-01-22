//
//  OSTInteractor.m
//  Ostmodern
//
//  Created by Ondrej Rafaj on 22/01/2016.
//  Copyright © 2016 Ridiculous Innovations. All rights reserved.
//

#import "OSTInteractor.h"
#import <AFNetworking/AFNetworking.h>
#import "OSTObjectEntity.h"
#import "OSTConfig.h"


@interface OSTInteractor ()

@property (nonatomic, strong, readwrite) AFURLSessionManager *manager;

@end


@implementation OSTInteractor


#pragma mark Components

- (AFURLSessionManager *)manager {
    if (!_manager) {
        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
        _manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    }
    return _manager;
}

#pragma mark Building URL's

- (NSURL *)urlForEndPoint:(NSString *)endpoint {
    NSString *urlString = [[OSTConfig apiBaseUrl] stringByAppendingPathComponent:endpoint];
    return [NSURL URLWithString:urlString];
}

#pragma mark Processing data

- (NSArray *)convertedObjects:(NSArray *)data {
    NSMutableArray *arr = [NSMutableArray array];
    for (NSDictionary *object in data) {
        OSTObjectEntity *o = [[OSTObjectEntity alloc] init];
        
        [arr addObject:o];
    }
    return [arr copy];
}

#pragma mark Loading data

- (void)loadDataSetsWithSuccess:(OSTInteractorReturnDataBlock)successBlock andError:(OSTInteractorErrorBlock)errorBlock {
    NSURLRequest *request = [NSURLRequest requestWithURL:[self urlForEndPoint:@"sets"]];
    
    NSURLSessionDataTask *dataTask = [self.manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            if (errorBlock) {
                errorBlock(error);
            }
        }
        else {
            if ([responseObject isKindOfClass:[NSDictionary class]] && responseObject[@"objects"]) {
                if (successBlock) {
                    successBlock([self convertedObjects:responseObject[@"objects"]]);
                }
            }
            else {
                // TODO: Handle missing objects
            }
        }
    }];
    [dataTask resume];
}


@end
