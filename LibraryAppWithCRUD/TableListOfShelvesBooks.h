//
//  TableListOfShelvesBooks.h
//  LibraryAppWithCRUD
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Book.h"

@interface TableListOfShelvesBooks : UITableViewController
    @property (nonatomic,strong) NSMutableArray* anArrayOfBooks;
-(IBAction)back:(id)sender;

@end
