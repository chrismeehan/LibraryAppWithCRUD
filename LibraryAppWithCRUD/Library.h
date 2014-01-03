//
//  Library.h
//  VirtualLibrary
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//
//  The Library Class holds the Shelf class objects, that hold the Book class objects.


#import <Foundation/Foundation.h>
#import "Shelf.h"
#import "Book.h"

@interface Library : NSObject

//@property (assign,nonatomic,readwrite) int numOfShelves;
@property (strong,nonatomic,readwrite) NSMutableArray* arrayOfShelves;
@property (strong,nonatomic,readwrite) NSString* libraryName;
@property (nonatomic,readwrite) int numberOfShelves;

//This reports all the books in this Library by returning an NSMutableArray of shelves, and prints to the console.
- (NSMutableArray*)reportAllBooks;
- (id)initWithArrayOfShelves:(NSMutableArray*)initArrayOfShelves andName:(NSString*)theName;

@end
