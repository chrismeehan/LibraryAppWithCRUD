//
//  Shelf.h
//  VirtualLibrary
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Shelf : NSObject

@property (strong,nonatomic,readwrite) NSMutableArray *booksOnThisShelf;

- (id)initWithArrayOfBooks:(NSMutableArray*)booksToInitialize;
-(void)talk;

@end
