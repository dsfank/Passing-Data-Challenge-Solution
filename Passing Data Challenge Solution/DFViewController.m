//
//  DFViewController.m
//  Passing Data Challenge Solution
//
//  Created by Daren Fankhauser on 7/27/14.
//  Copyright (c) 2014 Daren Fankhauser. All rights reserved.
//

#import "DFViewController.h"
#import "DFDetailViewController.h"

@interface DFViewController ()

@end

@implementation DFViewController

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([sender isKindOfClass:[UIButton class]]) {
        if ([segue.destinationViewController isKindOfClass:[DFDetailViewController class]]) {
            DFDetailViewController *nextViewController = segue.destinationViewController;
            nextViewController.labelText = self.textField.text;
        }
    }
}
@end
