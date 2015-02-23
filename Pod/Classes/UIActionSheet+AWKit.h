//
//  UIActionSheet+AWKit.h
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-19.
//
//

#import <UIKit/UIKit.h>

typedef void (^AWActionSheetDidDismissBlock)(NSUInteger buttonIndex);
typedef void (^AWActionSheetDidCancelBlock)();

@interface UIActionSheet (AWKit)

/**
 *  Creates a UIActionSheet with optional cancel and dismissal blocks
 *
 *  @note Must be used on the main thread
 *
 *  @param title - Title of the actionsheet
 *  @param cancelButtonTitle - Cancel button title
 *  @param destructiveButtonTitle - Dismissal button title
 *  @param otherButtons - Array of other buttons title strings
 *  @param onCancel - On cancel block to be executed
 *  @param onDismiss - On dismiss block to be executed
 *
 */
- (id)initWithTitle:(NSString*)title
  cancelButtonTitle:(NSString*)cancelButtonTitle
destructiveButtonTitle:(NSString*)destructiveButtonTitle
  otherButtonTitles:(NSArray*)otherButtons
           onCancel:(AWActionSheetDidCancelBlock)onCancel
          onDismiss:(AWActionSheetDidDismissBlock)onDismiss;
@end
