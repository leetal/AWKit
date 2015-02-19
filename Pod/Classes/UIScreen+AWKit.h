//
//  UIScreen+AWKit.h
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-19.
//
//

#import <UIKit/UIKit.h>

@interface UIScreen (AWKit)
+ (BOOL)isRetina;
+ (CGRect)screenBounds;
+ (CGRect)screenBoundsForInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;
@end
