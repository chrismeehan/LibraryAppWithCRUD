//
//  BookAddingControllerViewController.h
//  LibraryAppWithCRUD
//
//  Created by Chris Meehan on 1/2/14.
//  Copyright (c) 2014 Chris Meehan. All rights reserved.
//
//  I should have named this contrller BookEditing, because this is where you change its contents.

#import <UIKit/UIKit.h>
#import "Book.h"

//To refresh this controller when it gets called back.
@protocol ReadBookDelegate
    -(void)refresh;
@end

@interface BookAddingControllerViewController : UIViewController{
    IBOutlet UITextField* uITF;
    IBOutlet UITextView* uITV;
}

@property (assign) id BookAddingControllersDelegate;//Either ReadBook or TLOSB will set my delegate to "themselves"
@property (nonatomic,strong) Book* currentBook;

-(IBAction)savePressed:(id)sender;
-(IBAction)back:(id)sender;

@end
