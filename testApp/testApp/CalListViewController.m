//
//  CalListViewController.m
//  testApp
//
//  Created by Adam Crawford on 10/10/13.
//  Copyright (c) 2013 Adam Crawford. All rights reserved.
//

#import "CalListViewController.h"
#import "CellViewController.h"
#import "NewAssignmentViewController.h"
#import "GameViewController.h"

@interface CalListViewController ()

@end

@implementation CalListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewWillAppear:(BOOL)animated
{
	teams = [[NSArray alloc] initWithObjects:@"LFC", @"Chargers", @"TBU", @"OCU", @"Scream", @"Kicks", @"Panthers", @"Eagles", @"Bloodhounds", @"Yellow Jackets", nil];
	times = [[NSArray alloc] initWithObjects:@"8:00", @"10:00", @"12:00", @"14:00", @"16:00", @"18:00", nil];
	dates = [[NSArray alloc] initWithObjects:@"10/27/2013", nil];
	genders = [[NSArray alloc] initWithObjects:@"Boys", @"Girls", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 2;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	
    if(section == 0)
        return @"New Assignments";
	if(section == 1)
        return @"Current Assignments";
	return nil;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
	if (section == 0){
		return 2;
	} else if (section == 1) {
		return 2;
	}
	return 0;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier;
	static NSString *time;
	if (indexPath.section == 0) {
		CellIdentifier = @"NewCell";
	} else if (indexPath.section == 1) {
		CellIdentifier = @"AcceptedCell";
	}
	
	// pass a random team to variable for Home Team
	NSString *home = [teams objectAtIndex:rand()%[teams count]];
	
	// pass a random team to variable for Away Team
	NSString *away = [teams objectAtIndex:rand()%[teams count]];
	
	// Make sure away team is NOT same as home, if it is, assign new value
	while (away == home) {
		away = [teams objectAtIndex:rand()%[teams count]];
	}
	
	NSString *gender = [genders objectAtIndex:rand()%[genders count]];
	NSString *date = [dates objectAtIndex:rand()%[dates count]];
	if (indexPath.section == 0) {
		time = [times objectAtIndex:indexPath.row];
	} else if (indexPath.section == 1) {
		time = [times objectAtIndex:indexPath.row+2];
	}
	
	CellViewController *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
	
	cell.home.text = home;
	cell.away.text = away;
	cell.gender.text = gender;
	cell.date.text = date;
	cell.time.text = time;
	
	return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//	static NSString *segueIdentifier;
//	if (indexPath.section == 0) {
//		segueIdentifier = @"new";
//	} else if (indexPath.section == 1) {
//		segueIdentifier = @"details";
//	}
//
//	[self performSegueWithIdentifier:segueIdentifier sender:indexPath];
//}

#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	
	NSIndexPath *path = [self.tableView indexPathForSelectedRow];
	CellViewController *cell = (CellViewController*)[self.tableView cellForRowAtIndexPath:path];
	
	
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
	
	if ([[segue identifier] isEqualToString:@"new"]) {
		NewAssignmentViewController	*nvc = [segue destinationViewController];
		
		nvc.home = cell.home.text;
		nvc.away = cell.away.text;
		nvc.gender = cell.gender.text;
		nvc.date = cell.date.text;
		nvc.time = cell.time.text;
		
		nvc.navigationItem.title = @"New";
		
	} else if ([[segue identifier] isEqualToString:@"details"]) {
		GameViewController	*gvc = [segue destinationViewController];
		gvc.home = cell.home.text;
		gvc.away = cell.away.text;
		gvc.gender = cell.gender.text;
		gvc.date = cell.date.text;
		gvc.time = cell.time.text;
		gvc.navigationItem.title = @"Current";
	}
	
	[self.tableView deselectRowAtIndexPath:path animated:YES];
}

@end
