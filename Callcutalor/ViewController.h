//
//  ViewController.h
//  Callcutalor
//
//  Created by Quoc Dung on 8/7/15.
//  Copyright (c) 2015 A.Braeng. All rights reserved.
//

#import <UIKit/UIKit.h>

int operation;
double displaynumber;
double resultnumber;
BOOL isdecimal;
@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *Result;

-(void) setResultWithNumber: (int) thenumber;
-(void) operationWithNumber: (int) thenumber;
-(IBAction) OneButton: (id) sender;
-(IBAction) TwoButton: (id) sender;
-(IBAction) ThreeButton: (id) sender;
-(IBAction) FourButton: (id) sender;
-(IBAction) FiveButton: (id) sender;
-(IBAction) SixButton: (id) sender;
-(IBAction) SevenButton: (id) sender;
-(IBAction) EightButton: (id) sender;
-(IBAction) NineButton: (id) sender;
-(IBAction) ZeroButton: (id) sender;
-(IBAction) DotButton: (id) sender;
-(IBAction) MultiplyButton: (id) sender;
-(IBAction) DivideButton: (id) sender;
-(IBAction) EqualsButton: (id) sender;
-(IBAction) DelButton: (id) sender;
-(IBAction) Plus_Minus: (id) sender;
-(IBAction) AddButton: (id) sender;
-(IBAction) MinusButton: (id) sender;

@end