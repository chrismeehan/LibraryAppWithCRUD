//
//  ViewController.m
//  LibraryAppWithCRUD
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize listOfLibraries=_listOfLibraries;

- (void)viewDidLoad{
    [super viewDidLoad];
    //Start up the 1st Library
    
    //Create some start up books.
    Book* book1 = [[Book alloc]initWithBookTitle:@"Moby Dick"];
    Book* book2 = [[Book alloc]initWithBookTitle:@"Gardening Made Easy"];
    //Lets introduce a duplicated book
    Book* book3 = [[Book alloc]initWithBookTitle:@"Gardening Made Easy"];
    Book* book4 = [[Book alloc]initWithBookTitle:@"Electronics 101"];
    Book* book5 = [[Book alloc]initWithBookTitle:@"Electronics 102"];
    Book* book6 = [[Book alloc]initWithBookTitle:@"Electronics 103"];
 
    //Create the shelves.
    Shelf* shelf1 = [[Shelf alloc]init];
    Shelf* shelf2 = [[Shelf alloc]init];
    Shelf* shelf3 = [[Shelf alloc]init];
    
    //And add Books to them by enshelfing
    [book1 enshelf:shelf1];
    //Let's show we can unshelf our 1st book, Moby Dick.
    [book1 unshelf];
    //and enshelf it back
    [book1 enshelf:shelf1];
    [book2 enshelf:shelf1];
    [book3 enshelf:shelf1];
    [book4 enshelf:shelf2];
    [book5 enshelf:shelf3];
    [book6 enshelf:shelf3];

    //Add these shelves to an array
    NSMutableArray* arrayOfShelves = [[NSMutableArray alloc]initWithObjects:shelf1,shelf2,shelf3, nil];
    //Now instantiate a library.
    Library *chucksLibrary = [[Library alloc]initWithArrayOfShelves:arrayOfShelves andName:@"Chuck's Library"];
    
    //startup another library
    

    Book* book11 = [[Book alloc]initWithBookTitle:@"Hunting"];
    Book* book12 = [[Book alloc]initWithBookTitle:@"Fishing"];
    Book* book13 = [[Book alloc]initWithBookTitle:@"Fishing"];
    Book* book14 = [[Book alloc]initWithBookTitle:@"Football"];
    Book* book15 = [[Book alloc]initWithBookTitle:@"Soccer"];
    Book* book16 = [[Book alloc]initWithBookTitle:@"Harry Potter"];
    Shelf* shelf11 =  [[Shelf alloc]init];
    Shelf* shelf12 =  [[Shelf alloc]init];
    Shelf* shelf13 =  [[Shelf alloc]init];
    NSMutableArray* arrayOfShelves2 = [[NSMutableArray alloc]initWithObjects:shelf11,shelf12,shelf13, nil];
    Library *northLibrary = [[Library alloc]initWithArrayOfShelves:arrayOfShelves2 andName:@"North Library"];
    [book11 enshelf:shelf11];
    [book12 enshelf:shelf11];
    [book13 enshelf:shelf11];
    [book14 enshelf:shelf12];
    [book15 enshelf:shelf13];
    [book16 enshelf:shelf13];

    //Now add all created Libraries to an array for the user's first TableView screen
    _listOfLibraries = [[NSMutableArray alloc]initWithObjects:chucksLibrary,northLibrary, nil];
    
    //Now I will create a large amount of text to test how scrolling will be, we'll put it in Moby Dick.
     NSString* tempString = [NSString stringWithString:@"Call me Ishmael. Some years ago — never mind how long precisely — having little or no money in my purse, and nothing particular to interest me on shore, I thought I would sail about a little and see the watery part of the world. It is a way I have of driving off the spleen and regulating the circulation. Whenever I find myself growing grim about the mouth; whenever it is a damp, drizzly November in my soul; whenever I find myself involuntarily pausing before coffin warehouses, and bringing up the rear of every funeral I meet; and especially whenever my hypos get such an upper hand of me, that it requires a strong moral principle to prevent me from deliberately stepping into the street, and methodically knocking people’s hats off—then, I account it high time to get to sea as soon as I can. This is my substitute for pistol and ball. With a philosophical flourish Cato throws himself upon his sword; I quietly take to the ship.Let the most absent minded of men be plunged in his deepest reveries-stand that man on his legs, set his feet a-going, and he will infallibly lead you to water.Yes, as every one knows, meditation and water are wedded for ever.But here is an artist. He desires to paint you the dreamiest, shadiest, quietest, most enchanting bit of romantic landscape... What is the chief element he employs?Why did the old Persians hold the sea holy? Why did the Greeks give it a separate deity, and own brother of Jove? Surely all this is not without meaning. And still deeper the meaning of that story of Narcissus, who because he could not grasp the tormenting, mild image he saw in the fountain, plunged into it and was drowned. But that same image, we ourselves see in all rivers and oceans. It is the image of the ungraspable phantom of life; and this is the key to it all.The act of paying is perhaps the most uncomfortable infliction that the two orchard thieves entailed upon us."];
    
    book1.contents = tempString;
    
    //Now let's print out all the books in a Library to the console.
    [chucksLibrary reportAllBooks];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//This starts the app when the button gets hit.
-(IBAction)viewLibaries:(id)sender{
    TableListOfLibraries* tLOL =  [self.storyboard instantiateViewControllerWithIdentifier:@"TableListOfLibraries"];
    tLOL.anArrayOfLibraries = _listOfLibraries;
    [self presentViewController:tLOL animated:YES completion:nil];
}




@end
