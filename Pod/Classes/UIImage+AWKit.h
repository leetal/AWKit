//
//  UIImage+AWKit.h
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-19.
//  Note: None of these methods do any resizing of the original image
//

#import <UIKit/UIKit.h>

@interface UIImage (AWKit)

/**
 Creates an image with the scale factor of the main screen.
 @returns The UIImage or nil if data was nil.
 */
+ (UIImage*)imageWithDataScreenScale:(NSData*)data;

/**
 Calculates the aspect fit size of an image given a constraining size
 @returns The size of the image constrined with aspect fit
 */
- (CGSize)AWImageAspectFitSize:(CGSize)imageSize constrainedToSize:(CGSize)constrainingSize;

/**
 Calculates the image size given just the height with proportional ratio
 @returns The size of the image given a certain height
 */
- (CGSize)sizeFromHeight:(CGFloat)height;

/**
 Calculates the image size given just the width with proportional ratio
 @returns The size of the image given a certain width
 */
- (CGSize)sizeFromWidth:(CGFloat)width;

/**
 As AWImageAspectFitSize, but calculated on self (UIImage shorthand)
 @returns The size of the image constrined with aspect fit
 */
- (CGSize)sizeToAspectFitSize:(CGSize)size;

@end
