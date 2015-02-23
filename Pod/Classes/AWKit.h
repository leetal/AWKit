//
//  AWKit.h
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-18.
//
//

#ifndef Pods_AWKit_h
#define Pods_AWKit_h

#define AWAssertMainThread()        NSAssert([NSThread isMainThread], @"Method must be called from main thread!");
#define AWAssertNotMainThread()     NSAssert(![NSThread isMainThread], @"Method must not be called from main thread!");
#define AWAssertAbstractMethod()    NSAssert(false, @"Abstract method. Must be overridden by subclass.");

#include "AWLog.h"
#include "AWKitMath.h"
#include "NSBundle+AWKit.h"
#include "NSObject+AWKit.h"
#include "NSString+AWKit.h"
#include "UIActionSheet+AWKit.h"
#include "UIAlertView+AWKit.h"
#include "UIColor+AWKit.h"
#include "UIImage+AWKit.h"
#include "UIScreen+AWKit.h"

#endif
