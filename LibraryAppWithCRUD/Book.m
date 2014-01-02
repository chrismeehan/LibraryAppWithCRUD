//
//  Book.m
//  VirtualLibrary
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//


#import "Library.h"
#import "Shelf.h"
#import "Book.h"

@implementation Book

@synthesize title = _title;
@synthesize contents = _contents;

- (id)init{
    //If this book was initiallized without a name, name it "No Title"
    NSString* noTitleString = [NSString stringWithFormat:@"%@",@"No Title"];
    self = [self initWithBookTitle:noTitleString];
    return self;
}


-(void)talk{
    
    NSLog(@"yo");
}

- (id)initWithBookTitle:(NSString*) initBookTitle{
    NSLog(@"redd");
    if (self = [super init]){
        self.title = initBookTitle;
        NSLog(@"books title has been set to: %@", self.title);
    }
    return self;
}

-(NSString*)getTheBooksTitle{
    NSString* tempTitle = [NSString stringWithString:_title];
    return tempTitle;
    
}


//Place this book on a particular shelf number.
- (void)enshelf{
    
    //controll what shelf this book is sitting on
}

//Remove this book from whatever shelf number it's on
- (void)unshelf{
    //controll what shelf this book is sitting on
    
}

@end
