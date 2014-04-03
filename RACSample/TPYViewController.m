//
//  TPYViewController.m
//  RACSample
//
//  Created by Fukui Shohei on 2014/04/02.
//  Copyright (c) 2014年 tinpay. All rights reserved.
//

#import "TPYViewController.h"
#import "ReactiveCocoa.h"

@interface TPYViewController ()

@end

@implementation TPYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];


    [[RACSignal combineLatest:@[self.number1TextField.rac_textSignal, self.number2TextField.rac_textSignal] reduce:^(NSString *number1, NSString *number2) {
        return @(number1.length == 0 || number2.length == 0);
    }] subscribeNext:^(NSNumber *hidden) {
        
        self.answerLabel.text = [self calcText1:self.number1TextField.text text2:self.number2TextField.text];
    }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//２つの文字列を数値にして足し算して文字列にして返す
-(NSString *)calcText1:(NSString *)txt1 text2:(NSString *)txt2{
    
    if ([self isDigit:txt1] && [self isDigit:txt2]) {
        return [NSString stringWithFormat:@"%d",txt1.intValue + txt2.intValue];
    }
    return @"Not a Number";
}

//数値かどうか
- (BOOL)isDigit:(NSString *)str
{
    if ([str length] == 0) {
        return NO;
    }
    
    NSCharacterSet *digitChars = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    
    NSScanner *sc = [NSScanner localizedScannerWithString:str];
    [sc setCharactersToBeSkipped:nil];
    
    [sc scanCharactersFromSet:digitChars intoString:NULL];
    return [sc isAtEnd];
}

@end
