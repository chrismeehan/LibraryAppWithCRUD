//
//  Shelf.m
//  VirtualLibrary
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//

#import "Shelf.h"

@implementation Shelf

@synthesize arrayOfBooks = _arrayOfBooks;

- (id)init{
    //If the Library was initialized without any specified books, it will be empty.
    NSMutableArray *shelfWithEmptyArray = [[NSMutableArray alloc] init];
    self = [self initWithArrayOfBooks:shelfWithEmptyArray];
    return self;
}

- (id)initWithArrayOfBooks:(NSMutableArray*)arrayOfBooksToInitialize{
    if (self = [super init]){
        self.arrayOfBooks = arrayOfBooksToInitialize;
    }
    return self;
}
@end
