//
//  UIScreen+AWKit.h
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-19.
//
//

#import <UIKit/UIKit.h>

@interface UIScreen (AWKit)

/**
 *  @return YES if the host device has a retina display.
 */
+ (BOOL)isRetina;

/**
 *  @return CGRect of the screen bounds.
 */
+ (CGRect)screenBounds;

/**
 *  @return CGRect of the screen bounds for interface orientation (UIInterfaceOrientation).
 */
+ (CGRect)screenBoundsForInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;

@end
