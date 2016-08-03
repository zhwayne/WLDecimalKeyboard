//
//  WLDecimalKeyboard.m
//  customkeyboard
//
//  Created by Wayne on 16/6/12.
//  Copyright © 2016年 Wayne. All rights reserved.
//

#import "WLDecimalKeyboard.h"

static CGRect wldk_get_frame()
{
    CGFloat width = MIN([UIScreen mainScreen].bounds.size.width,
                        [UIScreen mainScreen].bounds.size.height);
    CGFloat height = ((NSUInteger)(width * .32)) * 2;
    return CGRectMake(0, 0, width, height);
}

static UIImage *wldk_image(UIColor *color, CGSize size)
{
    UIGraphicsBeginImageContext(size);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(ctx, color.CGColor);
    CGContextFillRect(ctx, CGRectMake(0, 0, size.width, size.height));
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

static UIImage *wldk_delete_icon()
{
    CGFloat scale = [UIScreen mainScreen].scale;
    CGSize size = CGSizeMake(27 * scale, 20 * scale);
    const CGFloat lineWidth = 1.f * scale;
    UIGraphicsBeginImageContext(size);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    [[UIColor blackColor] setStroke];
    
    CGContextBeginPath(ctx);
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(8.5 * scale, 19.5 * scale)];
    [bezierPath addCurveToPoint: CGPointMake(23.15 * scale, 19.5 * scale) controlPoint1: CGPointMake(11.02 * scale, 19.5 * scale) controlPoint2: CGPointMake(20.63 * scale, 19.5 * scale)];
    [bezierPath addCurveToPoint: CGPointMake(26.5 * scale, 15.5 * scale) controlPoint1: CGPointMake(25.66 * scale, 19.5 * scale) controlPoint2: CGPointMake(26.5 * scale, 17.5 * scale)];
    [bezierPath addCurveToPoint: CGPointMake(26.5 * scale, 4.5 * scale) controlPoint1: CGPointMake(26.5 * scale, 13.5 * scale) controlPoint2: CGPointMake(26.5 * scale, 7.5 * scale)];
    [bezierPath addCurveToPoint: CGPointMake(23.15 * scale, 0.5 * scale) controlPoint1: CGPointMake(26.5 * scale, 1.5 * scale) controlPoint2: CGPointMake(24.82 * scale, 0.5 * scale)];
    [bezierPath addCurveToPoint: CGPointMake(8.5 * scale, 0.5 * scale) controlPoint1: CGPointMake(21.47 * scale, 0.5 * scale) controlPoint2: CGPointMake(11.02 * scale, 0.5 * scale)];
    [bezierPath addCurveToPoint: CGPointMake(0.5 * scale, 9.5 * scale) controlPoint1: CGPointMake(5.98 * scale, 0.5 * scale) controlPoint2: CGPointMake(0.5 * scale, 9.5 * scale)];
    [bezierPath addCurveToPoint: CGPointMake(8.5 * scale, 19.5 * scale) controlPoint1: CGPointMake(0.5 * scale, 9.5 * scale) controlPoint2: CGPointMake(5.98 * scale, 19.5 * scale)];
    [bezierPath closePath];
    bezierPath.lineCapStyle = kCGLineCapRound;
    
    bezierPath.lineJoinStyle = kCGLineJoinRound;
    
    [UIColor.blackColor setStroke];
    bezierPath.lineWidth = lineWidth;
    [bezierPath stroke];
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(19.5 * scale, 6.5 * scale)];
    [bezier2Path addLineToPoint: CGPointMake(12.5 * scale, 13.5 * scale)];
    bezier2Path.lineCapStyle = kCGLineCapRound;
    
    bezier2Path.lineJoinStyle = kCGLineJoinRound;
    
    [UIColor.blackColor setStroke];
    bezier2Path.lineWidth = lineWidth;
    [bezier2Path stroke];
    
    
    //// Bezier 3 Drawing
    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(19.5 * scale, 13.5 * scale)];
    [bezier3Path addLineToPoint: CGPointMake(12.5 * scale, 6.5 * scale)];
    bezier3Path.lineCapStyle = kCGLineCapRound;
    
    [UIColor.blackColor setStroke];
    bezier3Path.lineWidth = lineWidth;
    [bezier3Path stroke];

    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return [UIImage imageWithCGImage:image.CGImage
                               scale:scale
                         orientation:UIImageOrientationUp];
}

