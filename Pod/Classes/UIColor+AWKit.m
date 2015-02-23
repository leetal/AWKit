//
//  UIColor+AWKit.m
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-23.
//
//

#import "UIColor+AWKit.h"

@implementation UIColor (AWKit)

+ (UIColor*)colorWithHexString:(NSString*)hex alpha:(CGFloat)alpha
{
    UInt32 rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hex];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithHex:rgbValue alpha:alpha];
}

+ (UIColor*)colorWithHex:(UInt32)hex alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:((hex & 0xFF0000) >> 16)/255.0
                           green:((hex & 0x00FF00) >> 8)/255.0
                            blue:(hex & 0x0000FF)/255.0
                           alpha:alpha];
}

+ (UIColor*)randomColorWithAlpha:(CGFloat)alpha
{
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white (just to up the scale and variety a little, since too black or white never is fun)
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:alpha];
}

@end
