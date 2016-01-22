//
//  OSTObjectEntity.m
//  Ostmodern
//
//  Created by Ondrej Rafaj on 22/01/2016.
//  Copyright © 2016 Ridiculous Innovations. All rights reserved.
//

#import "OSTObjectEntity.h"


NSString *const kOSTObjectsUid = @"uid";
NSString *const kOSTObjectsSummary = @"summary";
NSString *const kOSTObjectsPlans = @"plans";
NSString *const kOSTObjectsImageUrls = @"image_urls";
NSString *const kOSTObjectsBody = @"body";
NSString *const kOSTObjectsSlug = @"slug";
NSString *const kOSTObjectsLowestAmount = @"lowest_amount";
NSString *const kOSTObjectsCreated = @"created";
NSString *const kOSTObjectsQuoter = @"quoter";
NSString *const kOSTObjectsModified = @"modified";
NSString *const kOSTObjectsTempImage = @"temp_image";
NSString *const kOSTObjectsEndsOn = @"ends_on";
NSString *const kOSTObjectsSetTypeSlug = @"set_type_slug";
NSString *const kOSTObjectsSelf = @"self";
NSString *const kOSTObjectsHasPrice = @"has_price";
NSString *const kOSTObjectsScheduleUrl = @"schedule_url";
NSString *const kOSTObjectsLanguageModified = @"language_modified";
NSString *const kOSTObjectsCachedFilmCount = @"cached_film_count";
NSString *const kOSTObjectsSetTypeUrl = @"set_type_url";
NSString *const kOSTObjectsFormattedBody = @"formatted_body";
NSString *const kOSTObjectsFeatured = @"featured";
NSString *const kOSTObjectsLanguageModifiedBy = @"language_modified_by";
NSString *const kOSTObjectsLanguageVersionUrl = @"language_version_url";
NSString *const kOSTObjectsCreatedBy = @"created_by";
NSString *const kOSTObjectsLanguagePublishOn = @"language_publish_on";
NSString *const kOSTObjectsActive = @"active";
NSString *const kOSTObjectsLanguageEndsOn = @"language_ends_on";
NSString *const kOSTObjectsLanguageVersionNumber = @"language_version_number";
NSString *const kOSTObjectsModifiedBy = @"modified_by";
NSString *const kOSTObjectsTempId = @"temp_id";
NSString *const kOSTObjectsHierarchyUrl = @"hierarchy_url";
NSString *const kOSTObjectsQuote = @"quote";
NSString *const kOSTObjectsVersionUrl = @"version_url";
NSString *const kOSTObjectsFilmCount = @"film_count";
NSString *const kOSTObjectsVersionNumber = @"version_number";
NSString *const kOSTObjectsTitle = @"title";
NSString *const kOSTObjectsPublishOn = @"publish_on";
NSString *const kOSTObjectsItems = @"items";
NSString *const kOSTObjectsScheduleUrls = @"schedule_urls";


@implementation OSTObjectEntity


#pragma mark Initialization

- (instancetype)init {
    @throw [NSException exceptionWithName:@"Wrong initialization" reason:@"Object needs to be initialized using initWithObject:" userInfo:nil];
}

