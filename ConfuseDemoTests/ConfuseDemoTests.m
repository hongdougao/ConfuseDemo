//
//  ConfuseDemoTests.m
//  ConfuseDemoTests
//
//  Created by Yangyue on 15/5/20.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface ConfuseDemoTests : XCTestCase

@end

@implementation ConfuseDemoTests

- (void)setUp {
    [super setUp];


    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    NSLog(@"混淆: %s",__FUNCTION__);

    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
