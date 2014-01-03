//
//  TableListOfShelvesBooks.m
//  LibraryAppWithCRUD
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//

#import "TableListOfShelvesBooks.h"

@interface TableListOfShelvesBooks ()

@end

@implementation TableListOfShelvesBooks
@synthesize anArrayOfBooks=_anArrayOfBooks;

//For the ability to delete
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if(editingStyle==UITableViewCellEditingStyleDelete){
        [self.anArrayOfBooks removeObjectAtIndex:indexPath.row];
        [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath ] withRowAnimation:UITableViewRowAnimationFade];
    }
    [self.tableView reloadData];
}

//To refresh the tableview when returning back to it.
-(void)refresh{
    [self.tableView reloadData];
}

//This will add a new Book to the shelf.
-(IBAction)addBookPressed:(id)sender{
    BookAddingControllerViewController* bACVC = [self.storyboard instantiateViewControllerWithIdentifier:@"BookAddingControllerViewController"];
    Book* tempBook = [[Book alloc]initWithBookTitle:@"No Title"];//Start it off blank
    [self.anArrayOfBooks addObject:tempBook];//Add it to the shelf
    bACVC.currentBook = tempBook;//Then set up the editing Controller to update its contents.
    bACVC.BookAddingControllersDelegate = self;//So the editing controller can talk back to me.
    [self presentViewController:bACVC animated:YES completion:nil];    //Then call to edit it.
}

-(IBAction)deletePressed:(id)sender{
    if(deleteYesOrNo==NO){
        deleteYesOrNo=YES;
        [self setEditing:YES animated:YES];
        uIBBI.title = @"resume" ;
        
    }
    else{
        deleteYesOrNo=NO;
        [self setEditing:NO animated:YES];
        uIBBI.title = @"delete category" ;
        
    }
}

- (id)initWithStyle:(UITableViewStyle)style{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    NSLog(@"count is %d" , [_anArrayOfBooks count]);
    return [_anArrayOfBooks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"BookTitle";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    // Configure the cell...
    Book* tempBook = [_anArrayOfBooks objectAtIndex:indexPath.row];
    cell.textLabel.text = [tempBook getTheBooksTitle] ;
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

-(IBAction)back:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}


#pragma mark - Table view delegate

//If a Book gets selected, then it goes to the Read screen.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ReadBook* rB = [self.storyboard instantiateViewControllerWithIdentifier:@"ReadBook"];
    Book* tempBook = [_anArrayOfBooks objectAtIndex:indexPath.row];
    rB.currentBook = tempBook;
    rB.readBooksDelegate = self;
    [self presentViewController:rB animated:YES completion:nil];
    
}

@end
