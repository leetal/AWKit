//
//  UIAlertView+AWKit.m
//  Pods
//
//  Created by Alexander Widerberg on 2015-02-19.
//
//

#import "UIAlertView+AWKit.h"
#import <objc/runtime.h>

static const char __dismissBlock;
static const char __cancelBlock;

@interface UIAlertView (_AWKit) <UIAlertViewDelegate>
@property (nonatomic, copy) AWAlertViewDidDismissBlock dismissBlock;
@property (nonatomic, copy) AWAlertViewDidCancelBlock cancelBlock;
@end

@implementation UIAlertView (AWKit)

+ (UIAlertView*)alertWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil onCancel:NULL onDismiss:NULL];
    [alertView show];
    return alertView;
}

+ (UIAlertView*)alertWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle onCancel:(AWAlertViewDidCancelBlock)cancelled
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil onCancel:cancelled onDismiss:NULL];
    [alertView show];
    return alertView;
}

+ (UIAlertView*)alertWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle otherButtonTitles:(NSArray*)otherButtons onCancel:(AWAlertViewDidCancelBlock)cancelled onDismiss:(AWAlertViewDidDismissBlock)dismissed
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtons onCancel:cancelled onDismiss:dismissed];
    [alertView show];
    return alertView;
}

- (id)initWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle otherButtonTitles:(NSArray*)otherButtons onCancel:(AWAlertViewDidCancelBlock)cancelled onDismiss:(AWAlertViewDidDismissBlock)dismissed
{
    self = [self initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil];

    if (self)
    {
        for(NSString *buttonTitle in otherButtons) {
            [self addButtonWithTitle:buttonTitle];
        }

        self.dismissBlock = dismissed;
        self.cancelBlock = cancelled;
    }

    return self;
}

#pragma mark - UIAlertViewDelegate

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == [alertView cancelButtonIndex])
    {
        if (alertView.cancelBlock) {
            alertView.cancelBlock();
        }
    }
    else
    {
        if (alertView.dismissBlock) {
            alertView.dismissBlock(buttonIndex - 1); // cancel button is button 0
        }
    }
}

#pragma mark - Additional block properties

- (void)setDismissBlock:(AWAlertViewDidDismissBlock)dismissBlock
{
    objc_setAssociatedObject(self, &__dismissBlock, dismissBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (AWAlertViewDidDismissBlock)dismissBlock
{
    return objc_getAssociatedObject(self, &__dismissBlock);
}

- (void)setCancelBlock:(AWAlertViewDidCancelBlock)cancelBlock
{
    objc_setAssociatedObject(self, &__cancelBlock, cancelBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (AWAlertViewDidCancelBlock)cancelBlock
{
    return objc_getAssociatedObject(self, &__cancelBlock);
}
@end
