//
//  EJBViewController.h
//  SimpleCalculator
//
//  Created by Eric on 4/28/14.
//  Copyright (c) 2014 CSC371. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EJBViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *calculatorOutput;

//stores numbers to be added together
@property (strong, nonatomic) NSMutableArray *numbers;

//stores last number pressed to create total number string
@property (strong, nonatomic) NSString *buffer;


- (IBAction)numberPressed:(UIButton *)sender;
- (IBAction)calculate:(UIButton *)sender;
- (IBAction)addNumbers:(UIButton *)sender;

@end
