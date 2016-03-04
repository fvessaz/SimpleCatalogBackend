//
//  Capsule.h
//  SimpleCatalog
//
//  Created by François Vessaz on 08/02/16.
//  Copyright © 2016 Nespresso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Capsule : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, assign) double price;
@property (nonatomic, strong) NSString* taste;
@property (nonatomic, strong) NSString* productDescription;
@property (nonatomic, strong) UIImage* icon;

- (instancetype)initWithJson:(NSDictionary*)capsuleJson locale:(NSLocale*)locale;

- (NSString*)formattedPrice;

@end
