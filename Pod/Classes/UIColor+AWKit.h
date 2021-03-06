//
//  UIColor+AWKit.h
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-23.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (AWKit)

/*!
 *  Will return a UIColor from a hex value (Eg. @"#ffffff" == RGB(255,255,255) <==> White)
 *  @param hex A hex string to convert to a specific RGB color
 *  @return A UIColor with the color specified by a hex value
 */
+ (UIColor*)colorWithHexString:(NSString*)hex alpha:(CGFloat)alpha;

/*!
 *  Will return a UIColor from a hex value (Eg. 0xffffff == RGB(255,255,255) <==> White)
 *  @param hex A hex integer to convert to a specific RGB color, eg. 0xffffff
 *  @return A UIColor with the color specified by a hex value
 */
+ (UIColor*)colorWithHex:(UInt32)hex alpha:(CGFloat)alpha;

/*!
 *  Will return a random UIColor with a specified alpha (just for fun!)
 *  @param alpha Alpha between 0.0 and 1.0.
 *  @return A random UIColor with specified alpha
 */
+ (UIColor*)randomColorWithAlpha:(CGFloat)alpha;

@end
