//
//  YVBDateChecker.m
//  ITTDMMAWHTTTF
//
//  Created by Yoshiki Vazquez Baeza on 5/12/14.
//  Copyright (c) 2014 Yoshiki Development Team. All rights reserved.
//

#import "YVBDateChecker.h"


@implementation YVBDateChecker

@synthesize result=_result;

-(id)init{
	if (self = [super init]) {
		_result=NO;
	}
	return self;
}

-(BOOL)_checkDateForDate:(NSDate *)date{
	NSDate *theDate;
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setTimeStyle:NSDateFormatterNoStyle];
	[formatter setDateFormat:@"MM/dd/yyyy"];

	// http://www.october212015.com
	// http://istodaythedaymartymcflyarriveswhenhetravelstothefuture.com
	theDate = [formatter dateFromString:@"10/21/2015"];

	if ([theDate compare:date] == NSOrderedSame){
		return YES;
	}

	return NO;
}

-(BOOL)getResult{
	NSDateFormatter *formatter=[[NSDateFormatter alloc] init];
	[formatter setDateFormat:@"MM/dd/yyyy"];
	NSDate *today;
	today=[formatter dateFromString:[formatter stringFromDate:[NSDate date]]];

	_result = [self _checkDateForDate:today];

	return _result;
}


@end
