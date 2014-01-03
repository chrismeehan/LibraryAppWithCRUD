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

@interface TableListOfShelvesBooks : UITableViewController{
    IBOutlet UIBarButtonItem* uIBBI;
}

@property (nonatomic,strong) NSMutableArray* anArrayOfBooks;

-(IBAction)back:(id)sender;

@end
