//
//  TableListOfLibraries.m
//  LibraryAppWithCRUD
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//

#import "TableListOfLibraries.h"

@interface TableListOfLibraries ()

@end

@implementation TableListOfLibraries

@synthesize anArrayOfLibraries= _anArrayOfLibraries;

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
  //  appD = [[UIApplication sharedApplication]delegate];
   // _theArrayImResponsableFor = [[NSMutableArray alloc]initWithObjects:@"Marysville Library", @"Stanwood Library", @"Darrington Library", nil];

    
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
    return [_anArrayOfLibraries count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"LibraryCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
  //  cell.textLabel.text = [_theArrayImResponsableFor objectAtIndex:indexPath.row];
    Library* tempL = [_anArrayOfLibraries objectAtIndex:indexPath.row];
    
    cell.textLabel.text = tempL.libraryName;
    
    return cell;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSLog(@"yarr");
 //   rowOfLastItemSelected = indexPath.row;
    TableListOfLibrarysShelves* tLOLS = [self.storyboard instantiateViewControllerWithIdentifier:@"TableListOfLibrarysShelves"];
    tLOLS.title = [tableView cellForRowAtIndexPath:indexPath].textLabel.text;

    //tLOLS.delegate = self;
    Library* tempL = [_anArrayOfLibraries objectAtIndex:indexPath.row];
    NSMutableArray* tempShelfArray  =    tempL.arrayOfShelves;
    
    tLOLS.anArrayOfShelves = tempShelfArray;
    [self presentViewController:tLOLS animated:YES completion:nil];
    

    
    
}

@end
