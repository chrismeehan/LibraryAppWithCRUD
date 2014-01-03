//
//  TableListOfShelvesBooks.h
//  LibraryAppWithCRUD
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//
//  This TableView will display the Books on the given Shelf.

#import <UIKit/UIKit.h>
#import "Book.h"
#import "BookAddingControllerViewController.h"
#import "ReadBook.h"

@interface TableListOfShelvesBooks : UITableViewController<ListRefreshDelegate>{
    IBOutlet UIBarButtonItem* uIBBI;
    BOOL deleteYesOrNo;//This screen gives the options to delete books too.
}

@property (nonatomic,strong) NSMutableArray* anArrayOfBooks;

-(IBAction)back:(id)sender;
-(IBAction)deletePressed:(id)sender;
-(IBAction)addBookPressed:(id)sender;

@end
