//
//  ViewController.h
//  HelloGitHub
//
//  Created by 嶋田　仁 on 13/11/07.
//  Copyright (c) 2013年 University of kitakyusyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *result;

- (IBAction)numberZero:(id)sender;
- (IBAction)numberOne:(id)sender;
- (IBAction)numberTwo:(id)sender;
- (IBAction)numberThree:(id)sender;
- (IBAction)numberFour:(id)sender;
- (IBAction)numberFive:(id)sender;
- (IBAction)numberSix:(id)sender;
- (IBAction)numberSeven:(id)sender;
- (IBAction)numberEight:(id)sender;
- (IBAction)numberNine:(id)sender;
- (IBAction)equalButton:(id)sender;
- (IBAction)addButton:(id)sender;
- (IBAction)subButton:(id)sender;
- (IBAction)mulButton:(id)sender;
- (IBAction)divButton:(id)sender;
- (IBAction)clearButton:(id)sender;

@property(nonatomic, assign)double countNumber;
@property(nonatomic, assign)NSInteger buttonNumber;
@property(nonatomic, assign)NSInteger operationFlag;
@property(nonatomic, assign)NSInteger calcFlag;
@property(nonatomic, assign)NSInteger calcZeroFlag;
@property(nonatomic, assign)double total;
@end
