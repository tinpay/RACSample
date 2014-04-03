//
//  RACSampleTests.m
//  RACSampleTests
//
//  Created by Fukui Shohei on 2014/04/02.
//  Copyright (c) 2014年 tinpay. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TPYViewController.h"

@interface RACSampleTests : XCTestCase

@end

@implementation RACSampleTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCalcText1Text2
{
    
    TPYViewController *vc = [[TPYViewController alloc] init];
    
    NSString *answer1 = [vc calcText1:@"10" text2:@"20"];
    XCTAssertEqualObjects(answer1, @"30",@"数字と数字の普通の計算");

    NSString *answer2 = [vc calcText1:@"10" text2:@"a20"];
    XCTAssertEqualObjects(answer2, @"Not a Number",@"文字列が混ざった計算１の計算");

    NSString *answer3 = [vc calcText1:@"a10" text2:@"20"];
    XCTAssertEqualObjects(answer3, @"Not a Number",@"文字列が混ざった計算２の計算");

    NSString *answer4 = [vc calcText1:@"aa" text2:@"bb"];
    XCTAssertEqualObjects(answer4, @"Not a Number",@"両方文字列の計算");

}

@end
