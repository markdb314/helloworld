//
//  MBSampleClassTest.m
//  HelloWorld
//
//  Created by Mark Bryant on 2/12/14.
//  Copyright (c) 2014 Mark Bryant. All rights reserved.
//

#import "MBSampleClass.h"
#import <XCTest/XCTest.h>

@interface MBSampleClassTest : XCTestCase

@end

@implementation MBSampleClassTest {
    MBSampleClass* _sampleClass;
}

- (void)setUp {
    [super setUp];
    _sampleClass = [[MBSampleClass alloc] init];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown {
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
    _sampleClass = nil;
}

- (void)testExample {
    [_sampleClass assignCoolId];
    NSString* theCoolId = [_sampleClass getCoolId];
    XCTAssertTrue([theCoolId isEqualToString:@"something awesome"]);
}

@end
