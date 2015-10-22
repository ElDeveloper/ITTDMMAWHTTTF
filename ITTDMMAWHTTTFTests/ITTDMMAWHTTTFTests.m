//
//  ITTDMMAWHTTTFTests.m
//  ITTDMMAWHTTTFTests
//
//  Created by Yoshiki Vázquez Baeza on 5/12/14.
//  Copyright (c) 2014 Yoshiki Development Team. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "YVBDateChecker.h"

@interface ITTDMMAWHTTTFTests : XCTestCase

@end

@implementation ITTDMMAWHTTTFTests

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

- (void)testTheDate
{
    YVBDateChecker *checker = [[YVBDateChecker alloc] init];

	NSDate *theDate;
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setTimeStyle:NSDateFormatterNoStyle];
	[formatter setDateFormat:@"MM/dd/yyyy"];

	// http://www.october212015.com
	// http://istodaythedaymartymcflyarriveswhenhetravelstothefuture.com
	theDate = [formatter dateFromString:@"10/21/2015"];

	XCTAssertTrue([checker _checkDateForDate:theDate], @"Test was correctly computed");
}

- (void)testOtherDate
{
    YVBDateChecker *checker = [[YVBDateChecker alloc] init];

	NSDate *theDate;
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setTimeStyle:NSDateFormatterNoStyle];
	[formatter setDateFormat:@"MM/dd/yyyy"];

	// http://www.october212015.com
	// http://istodaythedaymartymcflyarriveswhenhetravelstothefuture.com
	theDate = [formatter dateFromString:@"11/11/2011"];

	XCTAssertFalse([checker _checkDateForDate:theDate], @"The date is indeed correct");
}


@end
