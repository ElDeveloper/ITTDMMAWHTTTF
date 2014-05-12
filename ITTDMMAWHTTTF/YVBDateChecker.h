//
//  YVBDateChecker.h
//  ITTDMMAWHTTTF
//
//  Created by Yoshiki Vázquez Baeza on 5/12/14.
//  Copyright (c) 2014 Yoshiki Development Team. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface YVBDateChecker : NSObject{
	BOOL result;
}

@property (atomic, readonly) BOOL result;
-(BOOL)getResult;
-(BOOL)_checkDateForDate:(NSDate *)date;

@end
