//
//  TableListOfLibrarysShelves.m
//  LibraryAppWithCRUD
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//

#import "TableListOfLibrarysShelves.h"

@interface TableListOfLibrarysShelves ()

@end

@implementation TableListOfLibrarysShelves

@synthesize anArrayOfShelves=_anArrayOfShelves;

-(void)setNavTitle:(NSString *)title{
 }


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
   // _theArrayImResponsableFor = [[NSMutableArray alloc]initWithObjects:@"Shelve1", @"Shelve2", @"Shelve3", nil];
    NSLog(@"didddd");

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    NSLog(@"count is %d" , [_anArrayOfShelves count]);
    return [_anArrayOfShelves count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ShelveTitle";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
  //  Shelf* tempShelf = [_theArrayImResponsableFor objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"Shelf %d",indexPath.row+1 ];
    
    
    
    // Configure the cell...
   // cell.textLabel.text = [_theArrayImResponsableFor objectAtIndex:indexPath.row];

    return cell;
}

-(IBAction)back:(id)sender{
    
    NSLog(@"back was hit");
    [self dismissViewControllerAnimated:YES completion:nil];
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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //   rowOfLastItemSelected = indexPath.row;
    TableListOfShelvesBooks* tLOSB = [self.storyboard instantiateViewControllerWithIdentifier:@"TableListOfShelvesBooks"];
    //tLOLS.delegate = self;
    Shelf* tempShelf = [_anArrayOfShelves objectAtIndex:indexPath.row];
    tLOSB.anArrayOfBooks = tempShelf.booksOnThisShelf;
    [self presentViewController:tLOSB animated:YES completion:nil];
    
}

@end
