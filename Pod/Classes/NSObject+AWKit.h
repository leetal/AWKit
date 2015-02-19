//
//  NSObject+AWKit.h
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-18.
//
//

#import <Foundation/Foundation.h>

@interface NSObject (AWKit)

@property (nonatomic, strong)   id  additionalInfo; /**< id additionalInfo to be stored with the object through runtime */

/**
 Dispatches a block on the main queue.
 @note GCD thread safe
 @param block - A block to execute on the main thread.
 */
- (void)dispatchBlockOnMainQueue:(void (^)(void))block;

/**
 Dispatches a block on the main queue after a delay.
 @note GCD thread safe
 @param delay - A time interval delay before execution
 @param block - A block to execute on the main thread after a delay.
 */
- (void)dispatchBlockOnMainQueueAfterDelay:(NSTimeInterval)delay block:(void (^)(void))block;

/**
 Dispatches a block on the high priority queue.
 @note GCD thread safe
 @param block - A block to execute on the high priority thread.
 */
- (void)dispatchBlockOnHighPriorityQueue:(void (^)(void))block;

/**
 Dispatches a block on the low priority queue after a delay.
 @note GCD thread safe
 @param block - A block to execute on the low priority thread.
 */
- (void)dispatchBlockOnLowPriorityQueue:(void (^)(void))block;

/**
 Dispatches a block on the default priority queue after a delay.
 @note GCD thread safe
 @param block - A block to execute on the default priority thread.
 */
- (void)dispatchBlockOnDefaultPriorityQueue:(void (^)(void))block;
@end
