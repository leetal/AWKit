//
//  NSString+AWKit.h
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-19.
//
//

#import <Foundation/Foundation.h>

@interface NSString (AWKit)

/**
 *  @return A new string with the first character in upper case.
 */
- (NSString*)stringWithUpperCaseFirstCharacter;

/**
 *  @return A new string with the first character in each word in upper case.
 */
- (NSString*)stringWithUpperCaseFirstCharacterOfEachWord;

/**
 @return A new string trimmed with the whitespaceCharacterSet.
 */
- (NSString*)stringByTrimmingWhitespace;

/**
 *  @return A new string trimmed with the newlineCharacterSet.
 */
- (NSString*)stringByTrimmingNewLine;

/**
 *  @return A new string trimmed with the whitespaceCharacterSet. Nil is never returned. In case no characters is left, an empty string is returned.
 */
+ (NSString*)stringByTrimmingWhitespaceOnString:(NSString*)string;

/**
 *  @return YES if the receiver has length > 0 after trimming whitespace.
 */
- (BOOL)hasCharactersAfterTrimmingWhitespaceCharacterSet;

/**
 *  @return YES if the receiver has length > 0 after trimming newlines.
 */
- (BOOL)hasCharactersAfterTrimmingNewLineCharacterSet;

/**
 *  @return YES if the receiver has length > 0 after trimming whitespace. Also returns NO if string parameter is nil.
 */
+ (BOOL)hasCharactersAfterTrimmingWhitespaceCharacterSetOnString:(NSString*)string;

/**
 *  @return YES if the receiver has length > 0 after trimming with the specified character set.
 */
- (BOOL)hasCharactersAfterTrimmingCharactersInSet:(NSCharacterSet*)set;

/**
 *  @return YES if the receiver has length > 0 after trimming with the specified character set. Also returns NO if string parameter is nil.
 */
+ (BOOL)hasCharactersAfterTrimmingCharactersInSet:(NSCharacterSet*)set onString:(NSString*)string;

@end

extern NSString * const _AWStringEmpty;
