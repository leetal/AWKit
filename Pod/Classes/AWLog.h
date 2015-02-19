//
//  AWLog.h
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-18.
//
//

#ifndef Pods_AWLog_h
#define Pods_AWLog_h

#ifdef AWDebug
#	define AWLog(fmt, ...)          NSLog(fmt, ##__VA_ARGS__)
#   define AWLogFunc(fmt, ...)      NSLog((@"%s " fmt), __FUNCTION__, ##__VA_ARGS__)
#else
#	define AWLog(...)
#   define AWLogFunc(...)

#endif
