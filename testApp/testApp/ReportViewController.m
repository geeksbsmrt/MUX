//
//  ReportViewController.m
//  testApp
//
//  Created by Adam Crawford on 10/10/13.
//  Copyright (c) 2013 Adam Crawford. All rights reserved.
//

#import "ReportViewController.h"

@interface ReportViewController ()

@end

@implementation ReportViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated
{
	incidents.layer.borderWidth = 2.0f;
	incidents.layer.cornerRadius = 8;
	incidents.layer.borderColor = [[UIColor lightGrayColor] CGColor];
}

-(IBAction)onChange:(id)sender
{
	UIStepper *stepper = (UIStepper*)sender;
	
	if (stepper.tag == 0) {
		homeScore.text = [NSString stringWithFormat:@"%.f", stepper.value];
	} else if (stepper.tag == 1) {
		awayScore.text = [NSString stringWithFormat:@"%.f", stepper.value];
	}
}

-(IBAction)onClick:(id)sender
{
	UIButton *button = (UIButton*)sender;
	
	if (button.tag == 0 ){
		
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Saved" message:@"Your game report has been saved." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
		if (alert) {
			[alert show];
		}
	} else if (button.tag == 1){
		
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Canceled" message:@"Your game report has not been updated." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
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
