//
//  ReadBook.m
//  LibraryAppWithCRUD
//
//  Created by Chris Meehan on 1/2/14.
//  Copyright (c) 2014 Chris Meehan. All rights reserved.
//

#import "ReadBook.h"

@interface ReadBook ()

@end

@implementation ReadBook
@synthesize currentBook=_currentBook;

//To refresh the tableview when returning back to it.
-(void)refresh{
    uITV.text = self.currentBook.contents;
}

-(IBAction)back:(id)sender{
    [self.readBooksDelegate performSelector:@selector(refresh) withObject:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)editPressed:(id)sender{
    BookAddingControllerViewController* bACVC = [self.storyboard instantiateViewControllerWithIdentifier:@"BookAddingControllerViewController"];
    bACVC.currentBook = self.currentBook;
    bACVC.BookAddingControllersDelegate = self;
    [self presentViewController:bACVC animated:YES completion:nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    uITV.text = self.currentBook.contents;
    uITV.editable = NO;
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
