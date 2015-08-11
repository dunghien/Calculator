//
//  ViewController.m
//  Callcutalor
//
//  Created by Quoc Dung on 8/7/15.
//  Copyright (c) 2015 A.Braeng. All rights reserved.
//


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    isdecimal = false;
    resultnumber = 0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) setResultWithNumber: (int) theNumber{
    if(!isdecimal){
        displaynumber *= 10;
        displaynumber += theNumber;
        self.Result.text = [NSString stringWithFormat:@"%.0f", displaynumber];
    }
    else{
        self.Result.text = [self.Result.text stringByAppendingString:[NSString stringWithFormat:@"%d", theNumber]];
    }
    displaynumber = [self.Result.text floatValue];
}
- (void) operationWithNumber: (int) theNumber{
    isdecimal = false;
    if(resultnumber==0)
        resultnumber = displaynumber;
    else{
        self.Result.text = [NSString stringWithFormat:@"%.2f", resultnumber];
        switch (operation) {
            case 1:
                resultnumber += displaynumber;
                break;
            case 2:
                resultnumber -= displaynumber;
                break;
            case 3:
                resultnumber *= displaynumber;
                break;
            case 4:
                resultnumber /= displaynumber;
                break;
            default:
                break;
        }
    }
    operation = theNumber;
    displaynumber = 0;
}

- (IBAction)CleanButton: (id) sender {
    operation = 0;
    displaynumber = 0;
    resultnumber = 0;
    isdecimal = false;
    self.Result.text = [NSString stringWithFormat:@"%d", 0];
}

- (IBAction)OneButton: (id)sender {
    [self setResultWithNumber: 1];
}

- (IBAction)TwoButton: (id) sender {
    [self setResultWithNumber: 2];
}

- (IBAction)ThreeButton: (id) sender {
    [self setResultWithNumber: 3];
}

- (IBAction)FourButton: (id) sender {
    [self setResultWithNumber: 4];
}

- (IBAction)FiveButton: (id) sender {
    [self setResultWithNumber: 5];
}

- (IBAction)SixButton: (id) sender {
    [self setResultWithNumber: 6];
}

- (IBAction)SevenButton: (id) sender {
    [self setResultWithNumber: 7];
}

- (IBAction)EightButton: (id) sender {
    [self setResultWithNumber: 8];
}

- (IBAction)NineButton: (id) sender {
    [self setResultWithNumber: 9];
}

- (IBAction)ZeroButton: (id) sender {
    [self setResultWithNumber: 0];
}

- (IBAction)DotButton: (id) sender {
    isdecimal = true;
    NSRange range = [self.Result.text rangeOfString:@"."];
    if(range.location == NSNotFound){
        self.Result.text = [self.Result.text stringByAppendingString:@"."];
    }
}

- (IBAction)DivideButton: (id) sender {
    if(resultnumber !=0){
        [self operationWithNumber:operation];
        self.Result.text = [NSString stringWithFormat:@"%.2f", resultnumber];
        displaynumber = [self.Result.text floatValue];
        resultnumber = 0;
    }
    [self operationWithNumber: 4];
}

- (IBAction)MultiplyButton: (id) sender {
    if(resultnumber != 0){
        [self operationWithNumber: operation];
        self.Result.text = [NSString stringWithFormat:@"%.2f", resultnumber];
        displaynumber = [self.Result.text floatValue];
        resultnumber = 0;
    }
    [self operationWithNumber: 3];
}

- (IBAction)AddButton: (id) sender {
    if(resultnumber != 0){
        [self operationWithNumber: operation];
        self.Result.text = [NSString stringWithFormat:@"%.2f", resultnumber];
        displaynumber = [self.Result.text floatValue];
        resultnumber = 0;
    }
    [self operationWithNumber: 1];
}

- (IBAction)MinusButton: (id) sender {
    if(resultnumber != 0){
        [self operationWithNumber: operation];
        self.Result.text = [NSString stringWithFormat:@"%.2f", resultnumber];
        displaynumber = [self.Result.text floatValue];
        resultnumber = 0;
    }
    [self operationWithNumber: 2];
}

- (IBAction)EqualsButton: (id) sender {
    [self operationWithNumber: operation];
    self.Result.text = [NSString stringWithFormat:@"%.2f", resultnumber];
    displaynumber = [self.Result.text floatValue];
    resultnumber = 0;
}

- (IBAction)DelButton:(id) sender {
    NSMutableString *string = [NSMutableString stringWithFormat:@"%@", self.Result.text];
    NSUInteger length = [string length];
    NSString *temp = [string substringToIndex: length - 1];
    self.Result.text = [NSString stringWithFormat:@"%@", temp];
    displaynumber = [self.Result.text floatValue];
}

- (IBAction)Plus_Minus: (id) sender {
    displaynumber = 0 - displaynumber;
    if(isdecimal)
        self.Result.text = [NSString stringWithFormat:@"%.2f", displaynumber];
    else
        self.Result.text = [NSString stringWithFormat:@"%.0f", displaynumber];
    
}


@end
