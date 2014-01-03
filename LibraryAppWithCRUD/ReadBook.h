//
//  ReadBook.h
//  LibraryAppWithCRUD
//
//  Created by Chris Meehan on 1/2/14.
//  Copyright (c) 2014 Chris Meehan. All rights reserved.
//
//This controller displays the contents of the book, and allows to update the contents.

#import <UIKit/UIKit.h>
#import "Book.h"
#import "BookAddingControllerViewController.h"

//To refresh this controller when it gets called back.
@protocol ListRefreshDelegate
    -(void)refresh;
@end


@interface ReadBook : UIViewController<ReadBookDelegate>{
    IBOutlet UITextView* uITV;
    IBOutlet UINavigationBar *uINB;
}

@property (nonatomic,strong) Book* currentBook;//Cureent book we're reading
@property (assign) id readBooksDelegate;//This delegate to call back to here if we hit edit.

-(IBAction)editPressed:(id)sender;
-(IBAction)back:(id)sender;

@end
