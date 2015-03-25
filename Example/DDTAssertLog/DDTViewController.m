//
//  DDTViewController.m
//  DDTAssertLog
//
//  Created by mcBontempi on 03/25/2015.
//  Copyright (c) 2014 mcBontempi. All rights reserved.
//

#import "DDTViewController.h"
#import <DDTAssertLogManager.h>

@interface DDTViewController ()

@end

@implementation DDTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [DDTAssertLogManager sharedInstance].identifier = @"DDT2";
    
    [self testParameterAssert:nil];
}

- (void)testParameterAssert:(NSString *)shouldntBeNil
{
    DDTParameterAssertLog(shouldntBeNil, @"Whats gone on here");
    
    DDTAssertLog(0, @"normal assert");
}
@end
