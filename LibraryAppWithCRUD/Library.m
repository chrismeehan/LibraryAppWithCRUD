//
//  Library.m
//  VirtualLibrary
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//

#import "Library.h"

@implementation Library

@synthesize arrayOfShelves = _arrayOfShelves;
@synthesize libraryName = _libraryName;

//If the Library gets initiallized with init only, then we will start it off with 3 empty shelves.
- (id)init{
    NSMutableArray* arrayOfBooks1 = [[NSMutableArray alloc]init];
    NSMutableArray* arrayOfBooks2 = [[NSMutableArray alloc]init];
    NSMutableArray* arrayOfBooks3 = [[NSMutableArray alloc]init];
    NSMutableArray* arrayWithThreeEmptyShelves = [[NSMutableArray alloc]initWithObjects:arrayOfBooks1,arrayOfBooks2,arrayOfBooks3, nil];
    //Now add your array of empty shelves by calling initWithArrayOfShelves with the array as a parameter.
    self = [self initWithArrayOfShelves:arrayWithThreeEmptyShelves andName:@"No Name"];
    return self;
}

- (id)initWithArrayOfShelves:(NSMutableArray*)initArrayOfShelves andName:(NSString*)theName{
    NSLog(@"tree");
    self.libraryName = theName;
    _arrayOfShelves = initArrayOfShelves;
    return self;
}


//maybe have it return the entire library as an array also.
- (void)reportAllBooks{
    for(Shelf* currentShelf in _arrayOfShelves){
        [currentShelf talk];
        NSLog(@"Library name is %@" , self.libraryName);

        for(Book* currentBook in currentShelf.booksOnThisShelf) {
            NSLog(@"hinegss");
            [currentBook talk];
            NSLog(@"Book title: %@" , [currentBook getTheBooksTitle]);
        }
    }
}

@end
