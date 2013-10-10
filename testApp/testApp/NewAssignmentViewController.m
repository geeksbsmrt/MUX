//
//  NewAssignmentViewController.m
//  testApp
//
//  Created by Adam Crawford on 10/10/13.
//  Copyright (c) 2013 Adam Crawford. All rights reserved.
//

#import "NewAssignmentViewController.h"

@interface NewAssignmentViewController ()

@end

@implementation NewAssignmentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)onClick:(id)sender
{
	UIButton *button = (UIButton*)sender;
	
	if (button.tag == 0 ){
		
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Accepted" message:@"This game has been added to your schedule." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
		if (alert) {
			[alert show];
		}
		
		[self.navigationController popViewControllerAnimated:YES];
		
	} else if (button.tag == 1){
		
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Rejected" message:@"You have rejected this assignment." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
		if (alert) {
			[alert show];
		}
		[self.navigationController popViewControllerAnimated:YES];
	}
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