static UIImage *wldk_keyboard_icon()
{
    CGFloat scale = [UIScreen mainScreen].scale;
    CGSize size = CGSizeMake(38 * scale, 28 * scale);
    const CGFloat lineWidth = 2.f * scale;
    UIGraphicsBeginImageContext(size);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    [[UIColor blackColor] setStroke];
    
    CGContextBeginPath(ctx);

    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(1 * scale, 1 * scale, 36 * scale, 21 * scale)];
    [UIColor.blackColor setStroke];
    rectanglePath.lineWidth = lineWidth;
    [rectanglePath stroke];
    
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(21.71 * scale, 25 * scale)];
    [bezierPath addLineToPoint: CGPointMake(24 * scale, 25 * scale)];
    [bezierPath addLineToPoint: CGPointMake(20 * scale, 28 * scale)];
    [bezierPath addLineToPoint: CGPointMake(16 * scale, 25 * scale)];
    [bezierPath addLineToPoint: CGPointMake(21.71 * scale, 25 * scale)];
    [bezierPath closePath];
    [UIColor.blackColor setFill];
    [bezierPath fill];
    
    
    //// Rectangle 2 Drawing
    UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(5 * scale, 5 * scale, 3 * scale, 3 * scale)];
    [UIColor.blackColor setFill];
    [rectangle2Path fill];
    
    
    //// Rectangle 3 Drawing
    UIBezierPath* rectangle3Path = [UIBezierPath bezierPathWithRect: CGRectMake(10 * scale, 5 * scale, 3 * scale, 3 * scale)];
    [UIColor.blackColor setFill];
    [rectangle3Path fill];
    
    
    //// Rectangle 4 Drawing
    UIBezierPath* rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake(15 * scale, 5 * scale, 3 * scale, 3 * scale)];
    [UIColor.blackColor setFill];
    [rectangle4Path fill];
    
    
    //// Rectangle 5 Drawing
    UIBezierPath* rectangle5Path = [UIBezierPath bezierPathWithRect: CGRectMake(20 * scale, 5 * scale, 3 * scale, 3 * scale)];
    [UIColor.blackColor setFill];
    [rectangle5Path fill];
    
    
    //// Rectangle 6 Drawing
    UIBezierPath* rectangle6Path = [UIBezierPath bezierPathWithRect: CGRectMake(25 * scale, 5 * scale, 3 * scale, 3 * scale)];
    [UIColor.blackColor setFill];
    [rectangle6Path fill];
    
    
    //// Rectangle 7 Drawing
    UIBezierPath* rectangle7Path = [UIBezierPath bezierPathWithRect: CGRectMake(30 * scale, 5 * scale, 3 * scale, 3 * scale)];
    [UIColor.blackColor setFill];
    [rectangle7Path fill];
    
    
    //// Rectangle 8 Drawing
    UIBezierPath* rectangle8Path = [UIBezierPath bezierPathWithRect: CGRectMake(7 * scale, 10 * scale, 3 * scale, 3 * scale)];
    [UIColor.blackColor setFill];
    [rectangle8Path fill];
    
    
    //// Rectangle 9 Drawing
    UIBezierPath* rectangle9Path = [UIBezierPath bezierPathWithRect: CGRectMake(12 * scale, 10 * scale, 3 * scale, 3 * scale)];
    [UIColor.blackColor setFill];
    [rectangle9Path fill];
    
    
    //// Rectangle 10 Drawing
    UIBezierPath* rectangle10Path = [UIBezierPath bezierPathWithRect: CGRectMake(17 * scale, 10 * scale, 3 * scale, 3 * scale)];
    [UIColor.blackColor setFill];
    [rectangle10Path fill];
    
    
    //// Rectangle 11 Drawing
    UIBezierPath* rectangle11Path = [UIBezierPath bezierPathWithRect: CGRectMake(22 * scale, 10 * scale, 3 * scale, 3 * scale)];
    [UIColor.blackColor setFill];
    [rectangle11Path fill];
    
    
    //// Rectangle 12 Drawing
    UIBezierPath* rectangle12Path = [UIBezierPath bezierPathWithRect: CGRectMake(27 * scale, 10 * scale, 3 * scale, 3 * scale)];
    [UIColor.blackColor setFill];
    [rectangle12Path fill];
    
    
    //// Rectangle 13 Drawing
    UIBezierPath* rectangle13Path = [UIBezierPath bezierPathWithRect: CGRectMake(6 * scale, 15 * scale, 3 * scale, 3 * scale)];
    [UIColor.blackColor setFill];
    [rectangle13Path fill];
    
    
    //// Rectangle 14 Drawing
    UIBezierPath* rectangle14Path = [UIBezierPath bezierPathWithRect: CGRectMake(29 * scale, 15 * scale, 3 * scale, 3 * scale)];
    [UIColor.blackColor setFill];
    [rectangle14Path fill];
    
    
    //// Rectangle 15 Drawing
    UIBezierPath* rectangle15Path = [UIBezierPath bezierPathWithRect: CGRectMake(11 * scale, 15 * scale, 16 * scale, 3 * scale)];
    [UIColor.blackColor setFill];
    [rectangle15Path fill];


    

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return [UIImage imageWithCGImage:image.CGImage
                               scale:scale
                         orientation:UIImageOrientationUp];
}


