//
//  TableListOfLibraries.h
//  LibraryAppWithCRUD
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableListOfLibrarysShelves.h"
#import "Library.h"

@interface TableListOfLibraries : UITableViewController

    @property (nonatomic,strong) NSMutableArray* anArrayOfLibraries;

@end
