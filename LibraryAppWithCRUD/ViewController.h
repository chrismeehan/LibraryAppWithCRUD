//
//  ViewController.h
//  LibraryAppWithCRUD
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableListOfLibraries.h"
#import "Book.h"
#import "Shelf.h"
#import "Library.h"
#import "BookController.h"


/*
//This is you saying you are making a rule
@protocol GroceryItemAccepterDelegate
-(void)addThisItem:(NSString*)item;
@end
*/


@interface ViewController : UIViewController
    


@property (nonatomic,strong) NSMutableArray* listOfLibraries;


-(IBAction)viewLibaries:(id)sender;



@end
