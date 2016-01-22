//
//  OSTObjectEntity.h
//  Ostmodern
//
//  Created by Ondrej Rafaj on 22/01/2016.
//  Copyright © 2016 Ridiculous Innovations. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface OSTObjectEntity : NSObject

@property (nonatomic, strong, readonly) NSString *uid;
@property (nonatomic, strong, readonly) NSString *summary;
@property (nonatomic, strong, readonly) NSArray *plans;
@property (nonatomic, strong, readonly) NSArray *imageUrls;
@property (nonatomic, strong, readonly) NSString *body;
@property (nonatomic, strong, readonly) NSString *slug;
@property (nonatomic, strong, readonly) id lowestAmount;
@property (nonatomic, strong, readonly) NSString *created;
@property (nonatomic, strong, readonly) NSString *quoter;
@property (nonatomic, strong, readonly) NSString *modified;
@property (nonatomic, strong, readonly) NSString *tempImage;
@property (nonatomic, strong, readonly) NSString *endsOn;
@property (nonatomic, strong, readonly) NSString *setTypeSlug;
@property (nonatomic, strong, readonly) NSString *objectsSelf;
@property (nonatomic, readonly) BOOL hasPrice;
@property (nonatomic, strong, readonly) NSString *scheduleUrl;
@property (nonatomic, strong, readonly) NSString *languageModified;
@property (nonatomic, readonly) double cachedFilmCount;
@property (nonatomic, strong, readonly) NSString *setTypeUrl;
@property (nonatomic, strong, readonly) NSString *formattedBody;
@property (nonatomic, readonly) BOOL featured;
@property (nonatomic, strong, readonly) id languageModifiedBy;
@property (nonatomic, strong, readonly) NSString *languageVersionUrl;
@property (nonatomic, strong, readonly) NSString *createdBy;
@property (nonatomic, strong, readonly) NSString *languagePublishOn;
@property (nonatomic, readonly) BOOL active;
@property (nonatomic, strong, readonly) NSString *languageEndsOn;
@property (nonatomic, readonly) double languageVersionNumber;
@property (nonatomic, strong, readonly) id modifiedBy;
@property (nonatomic, readonly) double tempId;
@property (nonatomic, strong, readonly) id hierarchyUrl;
@property (nonatomic, strong, readonly) NSString *quote;
@property (nonatomic, strong, readonly) NSString *versionUrl;
@property (nonatomic, readonly) double filmCount;
@property (nonatomic, readonly) double versionNumber;
@property (nonatomic, strong, readonly) NSString *title;
@property (nonatomic, strong, readonly) NSString *publishOn;
@property (nonatomic, strong, readonly) NSArray *items;
@property (nonatomic, strong, readonly) NSArray *scheduleUrls;

- (instancetype)initWithObject:(NSDictionary *)dictionary;


@end
