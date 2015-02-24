//
//  UIAlertView+AWKit.h
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-19.
//
//

#import <UIKit/UIKit.h>

typedef void (^AWAlertViewDidDismissBlock)(NSUInteger buttonIndex);
typedef void (^AWAlertViewDidCancelBlock)();

@interface UIAlertView (AWKit)

/*!
 *  Creates a UIAlertView with optional cancel and dismissal blocks
 *
 *  @note Must be used on the main thread
 *
 *  @param title - Title of the actionsheet
 *  @param message - A message to be displayed
 *  @param cancelButtonTitle - Cancel button title
 *  @param otherButtons - Array of other buttons title strings
 *  @param onCancel - On cancel block to be executed
 *  @param onDismiss - On dismiss block to be executed
 *
 */
- (id)initWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle otherButtonTitles:(NSArray*)otherButtons onCancel:(AWAlertViewDidCancelBlock)onCancel onDismiss:(AWAlertViewDidDismissBlock)onDismiss;

/*!
 *  Creates a UIAlertView
 *
 *  @note Must be used on the main thread
 *
 *  @param title - Title of the actionsheet
 *  @param message - A message to be displayed
 *  @param cancelButtonTitle - Cancel button title
 *
 */
+ (UIAlertView*)alertWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle;

/*!
 *  Creates a UIAlertView with optional cancel block
 *
 *  @note Must be used on the main thread
 *
 *  @param title - Title of the actionsheet
 *  @param message - A message to be displayed
 *  @param cancelButtonTitle - Cancel button title
 *  @param onCancel - On cancel block to be executed
 *
 */
+ (UIAlertView*)alertWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle onCancel:(AWAlertViewDidCancelBlock)cancelled;

/*!
 *  Creates a UIAlertView with optional cancel and dismissal blocks
 *
 *  @note Must be used on the main thread
 *
 *  @param title - Title of the actionsheet
 *  @param message - A message to be displayed
 *  @param cancelButtonTitle - Cancel button title
 *  @param otherButtons - Array of other buttons title strings
 *  @param onCancel - On cancel block to be executed
 *  @param onDismiss - On dismiss block to be executed
 *
 */
+ (UIAlertView*)alertWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle otherButtonTitles:(NSArray*)otherButtons onCancel:(AWAlertViewDidCancelBlock)cancelled onDismiss:(AWAlertViewDidDismissBlock)dismissed;

@end
