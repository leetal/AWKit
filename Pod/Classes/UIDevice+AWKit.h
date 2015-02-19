//
//  UIDevice+AWKit.h
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-19.
//
//

#import <UIKit/UIKit.h>

@interface UIDevice (AWKit)
+ (BOOL)isPad;
+ (BOOL)isPhone;
+ (BOOL)isPhone4;
+ (BOOL)isPhone5;
+ (BOOL)isPhone6;
+ (BOOL)isPhone6Plus;

+ (BOOL)isBiggerThan5;

+ (NSUInteger)deviceSystemMajorVersion;
+ (BOOL)isDeviceSystemMajorVersionAtLeast8;
+ (BOOL)isDeviceSystemMajorVersionLessThan8;
@end
