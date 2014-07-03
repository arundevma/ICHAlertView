//
//  ICHViewController.m
//  ICHAlertView
//
//  Created by idev on 7/3/14.
//  Copyright (c) 2014 ichathan.com. All rights reserved.
//

#import "ICHViewController.h"
#import "ICHAlertView.h"

@interface ICHViewController ()

@end

@implementation ICHViewController

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
- (IBAction)buttonTapped:(id)sender
{
    [ICHAlertView showAlertWithTiTle:@"AlertView" message:@"This is a sample message." cancelButtonTitle:@"Cancel" otherButtonTitles:@[@"Ok"] withCompletionBlock:^(NSInteger index) {
        
        
    } andCancelBlock:^{
        
        
    } ];
}

@end
