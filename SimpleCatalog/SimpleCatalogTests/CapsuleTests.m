//
//  CapsuleTests.m
//  CapsuleTests
//
//  Created by François Vessaz on 08/02/16.
//  Copyright © 2016 Nespresso. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "Capsule.h"

@interface CapsuleTests : XCTestCase

@property (nonatomic, strong) Capsule* capsule;

@end

@implementation CapsuleTests

- (void)setUp {
    [super setUp];

    self.capsule = [[Capsule alloc] initWithJson:@{@"id": @"id1",
                                                   @"name": @"Kazaar",
                                                   @"price": @0.55,
                                                   @"taste": @"EXCEPTIONALLY INTENSE AND SYRUPY",
                                                   @"description": @"A daring blend including Robustas from Brazil and Guatemala, specially prepared for Nespresso, and a separately roasted Arabica from South America, Kazaar is a coffee of exceptional intensity. That full bodied Ristretto is rich in roasted notes. In cup it develops a powerful bitterness and notes of pepper that are balanced by a dense and creamy texture.",
                                                   @"img": @"http://localhost/interview-test-1/img/1436428549494.png"}
                    locale:[[NSLocale alloc] initWithLocaleIdentifier:@"fr_ch"]];
}

- (void)testFormattedPrice {
    XCTAssertEqualObjects([self.capsule formattedPrice], @"CHF 0.55", @"Price should be formatted according to locale");
}

@end
