//
//  Book.m
//  VirtualLibrary
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//


#import "Library.h"
#import "Book.h"

@implementation Book

@synthesize title = _title;
@synthesize contents = _contents;
@synthesize thisBooksShelf = _thisBooksShelf;

- (id)init{
    //If this book was initiallized without a name, name it "No Title"
    NSString* noTitleString = [NSString stringWithFormat:@"%@",@"No Title"];
    self = [self initWithBookTitle:noTitleString];
    return self;
}

- (id)initWithBookTitle:(NSString*) initBookTitle{
    if (self = [super init]){
        self.contents = @"All books will start \nwith this being it's contents, until they get modified.";
        self.title = initBookTitle;
    }
    return self;
}

-(NSString*)getTheBooksTitle{
    NSString* tempTitle = [NSString stringWithString:_title];
    return tempTitle;
}


- (void)enshelf:(Shelf*)putBookOnThisShelf{ 
    [putBookOnThisShelf.arrayOfBooks addObject:self];//Add this Book to the Shelf object.
    self.thisBooksShelf = putBookOnThisShelf; //So this book can keep track of its Shelf's pointer
}

- (void)unshelf{
    // If I have no current shelf
    if(self.thisBooksShelf == nil){
        //Do nothing.
    }
    //Otherwise, there is a Shelf object which is storing me. Remove me from it.
    else{
        Shelf* tempShelf =  self.thisBooksShelf;
        [tempShelf.arrayOfBooks removeObject:self];
        //Then tell this book that it no longer is holding a pointer to a Shelf object.
        self.thisBooksShelf = nil;
    } 
}

@end
