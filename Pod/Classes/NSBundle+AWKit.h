//
//  NSBundle+AWKit.h
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-19.
//
//

#import <Foundation/Foundation.h>

@interface NSBundle (AWKit)

/*!
 *  Use this class method to fetch the application bundle name.
 *  @return String value of the application bundle name
 */
+ (NSString*)bundleName;

/*!
 *  Use this class method to fetch the application bundle identifier.
 *  @return String value of the application bundle identifier
 */
+ (NSString*)bundleIdentifier;

/*!
 *  Use this class method to fetch the application version number.
 *  @return UInt32 value of the application version number
 */
+ (UInt32)versionNumber;

/*!
 *  Use this class method to fetch the application version.
 *  @return String value of the application version
 */
+ (NSString*)version;

@end
