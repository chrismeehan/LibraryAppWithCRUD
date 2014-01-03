//
//  Book.h
//  VirtualLibrary
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//
// This Book class represents a library book to be stored within a Shelf class.
// It contains the name of a book, and it's contents.

#import <Foundation/Foundation.h>

@class Shelf;

@interface Book : NSObject

@property (strong,nonatomic,readwrite) NSString *title; //Each Book will hold a title.
@property (strong,nonatomic,readwrite) NSString *contents; //Each book should eventually have contents.
@property (nonatomic,readwrite) Shelf* thisBooksShelf; //Each book will keep track of its shelf's pointer.

-(NSString*)getTheBooksTitle;
- (id)initWithBookTitle:(NSString*) initBookTitle;
- (void)enshelf:(Shelf*)putBookOnThisShelf; //Places this book on a shelf
- (void)unshelf;//Removes the book from its shelf

@end
