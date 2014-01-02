//
//  TableListOfLibrarysShelves.h
//  LibraryAppWithCRUD
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableListOfShelvesBooks.h"
#import "Shelf.h"

@interface TableListOfLibrarysShelves : UITableViewController

@property (nonatomic,strong) NSMutableArray* anArrayOfShelves;
-(void)setNavTitle:(NSString *)title;
-(IBAction)back:(id)sender;

@end