@interface UIView (WLDKFindFirstResponder)

+ (UIView *)wldk_firstResponder;

@end


@implementation UIView (WLDKFindFirstResponder)

+ (UIView *)wldk_firstResponder
{
    return [[[UIApplication sharedApplication] keyWindow] wldk_findFirstResponder];
}

- (UIView *)wldk_findFirstResponder
{
    if ([self isFirstResponder]) return self;
    
    for (UIView *view in self.subviews) {
        UIView *responder = [view wldk_findFirstResponder];
        if (responder) return responder;
    }
    
    return nil;
}

@end


@class WLDecimalKeyboardItem;

@interface WLDecimalKeyboardItem : UIButton

- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state;

@end


@implementation WLDecimalKeyboardItem

- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state
{
    [self setBackgroundImage:wldk_image(backgroundColor, CGSizeMake(1, 1))
                    forState:state];
}

@end



@interface WLDecimalKeyboard () <UIInputViewAudioFeedback>
{
    NSTimer *deleteTimer;
}

@property (weak, nonatomic) UIView<UIKeyInput> *firstResponder;

@end


@implementation WLDecimalKeyboard


#pragma mark - Lifecycle

- (void)dealloc {
    [self _cleanTimer];
    NSLog(@"***> %s", __func__);
}

- (instancetype)initWithFrame:(CGRect)frame
{
    CGRect rect = wldk_get_frame();
    
    if (self = [super initWithFrame:rect]) {
        [self _initUI];
    }
    
    return self;
}

- (instancetype)initWithTintColor:(UIColor *)tintColor
{
    CGRect rect = wldk_get_frame();
    
    if (self = [super initWithFrame:rect]) {
        _tintColor = tintColor;
        [self _initUI];
    }
    
    return self;
}

#pragma mark - Private

- (void)_cleanTimer
{
    [deleteTimer invalidate];
    deleteTimer = nil;
    NSLog(@"***> %s", __func__);
}

