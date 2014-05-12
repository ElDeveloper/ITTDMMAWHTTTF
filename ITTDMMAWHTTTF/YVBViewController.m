//
//  YVBViewController.m
//  ITTDMMAWHTTTF
//
//  Created by Yoshiki Vázquez Baeza on 5/12/14.
//  Copyright (c) 2014 Yoshiki Development Team. All rights reserved.
//

#import "YVBViewController.h"

#import "YVBDateChecker.h"

@implementation YVBViewController

@synthesize resultLabel=_resultLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	YVBDateChecker *lol = [[YVBDateChecker alloc] init];
	[_resultLabel setText:[lol getResult] ? @"YES" : @"NO"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
