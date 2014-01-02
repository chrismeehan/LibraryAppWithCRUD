//
//  ViewController.m
//  LibraryAppWithCRUD
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//





//Shelf needs to be a class and not a nsmutable array





#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize listOfLibraries=_listOfLibraries;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Start up 1 library
    
    //Create some start up books.
    Book* book1 = [[Book alloc]initWithBookTitle:@"Moby Dick"];
    Book* book2 = [[Book alloc]initWithBookTitle:@"Gardening Made Easy"];
    //Lets introduce a duplicated book
    Book* book3 = [[Book alloc]initWithBookTitle:@"Gardening Made Easy"];
    Book* book4 = [[Book alloc]initWithBookTitle:@"Electronics 101"];
    Book* book5 = [[Book alloc]initWithBookTitle:@"Electronics 102"];
    Book* book6 = [[Book alloc]initWithBookTitle:@"Electronics 103"];
    //Create the shelves while adding books to them.
    Shelf* shelf1 = [[Shelf alloc]initWithArrayOfBooks:[[NSMutableArray alloc]initWithObjects:book1,book2,book3, nil]];
    Shelf* shelf2 = [[Shelf alloc]initWithArrayOfBooks:[[NSMutableArray alloc]initWithObjects:book4, nil]];
    Shelf* shelf3 = [[Shelf alloc]initWithArrayOfBooks:[[NSMutableArray alloc]initWithObjects:book5,book6,nil]];
    //Add these shelves to an array
    NSMutableArray* arrayOfShelves = [[NSMutableArray alloc]initWithObjects:shelf1,shelf2,shelf3, nil];
    //Now instantiate a library with the array.
    Library *chucksLibrary = [[Library alloc]initWithArrayOfShelves:arrayOfShelves andName:@"Chuck's Library"];
    
    //startup another library
    
    //Create some start up books.
    Book* book11 = [[Book alloc]initWithBookTitle:@"Hunting"];
    Book* book12 = [[Book alloc]initWithBookTitle:@"Fishing"];
    //Lets introduce a duplicated book
    Book* book13 = [[Book alloc]initWithBookTitle:@"Fishing"];
    Book* book14 = [[Book alloc]initWithBookTitle:@"Football"];
    Book* book15 = [[Book alloc]initWithBookTitle:@"Soccer"];
    Book* book16 = [[Book alloc]initWithBookTitle:@"Harry Potter"];
    //Create the shelves while adding books to them.
    Shelf* shelf11 = [[Shelf alloc]initWithArrayOfBooks:[[NSMutableArray alloc]initWithObjects:book11,book12,book13, nil]];
    Shelf* shelf12 = [[Shelf alloc]initWithArrayOfBooks:[[NSMutableArray alloc]initWithObjects:book14, nil]];
    Shelf* shelf13 = [[Shelf alloc]initWithArrayOfBooks:[[NSMutableArray alloc]initWithObjects:book15,book16,nil]];
    //Add these shelves to an array
    NSMutableArray* arrayOfShelves2 = [[NSMutableArray alloc]initWithObjects:shelf11,shelf12,shelf13, nil];
    //Now instantiate a library with the array.
    Library *everettLibrary = [[Library alloc]initWithArrayOfShelves:arrayOfShelves2 andName:@"Everett Library"];
    
    
    
    _listOfLibraries = [[NSMutableArray alloc]initWithObjects:chucksLibrary,everettLibrary, nil];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)viewLibaries:(id)sender{
    NSLog(@"i work!");

    TableListOfLibraries* tLOL =  [self.storyboard instantiateViewControllerWithIdentifier:@"TableListOfLibraries"];
    tLOL.anArrayOfLibraries = _listOfLibraries;
    //   tLOL.delegate = self;
    [self presentViewController:tLOL animated:YES completion:nil];
    
    /*
    
    TableListOfLibraries* tLOL = [self.storyboard instantiateViewControllerWithIdentifier:@"TableListOfLibraries"];
 //   tLOL.delegate = self;
    [self presentViewController:tLOL animated:YES completion:nil];
    
     */
    
}




@end
