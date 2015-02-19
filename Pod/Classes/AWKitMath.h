//
//  AWKitMath.h
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-19.
//
//

#import <CoreGraphics/CoreGraphics.h>

/**
 *  Use this method to handle 32/64 bit correctly.
 *  @param value Value to floor.
 *  @return Floor value of `value`
 */
inline CGFloat AWFloor(CGFloat value);

/**
 *  Use this method to handle 32/64 bit correctly.
 *  @param value Value to round
 *  @return Rounded value of `value`
 */
inline CGFloat AWRound(CGFloat value);

/**
 *  Use this method to handle 32/64 bit correctly.
 *  @param value Value to ceil.
 *  @return Ceil value of `value`
 */
inline CGFloat AWCeil(CGFloat value);

/**
 *  Use this method to handle 32/64 bit correctly.
 *  @param value Value to absolute.
 *  @return Absolute value of `value`
 */
inline CGFloat AWAbs(CGFloat value);
