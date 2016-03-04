//
//  Capsule.m
//  SimpleCatalog
//
//  Created by François Vessaz on 08/02/16.
//  Copyright © 2016 Nespresso. All rights reserved.
//

#import "Capsule.h"

@interface Capsule ()

@end

@implementation Capsule

#pragma mark - Lifecycle

- (instancetype)initWithJson:(NSDictionary*)capsuleJson locale:(NSLocale*)locale
{
    self = [super init];
    if (self) {

    }
    return self;
}

#pragma mark - Public

- (NSString*)formattedPrice
{
    return nil;
}

@end
