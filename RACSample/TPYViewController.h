//
//  TPYViewController.h
//  RACSample
//
//  Created by Fukui Shohei on 2014/04/02.
//  Copyright (c) 2014年 tinpay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TPYViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *number1TextField;
@property (weak, nonatomic) IBOutlet UITextField *number2TextField;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;


-(NSString *)calcText1:(NSString *)txt1 text2:(NSString *)txt2;

@end
