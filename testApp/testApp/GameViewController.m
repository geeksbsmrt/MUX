//
//  GameViewController.m
//  testApp
//
//  Created by Adam Crawford on 10/10/13.
//  Copyright (c) 2013 Adam Crawford. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

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
	UIButton *clicked = (UIButton*)sender;
	
	if (clicked.tag == 1) {
		
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Canceled" message:@"You have removed yourself from this match." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
		if (alert) {
			[alert show];
		}
		[[self navigationController] popViewControllerAnimated:YES];
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
