//
//  EJBViewController.m
//  SimpleCalculator
//
//  Created by Eric on 4/28/14.
//  Copyright (c) 2014 CSC371. All rights reserved.
//

#import "EJBViewController.h"

@interface EJBViewController ()

@end

@implementation EJBViewController

@synthesize buffer;
@synthesize calculatorOutput;
@synthesize numbers;
int total = 0;

- (void)viewDidLoad
{
    [super viewDidLoad];
    buffer = [[NSString alloc] init];
    numbers = [[NSMutableArray alloc] init];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)numberPressed:(UIButton *)sender
{
    //append and output string so new displayed number looks as user expects
    buffer = [buffer stringByAppendingFormat:@"%@", [sender currentTitle]];
    calculatorOutput.text = buffer;
}


- (IBAction)calculate:(UIButton *)sender
{
    //convert numbers to int values and add all stored numebrs
    [numbers addObject: buffer];
    for (int i = 0; i < [numbers count]; i++){
        total += [numbers[i] intValue];
    }
    //convert to string and output total
    NSString *totalOutput = [ [NSString alloc] initWithFormat: @"%i", total];
    calculatorOutput.text = totalOutput;
    
    //clean up, remove current total and all previously added numbers
    buffer = @"";
    total = 0;
    [numbers removeAllObjects];
}


- (IBAction)addNumbers:(UIButton *)sender
{
    //check we're adding previous number + a new, or starting new
    if ([buffer isEqualToString:@"" ]) {
        [numbers addObject: calculatorOutput.text];
        calculatorOutput.text = @"0";
    } else {
        [numbers addObject: buffer];
        buffer = @"";
    }
}

@end
