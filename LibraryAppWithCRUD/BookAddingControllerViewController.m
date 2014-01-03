//
//  BookAddingControllerViewController.m
//  LibraryAppWithCRUD
//
//  Created by Chris Meehan on 1/2/14.
//  Copyright (c) 2014 Chris Meehan. All rights reserved.
//

#import "BookAddingControllerViewController.h"

@interface BookAddingControllerViewController ()

@end

@implementation BookAddingControllerViewController

@synthesize currentBook=_currentBook;

-(IBAction)back:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

//Save changes made
-(IBAction)savePressed:(id)sender{
    self.currentBook.title = uITF.text;
    self.currentBook.contents = uITV.text;
    [self.BookAddingControllersDelegate performSelector:@selector(refresh) withObject:nil];//Now let's go back.
    [self dismissViewControllerAnimated:YES completion:nil];    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
    uITF.text = self.currentBook.getTheBooksTitle;
    uITV.text = self.currentBook.contents;
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
