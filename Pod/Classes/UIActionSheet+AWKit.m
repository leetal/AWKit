//
//  UIActionSheet+AWKit.m
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-19.
//
//

#import "UIActionSheet+AWKit.h"
#import <objc/runtime.h>

static const char __dismissBlock;
static const char __cancelBlock;

@interface UIActionSheet (_AWKit) <UIActionSheetDelegate>

@property (nonatomic, copy) AWActionSheetDidDismissBlock dismissBlock;
@property (nonatomic, copy) AWActionSheetDidCancelBlock cancelBlock;

@end

@implementation UIActionSheet (AWKit)

- (id)initWithTitle:(NSString*)title
  cancelButtonTitle:(NSString*)cancelButtonTitle
destructiveButtonTitle:(NSString*)destructiveButtonTitle
  otherButtonTitles:(NSArray*)otherButtons
           onCancel:(AWActionSheetDidCancelBlock)onCancel
          onDismiss:(AWActionSheetDidDismissBlock)onDismiss
{
    self = [self initWithTitle:title delegate:self cancelButtonTitle:nil destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:nil];

    if (self)
    {
        for(NSString *buttonTitle in otherButtons) {
            [self addButtonWithTitle:buttonTitle];
        }

        [self addButtonWithTitle:cancelButtonTitle];
        [self setCancelButtonIndex:[otherButtons count] + (destructiveButtonTitle ? 1 : 0)];

        // Will store the cancel and dismiss block in the runtime
        self.cancelBlock = onCancel;
        self.dismissBlock = onDismiss;
    }

    return self;
}

#pragma mark - UIActionSheetDelegate

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == [actionSheet cancelButtonIndex])
    {
        if (actionSheet.cancelBlock) {
            actionSheet.cancelBlock();
        }
    }
    else
    {
        if (actionSheet.dismissBlock) {
            actionSheet.dismissBlock(buttonIndex);
        }
    }
}

#pragma mark - Properties

- (void)setDismissBlock:(AWActionSheetDidDismissBlock)dismissBlock
{
    objc_setAssociatedObject(self, &__dismissBlock, dismissBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (AWActionSheetDidDismissBlock)dismissBlock
{
    return objc_getAssociatedObject(self, &__dismissBlock);
}

- (void)setCancelBlock:(AWActionSheetDidCancelBlock)cancelBlock
{
    objc_setAssociatedObject(self, &__cancelBlock, cancelBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (AWActionSheetDidCancelBlock)cancelBlock
{
    return objc_getAssociatedObject(self, &__cancelBlock);
}

@end
