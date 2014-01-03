//
//  ViewController.h
//  LibraryAppWithCRUD
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//
//This ViewController creates a few startup objects from the Library, Shelf, and Book class.
//It waits for a user to hit a button to browse saved Librarys.

#import <UIKit/UIKit.h>
#import "TableListOfLibraries.h"
#import "Book.h"
#import "Shelf.h"
#import "Library.h"
#import "BookController.h"
#import "ClassA.h"

@interface ViewController : UIViewController
    
@property (nonatomic,strong) NSMutableArray* listOfLibraries;

-(IBAction)viewLibaries:(id)sender;

@end
