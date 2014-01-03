//
//  Shelf.h
//  VirtualLibrary
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//
// This Shelf class represents a library shelf to be stored within a Library class.
// It contains an array of Books

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Shelf : NSObject

@property (strong,nonatomic,readwrite) NSMutableArray *arrayOfBooks;

- (id)initWithArrayOfBooks:(NSMutableArray*)arrayOfBooksToInitialize;

@end
