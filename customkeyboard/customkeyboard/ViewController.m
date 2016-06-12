//
//  ViewController.m
//  customkeyboard
//
//  Created by Wayne on 16/6/12.
//  Copyright © 2016年 Wayne. All rights reserved.
//

#import "ViewController.h"
#import "WLDecimalKeyboard.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.textField.inputView = [[WLDecimalKeyboard alloc] init];
    [self.textField reloadInputViews];
}

@end
