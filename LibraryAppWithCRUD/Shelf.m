//
//  Shelf.m
//  VirtualLibrary
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//

#import "Shelf.h"

@implementation Shelf

@synthesize booksOnThisShelf = _booksOnThisShelf;

-(void)talk{
    
    NSLog(@"hi");
    
 //   NSLog(@"i am a shelf with %d books", _booksOnThisShelf.count);
  //  Book* tempBook = [_booksOnThisShelf objectAtIndex:0];
  //  NSString* tempString = tempBook.getTheBooksTitle;
  //  NSLog(@"the title be %@" , tempString);
}


- (id)init{
    //If the Library was initialized without any specified books, it will be empty.
    NSMutableArray *shelfWithEmptyArray = [[NSMutableArray alloc] init];
    self = [self initWithArrayOfBooks:shelfWithEmptyArray];
    return self;
}

- (id)initWithArrayOfBooks:(NSMutableArray*)booksToInitialize{
    if (self = [super init]){
        self.booksOnThisShelf = booksToInitialize;
    }
    return self;
}
@end
