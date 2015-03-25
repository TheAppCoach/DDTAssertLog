//
//  DDTAssertLogManager.h
//  Pods
//
//  Created by Daren David Taylor on 25/03/2015.
//
//

#import <Foundation/Foundation.h>

#define DDTParameterAssertLog(condition,desc) NSParameterAssert(condition); if(!condition) [[DDTAssertLogManager sharedInstance] log:desc withLocation:[NSString stringWithFormat:@"%s:%d", __PRETTY_FUNCTION__, __LINE__]];

#define DDTAssertLog(condition, desc, ...) NSParameterAssert(condition); if(!condition) [[DDTAssertLogManager sharedInstance] log:desc withLocation:[NSString stringWithFormat:@"%s:%d", __PRETTY_FUNCTION__, __LINE__]];


@interface DDTAssertLogManager : NSObject

+ (instancetype) sharedInstance;
- (void)log:(NSString *)logString withLocation:(NSString *)location;

@property (nonatomic, strong) NSString *identifier;

@end
