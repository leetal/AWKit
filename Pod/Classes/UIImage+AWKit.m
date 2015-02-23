//
//  UIImage+AWKit.m
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-19.
//  Note: None of these methods do any resizing of the original image
//

#import "UIImage+AWKit.h"
#import "AWKitMath.h"

@implementation UIImage (AWKit)

#pragma mark Static Private functions
static UIImage * AWImageWithDataAtScale(NSData *data, CGFloat scale)
{
    if ([UIImage instancesRespondToSelector:@selector(initWithData:scale:)])
    {
        return [[UIImage alloc] initWithData:data scale:scale];
    }
    else
    {
        UIImage *image = [[UIImage alloc] initWithData:data];
        return [[UIImage alloc] initWithCGImage:[image CGImage] scale:scale orientation:image.imageOrientation];
    }
}

static CGFloat AWImageScaleFactorToFitSize(CGSize imageSize, CGSize constrainSize)
{
    if (CGSizeEqualToSize(imageSize, constrainSize)) {
        return 1.0f;
    }

    CGFloat scaleFactorWidth    = imageSize.width / constrainSize.width;
    CGFloat scaleFactorHeight   = imageSize.height / constrainSize.height;
    CGFloat scaleFactor         = MAX(scaleFactorHeight, scaleFactorWidth);

    return scaleFactor;
}

static CGFloat AWImageScaleFactorToFillSize(CGSize imageSize, CGSize constrainSize)
{
    if (CGSizeEqualToSize(imageSize, constrainSize)) {
        return 1.0f;
    }

    CGFloat scaleFactorWidth    = imageSize.width / constrainSize.width;
    CGFloat scaleFactorHeight   = imageSize.height / constrainSize.height;
    CGFloat scaleFactor         = MIN(scaleFactorHeight, scaleFactorWidth);

    return scaleFactor;
}

#pragma mark Public accessors
+ (UIImage*)imageWithDataScreenScale:(NSData*)data
{
    return data ? AWImageWithDataAtScale(data, [UIScreen mainScreen].scale) : nil;
}

- (CGSize)AWImageAspectFitSize:(CGSize)imageSize constrainedToSize:(CGSize)constrainSize
{
    CGFloat scaleFactor     = AWImageScaleFactorToFitSize(imageSize, constrainSize);
    CGSize scaleSize       = CGSizeZero;

    scaleSize.width        = AWFloor(imageSize.width / scaleFactor);
    scaleSize.height       = AWFloor(imageSize.height / scaleFactor);

    return scaleSize;
}

- (CGSize)AWImageAspectFillSize:(CGSize)imageSize constrainedToSize:(CGSize)constrainSize
{
    CGFloat scaleFactor     = AWImageScaleFactorToFillSize(imageSize, constrainSize);
    CGSize scaleSize       = CGSizeZero;

    scaleSize.width        = AWFloor(imageSize.width / scaleFactor);
    scaleSize.height       = AWFloor(imageSize.height / scaleFactor);

    return scaleSize;
}

- (CGSize)sizeFromHeight:(CGFloat)height
{
    const CGFloat ratio = height / self.size.height;

    CGSize size = CGSizeZero;
    size.height = AWFloor(ratio * self.size.height);
    size.width = AWFloor(ratio * self.size.width);

    return size;
}

- (CGSize)sizeFromWidth:(CGFloat)width
{
    const CGFloat ratio = width / self.size.width;

    CGSize size = CGSizeZero;
    size.height = AWFloor(ratio * self.size.height);
    size.width = AWFloor(ratio * self.size.width);

    return size;
}

- (CGSize)sizeToAspectFitSize:(CGSize)size
{
    return [self AWImageAspectFitSize:self.size constrainedToSize:size];
}
@end
