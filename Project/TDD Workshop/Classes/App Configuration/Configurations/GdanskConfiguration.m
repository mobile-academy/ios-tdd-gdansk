//  
//  Copyright (c) 2014 Mobile Warsaw All rights reserved.
//  


#import "GdanskConfiguration.h"


@implementation GdanskConfiguration
@synthesize parseApplicationId, parseClientId;

#pragma mark - Object life cycle

- (id)init {
    self = [super init];
    if (self) {
        self.parseApplicationId = @"bZF80VR6wUbeQ8UQ74FqIkZxXBfG1NBmQ4GgUkgr";
        self.parseClientId = @"cfOJboB8Risg0a4skIpGHnVTfqexrTuDfeoDcSnQ";
    }
    return self;
}

@end