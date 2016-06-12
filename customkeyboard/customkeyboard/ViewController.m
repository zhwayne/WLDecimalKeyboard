//
//  ViewController.m
//  customkeyboard
//
//  Created by Wayne on 16/6/12.
//  Copyright © 2016年 Wayne. All rights reserved.
//

#import "ViewController.h"
#import "WLDecimalKeyboard.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.textField.delegate = self;
    self.textField.inputView = [[WLDecimalKeyboard alloc] init];
    [self.textField reloadInputViews];
}

- (IBAction)editChanged:(UITextField *)sender {
    NSLog(@"%@", sender);
}

/// 设置自定义键盘后，delegate 不会被调用？
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    if ([string isEqualToString:@"8"]) return NO;
    
    return YES;
}

@end
