//
//  AWKitMath.h
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-19.
//
//
#ifndef Pods_AWKitMath_h
#define Pods_AWKitMath_h

#import <CoreGraphics/CoreGraphics.h>

/**
 *  Use this method to handle 32/64 bit correctly.
 *  @param value Value to floor.
 *  @return Floor value of `value`
 */
inline CGFloat AWFloor(CGFloat value)
{
#if __LP64__
    return floor(value);
#else
    return floorf(value);
#endif
}

/**
 *  Use this method to handle 32/64 bit correctly.
 *  @param value Value to round
 *  @return Rounded value of `value`
 */
inline CGFloat AWRound(CGFloat value)
{
#if __LP64__
    return round(value);
#else
    return roundf(value);
#endif
}

/**
 *  Use this method to handle 32/64 bit correctly.
 *  @param value Value to ceil.
 *  @return Ceil value of `value`
 */
inline CGFloat AWCeil(CGFloat value)
{
#if __LP64__
    return ceil(value);
#else
    return ceilf(value);
#endif
}

/**
 *  Use this method to handle 32/64 bit correctly.
 *  @param value Value to absolute.
 *  @return Absolute value of `value`
 */
inline CGFloat AWAbs(CGFloat value)
{
#if __LP64__
    return fabs(value);
#else
    return fabsf(value);
#endif
}

#endif