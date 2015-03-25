//
//  DDTAssertLogManager.m
//  Pods
//
//  Created by Daren David Taylor on 25/03/2015.
//
//

#import "DDTAssertLogManager.h"
#import <Parse/Parse.h>

@implementation DDTAssertLogManager

+ (instancetype) sharedInstance {
    static dispatch_once_t pred;
    static id shared = nil;
    dispatch_once(&pred, ^{
        shared = [[super alloc] initUniqueInstanceWithIdentifier];
    });
    return shared;
}

- (instancetype) initUniqueInstanceWithIdentifier {
    
    [Parse setApplicationId:@"JIRhWn62DGwCwOADZibahSjBnspd2cvsSiKbFD5n"
                  clientKey:@"lvqtwpdTmTmjRuEwe5Yy36AIqUdZkb5NwC5TboQJ"];
    
    return [super init];
}

- (void)log:(NSString *)logString withLocation:(NSString *)location
{
    PFObject *testObject = [PFObject objectWithClassName:@"DDTAssertLog"];
    testObject[@"AssertDescription"] = logString;
    testObject[@"AssertLocation"] = location;
    testObject[@"Identifier"] = self.identifier;
    [testObject saveInBackground];
}

@end