- (instancetype)initWithObject:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _uid = [self objectOrNilForKey:kOSTObjectsUid fromDictionary:dictionary];
        _summary = [self objectOrNilForKey:kOSTObjectsSummary fromDictionary:dictionary];
        _plans = [self objectOrNilForKey:kOSTObjectsPlans fromDictionary:dictionary];
        _imageUrls = [self objectOrNilForKey:kOSTObjectsImageUrls fromDictionary:dictionary];
        _body = [self objectOrNilForKey:kOSTObjectsBody fromDictionary:dictionary];
        _slug = [self objectOrNilForKey:kOSTObjectsSlug fromDictionary:dictionary];
        _lowestAmount = [self objectOrNilForKey:kOSTObjectsLowestAmount fromDictionary:dictionary];
        _created = [self objectOrNilForKey:kOSTObjectsCreated fromDictionary:dictionary];
        _quoter = [self objectOrNilForKey:kOSTObjectsQuoter fromDictionary:dictionary];
        _modified = [self objectOrNilForKey:kOSTObjectsModified fromDictionary:dictionary];
        _tempImage = [self objectOrNilForKey:kOSTObjectsTempImage fromDictionary:dictionary];
        _endsOn = [self objectOrNilForKey:kOSTObjectsEndsOn fromDictionary:dictionary];
        _setTypeSlug = [self objectOrNilForKey:kOSTObjectsSetTypeSlug fromDictionary:dictionary];
        _objectsSelf = [self objectOrNilForKey:kOSTObjectsSelf fromDictionary:dictionary];
        _hasPrice = [[self objectOrNilForKey:kOSTObjectsHasPrice fromDictionary:dictionary] boolValue];
        _scheduleUrl = [self objectOrNilForKey:kOSTObjectsScheduleUrl fromDictionary:dictionary];
        _languageModified = [self objectOrNilForKey:kOSTObjectsLanguageModified fromDictionary:dictionary];
        _cachedFilmCount = [[self objectOrNilForKey:kOSTObjectsCachedFilmCount fromDictionary:dictionary] doubleValue];
        _setTypeUrl = [self objectOrNilForKey:kOSTObjectsSetTypeUrl fromDictionary:dictionary];
        _formattedBody = [self objectOrNilForKey:kOSTObjectsFormattedBody fromDictionary:dictionary];
        _featured = [[self objectOrNilForKey:kOSTObjectsFeatured fromDictionary:dictionary] boolValue];
        _languageModifiedBy = [self objectOrNilForKey:kOSTObjectsLanguageModifiedBy fromDictionary:dictionary];
        _languageVersionUrl = [self objectOrNilForKey:kOSTObjectsLanguageVersionUrl fromDictionary:dictionary];
        _createdBy = [self objectOrNilForKey:kOSTObjectsCreatedBy fromDictionary:dictionary];
        _languagePublishOn = [self objectOrNilForKey:kOSTObjectsLanguagePublishOn fromDictionary:dictionary];
        _active = [[self objectOrNilForKey:kOSTObjectsActive fromDictionary:dictionary] boolValue];
        _languageEndsOn = [self objectOrNilForKey:kOSTObjectsLanguageEndsOn fromDictionary:dictionary];
        _languageVersionNumber = [[self objectOrNilForKey:kOSTObjectsLanguageVersionNumber fromDictionary:dictionary] doubleValue];
        _modifiedBy = [self objectOrNilForKey:kOSTObjectsModifiedBy fromDictionary:dictionary];
        _tempId = [[self objectOrNilForKey:kOSTObjectsTempId fromDictionary:dictionary] doubleValue];
        _hierarchyUrl = [self objectOrNilForKey:kOSTObjectsHierarchyUrl fromDictionary:dictionary];
        _quote = [self objectOrNilForKey:kOSTObjectsQuote fromDictionary:dictionary];
        _versionUrl = [self objectOrNilForKey:kOSTObjectsVersionUrl fromDictionary:dictionary];
        _filmCount = [[self objectOrNilForKey:kOSTObjectsFilmCount fromDictionary:dictionary] doubleValue];
        _versionNumber = [[self objectOrNilForKey:kOSTObjectsVersionNumber fromDictionary:dictionary] doubleValue];
        _title = [self objectOrNilForKey:kOSTObjectsTitle fromDictionary:dictionary];
        _publishOn = [self objectOrNilForKey:kOSTObjectsPublishOn fromDictionary:dictionary];
        _items = [self objectOrNilForKey:kOSTObjectsItems fromDictionary:dictionary];
        _scheduleUrls = [self objectOrNilForKey:kOSTObjectsScheduleUrls fromDictionary:dictionary];
    }
    return self;
}

#pragma mark Data handling

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict {
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


@end
