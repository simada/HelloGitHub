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
@synthesize calcFlag;
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
    [self placeNumber];
}

- (IBAction)numberOne:(id)sender {
    self.buttonNumber = 1;
    [self placeNumber];
}

- (IBAction)numberTwo:(id)sender {
    self.buttonNumber = 2;
    [self placeNumber];
}

- (IBAction)numberThree:(id)sender {
    self.buttonNumber = 3;
    [self placeNumber];
}

- (IBAction)numberFour:(id)sender {
    self.buttonNumber = 4;
    [self placeNumber];
}

- (IBAction)numberFive:(id)sender {
    self.buttonNumber = 5;
    [self placeNumber];
}

- (IBAction)numberSix:(id)sender {
    self.buttonNumber = 6;
    [self placeNumber];
}

- (IBAction)numberSeven:(id)sender {
    self.buttonNumber = 7;
    [self placeNumber];
}

- (IBAction)numberEight:(id)sender {
    self.buttonNumber = 8;
    [self placeNumber];
}

- (IBAction)numberNine:(id)sender {
    self.buttonNumber = 9;
    [self placeNumber];
}

- (IBAction)addButton:(id)sender {
    [self calc];
    self.operationFlag = 1;}

- (IBAction)subButton:(id)sender {
    [self calc];
    self.operationFlag = 2;}

- (IBAction)mulButton:(id)sender {
    [self calc];
    self.operationFlag = 3;}

- (IBAction)divButton:(id)sender {
    [self calc];
    self.operationFlag = 4;}

-(IBAction)equalButton:(id)sender {
    if(self.operationFlag == 0){
        [self resultOutput];
    }
    else{
        [self calc];
    }
    self.countNumber = self.total;
    [self resultOutput];
    self.operationFlag = 0;
    self.countNumber = 0;
}

-(void)calc{
    if(calcFlag==0){
        self.total = self.countNumber;
        calcFlag=1;
    }
    else if(calcFlag==1){
        switch(operationFlag){
            case 1:self.total += self.countNumber;
                break;
                
            case 2:self.total -= self.countNumber;
                break;
                
            case 3:if(countNumber==0){
                    self.total = self.total;
                }
                if(countNumber!=0){
                    self.total *= self.countNumber;
                }
                break;
                
            case 4:if(countNumber==0){
                self.total = self.total;
            }
                if(countNumber!=0){
                    self.total /= self.countNumber;
            }
            break;
                
            default:break;
        }
        self.countNumber = self.total;
    }

    [self resultOutput];
    self.countNumber = 0;
}

- (IBAction)clearButton:(id)sender {
    self.countNumber = 0;
    self.buttonNumber = 0;
    self.operationFlag = 0;
    self.calcFlag = 0;
    self.total = 0;
    [self resultOutput];
}

-(void)placeNumber{
    self.countNumber = (self.countNumber*10)+buttonNumber;
    [self resultOutput];
}

-(void)resultOutput{
    if(self.countNumber <= 999999){
        if(-999999 <=self.countNumber){
            NSString *print=[[NSString alloc] initWithFormat:@"%g", self.countNumber];
            self.result.text = print;
        }
    }
    else{
    NSString *print=[[NSString alloc] initWithFormat:@"error"];
    self.result.text = print;
    }
}

@end
