//
//  AWKitMath.cpp
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-19.
//
//

#include "AWKitMath.h"

CGFloat AWFloor(CGFloat value)
{
#if __LP64__
    return floor(value);
#else
    return floorf(value);
#endif
}

CGFloat AWRound(CGFloat value)
{
#if __LP64__
    return round(value);
#else
    return roundf(value);
#endif

CGFloat AWCeil(CGFloat value)
{
#if __LP64__
    return ceil(value);
#else
    return ceilf(value);
#endif
}

CGFloat AWAbs(CGFloat value)
{
#if __LP64__
    return fabs(value);
#else
    return fabsf(value);
#endif
}