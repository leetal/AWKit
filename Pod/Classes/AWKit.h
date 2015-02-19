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

#endif
