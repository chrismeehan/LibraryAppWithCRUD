//
//  Library.m
//  VirtualLibrary
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//
//

#import "Library.h"

@implementation Library

@synthesize arrayOfShelves = _arrayOfShelves;
@synthesize libraryName = _libraryName;
@synthesize numberOfShelves = _numberOfShelves;


//If the Library gets initiallized with init only, then we will start it off with 3 empty shelves.
- (id)init{
    //If this Library was initiallized with no shelves, then lets add 3 empty ones
    Shelf* shelf1 = [[Shelf alloc]init];
    Shelf* shelf2 = [[Shelf alloc]init];
    Shelf* shelf3 = [[Shelf alloc]init];
    NSMutableArray* arrayWithThreeEmptyShelves = [[NSMutableArray alloc]initWithObjects:shelf1,shelf2,shelf3, nil];
    //Now add your array of empty shelves by calling initWithArrayOfShelves with the array as a parameter.
    self = [self initWithArrayOfShelves:arrayWithThreeEmptyShelves andName:@"No Name"];
    return self;
}

- (id)initWithArrayOfShelves:(NSMutableArray*)initArrayOfShelves andName:(NSString*)theName{
    self.libraryName = theName;
    _arrayOfShelves = initArrayOfShelves;
    _numberOfShelves = [_arrayOfShelves count];//To keep track of how many shelves this Library has.
    return self;
}

//This reports all the books in this Library by returning an NSMutableArray of shelves, and prints to the console.
- (NSMutableArray*)reportAllBooks{
    NSLog(@"Library name is %@\n\n" , self.libraryName);
    for(Shelf* currentShelf in _arrayOfShelves){
        for(Book* currentBook in currentShelf.arrayOfBooks) {
            NSLog(@"Book title: %@ \n" , [currentBook getTheBooksTitle]);
        }
    }
    return _arrayOfShelves;
}

@end
