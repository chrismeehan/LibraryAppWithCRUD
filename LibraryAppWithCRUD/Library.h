//
//  Library.h
//  VirtualLibrary
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shelf.h"
#import "Book.h"

@interface Library : NSObject

//@property (assign,nonatomic,readwrite) int numOfShelves;
@property (strong,nonatomic,readwrite) NSMutableArray* arrayOfShelves;
@property (strong,nonatomic,readwrite) NSString* libraryName;



- (void)reportAllBooks;
//- (id)initWithNumOfShelves:(int)startingNumOfShelves;
- (id)initWithArrayOfShelves:(NSMutableArray*)initArrayOfShelves andName:(NSString*)theName;

@end
