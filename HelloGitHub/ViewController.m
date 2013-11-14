//
//  ViewController.m
//  HelloGitHub
//
//  Created by 嶋田　仁 on 13/11/07.
//  Copyright (c) 2013年 University of kitakyusyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize countNumber;
@synthesize buttonNumber;
@synthesize operationFlag;
@synthesize total;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)numberZero:(id)sender {
    self.buttonNumber = 0;
    [self resultOutput];
}

- (IBAction)numberOne:(id)sender {
    self.buttonNumber = 1;
    [self resultOutput];
}

- (IBAction)numberTwo:(id)sender {
    self.buttonNumber = 2;
    [self resultOutput];
}

- (IBAction)numberThree:(id)sender {
    self.buttonNumber = 3;
    [self resultOutput];
}

- (IBAction)numberFour:(id)sender {
    self.buttonNumber = 4;
    [self resultOutput];
}

- (IBAction)numberFive:(id)sender {
    self.buttonNumber = 5;
    [self resultOutput];
}

- (IBAction)numberSix:(id)sender {
    self.buttonNumber = 6;
    [self resultOutput];
}

- (IBAction)numberSeven:(id)sender {
    self.buttonNumber = 7;
    [self resultOutput];
}

- (IBAction)numberEight:(id)sender {
    self.buttonNumber = 8;
    [self resultOutput];
}

- (IBAction)numberNine:(id)sender {
    self.buttonNumber = 9;
    [self resultOutput];
}

- (IBAction)addButton:(id)sender {
    self.total += self.countNumber;
    self.countNumber = 0;
    self.operationFlag = 1;
}

- (IBAction)subButton:(id)sender {
    self.total -= self.countNumber;
    self.countNumber = 0;
    self.operationFlag = 2;
}

- (IBAction)mulButton:(id)sender {
    self.total *= self.countNumber;
    self.countNumber = 0;
    self.operationFlag = 3;
}

- (IBAction)divButton:(id)sender {
    self.total /= self.countNumber;
    self.countNumber = 0;
    self.operationFlag = 4;
}

- (IBAction)equalButton:(id)sender {
    switch(operationFlag){
        case 1:self.total += self.countNumber;
            break;
            
        case 2:self.total -= self.countNumber;
            break;
            
        case 3:self.total *= self.countNumber ;
            break;
            
        case 4:self.total /= self.countNumber;
            break;
            
        default:break;
    }
    self.countNumber = self.total;
    [self resultOutput];
    self.operationFlag = 0;
    self.countNumber = 0;
    
}
- (IBAction)clearButton:(id)sender {
    self.countNumber = 0;
    self.buttonNumber = 0;
    self.operationFlag = 0;
    self.total = 0;
    [self resultOutput];
}

-(void)resultOutput{
    self.countNumber = (self.countNumber*10)+buttonNumber;
    NSString *print=[[NSString alloc] initWithFormat:@"%d", self.countNumber];
    self.result.text = print;}
@end
