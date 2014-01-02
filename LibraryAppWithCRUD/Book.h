//
//  Book.h
//  VirtualLibrary
//
//  Created by Chris Meehan on 12/31/13.
//  Copyright (c) 2013 Chris Meehan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
@property (strong,nonatomic,readwrite) NSString *title;
@property (strong,nonatomic,readwrite) NSString *contents;


-(NSString*)getTheBooksTitle;
-(void)talk;
- (id)initWithBookTitle:(NSString*) initBookTitle;
- (void)enshelf;
- (void)unshelf;

@end