- (void)_initUI
{
    self.backgroundColor = [UIColor colorWithRed:204 / 255.f
                                           green:204 / 255.f
                                            blue:204 / 255.f
                                           alpha:1.f];
    
    self.tintColor = self.tintColor ?: [UIColor colorWithRed:0 / 255.f
                                                       green:170 / 255.f
                                                        blue:238 / 255.f
                                                       alpha:1];
    
    /// 0(48), 1(49), 2(50), 3(51), 4(52), 5(53), 6(54), 7(55), 8(56), 9(57)
    /// .(46), del(127), cancel(-1), sure(-2)
    for (int i = 0; i < 14; ++i) {
        WLDecimalKeyboardItem *item = [WLDecimalKeyboardItem buttonWithType:UIButtonTypeCustom];
        if (i == 10) {
            item.tag = 46;
            [item setTitle:@"." forState:UIControlStateNormal];
        }
        else if (i == 11) {
            item.tag = 127;
            [item setImage:wldk_delete_icon() forState:UIControlStateNormal];
            UILongPressGestureRecognizer *g = [[UILongPressGestureRecognizer alloc] initWithTarget:self
                                                                                            action:@selector(deleteItemLongPress:)];
            [item addGestureRecognizer:g];
        }
        else if (i == 12) {
            item.tag = -1;
            [item setImage:wldk_keyboard_icon() forState:UIControlStateNormal];
        }
        else if (i == 13) {
            item.tag = -2;
            [item setTitle:@"确定" forState:UIControlStateNormal];
        }
        else {
            item.tag = 48 + i;
            [item setTitle:[NSString stringWithFormat:@"%d", i]
                  forState:UIControlStateNormal];
        }
        
        if (item.tag != -2) {
            [item setBackgroundColor:[UIColor colorWithRed:250 / 255.f
                                                     green:250 / 255.f
                                                      blue:250 / 255.f
                                                     alpha:1] forState:UIControlStateNormal];
            [item setBackgroundColor:[UIColor colorWithRed:230 / 255.f
                                                     green:230 / 255.f
                                                      blue:230 / 255.f
                                                     alpha:1] forState:UIControlStateHighlighted];
            [item setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [item.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:25]];
        }
        else {
            CGFloat h[1], s[1], b[1], a[1];
            [self.tintColor getHue:h
                        saturation:s
                        brightness:b
                             alpha:a];
            
            UIColor *highlightColor = [UIColor colorWithHue:h[0]
                                                 saturation:s[0]
                                                 brightness:b[0] - .1f
                                                      alpha:a[0]];
            
            [item setBackgroundColor:self.tintColor forState:UIControlStateNormal];
            [item setBackgroundColor:highlightColor forState:UIControlStateHighlighted];
            [item setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            
        }
        
        [item addTarget:self action:@selector(buttonTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:item];
    }
    
}

- (NSRange)_selectedRangeInInputView:(id<UITextInput>)inputView
{
    UITextPosition* beginning = inputView.beginningOfDocument;
    
    UITextRange* selectedRange = inputView.selectedTextRange;
    UITextPosition* selectionStart = selectedRange.start;
    UITextPosition* selectionEnd = selectedRange.end;
    
    const NSInteger location = [inputView offsetFromPosition:beginning toPosition:selectionStart];
    const NSInteger length = [inputView offsetFromPosition:selectionStart toPosition:selectionEnd];
    
    return NSMakeRange(location, length);
}

- (void)_playClickAudio
{
    [[UIDevice currentDevice] playInputClick];
}

- (void)_insert:(NSString *)text
{
    if ([self.firstResponder isKindOfClass:[UITextField class]]) {
        id<UITextFieldDelegate> delegate = [(UITextField *)self.firstResponder delegate];
        if ([delegate respondsToSelector:@selector(textField:shouldChangeCharactersInRange:replacementString:)]) {
            NSRange range = [self _selectedRangeInInputView:(id<UITextInput>)self.firstResponder];
            if ([delegate textField:(UITextField *)self.firstResponder shouldChangeCharactersInRange:range replacementString:text]) {
                [self.firstResponder insertText:text];
            }
        } else {
            [self.firstResponder insertText:text];
        }
    }
    else if ([self.firstResponder isKindOfClass:[UITextView class]]) {
        id<UITextViewDelegate> delegate = [(UITextView *)self.firstResponder delegate];
        if ([delegate respondsToSelector:@selector(textView:shouldChangeTextInRange:replacementText:)]) {
            NSRange range = [self _selectedRangeInInputView:(id<UITextInput>)self.firstResponder];
            if ([delegate textView:(UITextView *)self.firstResponder shouldChangeTextInRange:range replacementText:text]) {
                [self.firstResponder insertText:text];
            }
        } else {
            [self.firstResponder insertText:text];
        }
    }
    else {
        [self.firstResponder insertText:text];
    }
}

- (void)_clickedDot
{
    [self _insert:@"."];
}

- (void)_clickedDelete
{
    if ([self.firstResponder hasText]) {
        [self.firstResponder deleteBackward];
    }
}

- (void)_clickedDismiss
{
    [self.firstResponder resignFirstResponder];
}

- (void)_clickedSure
{
    [self.firstResponder resignFirstResponder];
    !self.done ?: self.done();
}

- (void)_clickedDecimal:(int)decimal
{
    [self _insert:[NSString stringWithFormat:@"%d", decimal]];
}

- (void)_handleInputWithKeyboardItemTag:(NSUInteger)tag
{
    switch (tag) {
        case 46:
            [self _clickedDot];
            break;
            
        case 127:
            [self _clickedDelete];
            break;
            
        case -1:
            [self _clickedDismiss];
            break;
            
        case -2:
            [self _clickedSure];
            break;
            
        case 48:
        case 49:
        case 50:
        case 51:
        case 52:
        case 53:
        case 54:
        case 55:
        case 56:
        case 57:
            [self _clickedDecimal:(int)tag - 48];
            break;
            
        default:
            break;
    }
}

#pragma mark - Override

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat width = CGRectGetWidth(self.bounds) / 4.f - .5f;
    CGFloat height = CGRectGetHeight(self.bounds) / 4.f - .5f;
    
    [self viewWithTag:49].frame = CGRectMake(0, .5, width, height);
    [self viewWithTag:50].frame = CGRectMake(width + .5f, .5f, width, height);
    [self viewWithTag:51].frame = CGRectMake((width + .5f) * 2, .5f, width, height);
    [self viewWithTag:52].frame = CGRectMake(0, height + 1.f, width, height);
    [self viewWithTag:53].frame = CGRectMake(width + .5f, height + 1.f, width, height);
    [self viewWithTag:54].frame = CGRectMake((width + .5f) * 2, height + 1.f, width, height);
    [self viewWithTag:55].frame = CGRectMake(0, .5f + (height + .5f) * 2, width, height);
    [self viewWithTag:56].frame = CGRectMake(width + .5f, .5f + (height + .5f) * 2, width, height);
    [self viewWithTag:57].frame = CGRectMake((width + .5f) * 2, .5f + (height + .5f) * 2, width, height);
    [self viewWithTag:48].frame = CGRectMake(width + .5f, .5f + (height + .5f) * 3, width, height);
    [self viewWithTag:46].frame = CGRectMake(0, .5f + (height + .5f) * 3, width, height);
    [self viewWithTag:-1].frame = CGRectMake((width + .5f) * 2, .5f + (height + .5f) * 3, width, height);
    [self viewWithTag:127].frame = CGRectMake((width + .5f) * 3, .5f, width, height * 2 + .5f);
    [self viewWithTag:-2].frame = CGRectMake((width + .5f) * 3, 1.f + height * 2, width, height * 2 + 1.f);
}

#pragma mark - Action

- (void)buttonTouchUpInside:(WLDecimalKeyboardItem *)sender
{
    if (!self.firstResponder || ![self.firstResponder isFirstResponder]) {
        self.firstResponder = (UIView<UIKeyInput>*)[UIView wldk_firstResponder];
        if (!self.firstResponder) return;
        if (![self.firstResponder conformsToProtocol:@protocol(UIKeyInput)]) return;
    }
    
    [self _playClickAudio];
    [self _handleInputWithKeyboardItemTag:sender.tag];
}

- (void)deleteItemLongPress:(UILongPressGestureRecognizer *)longPress
{
    if (longPress.state == UIGestureRecognizerStateBegan) {
        dispatch_async(dispatch_get_main_queue(), ^{
            ((UIButton *)[self viewWithTag:127]).highlighted = YES;
        });
        deleteTimer = [NSTimer scheduledTimerWithTimeInterval:.1
                                                       target:self
                                                     selector:@selector(_repeatLongPressDelete)
                                                     userInfo:nil
                                                      repeats:YES];
    }
    else if (longPress.state == UIGestureRecognizerStateEnded
             || longPress.state == UIGestureRecognizerStateCancelled
             || longPress.state == UIGestureRecognizerStateFailed) {
        dispatch_async(dispatch_get_main_queue(), ^{
            ((UIButton *)[self viewWithTag:127]).highlighted = NO;
        });
        [self _cleanTimer];
    }
}

- (void)_repeatLongPressDelete
{
    [(UIControl *)[self viewWithTag:127] sendActionsForControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - UIInputViewAudioFeedback

- (BOOL)enableInputClicksWhenVisible
{
    return YES;
}

@end

