//
//  myUITVC.m
//  Test2
//
//  Created by Chris Meehan on 10/18/12.
//  Copyright (c) 2012 Chris Meehan. All rights reserved.
//

#import "BookController.h"

@interface BookController ()

@end

@implementation myUITVC
//@synthesize categoryList;
//@synthesize uITV;


//----------


//I HAVE TO implement this method because I put <ViewController2Delegate> in my header, meaning I abide to the protocol , and the one who dubbed themselves that protocol is VC2, and they force this method:
-(void)addThisNewCategory:(NSString *)category{
    NSMutableArray* arrayRepresentsMyCell = [[NSMutableArray alloc]init];
    [arrayRepresentsMyCell addObject:category];//I just added the string that is the name of this cell.
    NSMutableArray* myCells2ndObject = [[NSMutableArray alloc]init];
    [arrayRepresentsMyCell addObject:myCells2ndObject];//and a blank array for the next VC.
    [theArrayImResponsableFor addObject:arrayRepresentsMyCell];//Give it to my personal single array.
    [self refreshListAndSaveChangesToServices];//tell my screen and save to inside my phone.
}


//When I create the 2nd VC, tell him that I am his delegate, and bring him on the screen.
-(IBAction)goToNewCategory:(id)sender{
    NewCategory* nC7 = [self.storyboard instantiateViewControllerWithIdentifier:@"NewCategory"];
    nC7.delegate = self;
    [self presentViewController:nC7 animated:YES completion:nil];
}

-(IBAction)editPressed:(id)sender{
    if(deleteYesOrNo==NO){
        deleteYesOrNo=YES;
        [uITV setEditing:YES animated:YES];
        uIBBI.title = @"resume" ;
        
    }
    else{
        deleteYesOrNo=NO;
        [uITV setEditing:NO animated:YES];
        uIBBI.title = @"delete category" ;
        
    }
}

-(IBAction)displayInvoice{
    //then display to user.
    ClientInvoiceTV * cITV = [self.storyboard instantiateViewControllerWithIdentifier:@"ClientInvoiceTV"];
    [cITV setInvoiceTitle:invoiceTitle];
    [self.navigationController pushViewController:cITV animated:YES];
}


-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    if(editingStyle==UITableViewCellEditingStyleDelete){
        
        [theArrayImResponsableFor removeObjectAtIndex:indexPath.row];
        [uITV deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath ] withRowAnimation:UITableViewRowAnimationFade];
        
    }
    [self saveChangesMadeToServices];
    [uITV reloadData];
}


-(IBAction)refreshListAndSaveChangesToServices{
    [self saveChangesMadeToServices];
    [uITV reloadData];
}


-(void)saveChangesMadeToServices{
    //This saves our current array into NSUserDefaults
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    //convert the array to NSData
    NSData *mCNSData = [NSKeyedArchiver archivedDataWithRootObject:theArrayImResponsableFor];
    //Add that NSData to NSUserDefaults
    [userDefault setObject:mCNSData forKey:[NSString stringWithFormat:@"MainCategoriesArrayKey5"]];
    [userDefault synchronize];
}

-(void)saveChangesMadeToCustomerInfo{
    
}

-(void)setInvoiceTitle:(NSString*)stringers{
    invoiceTitle = stringers;
}


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Is there a saved "main category" array of strings? Of course.
    //Get the NSUserDefaults
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    //Lets attempt to get an entire array from NSUserDefaults (if there is one)
    //Lets decode it into NSData
    NSData *mCNSData = [defaults objectForKey: [NSString stringWithFormat:@"MainCategoriesArrayKey5"]];
    
    //If the NSData has something, and it will, then there is an old, saved mC array.
    if(mCNSData){
        NSLog(@"we have saved data!");
        theArrayImResponsableFor = [NSKeyedUnarchiver unarchiveObjectWithData: mCNSData];
    }
    // Otherwise there is no such array saved, so let it be how init left it.
    else{
        NSLog(@"nay saved data!");
        theArrayImResponsableFor = [[NSMutableArray alloc]init];
        NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
        NSData *mCNSData = [NSKeyedArchiver archivedDataWithRootObject:theArrayImResponsableFor];
        [userDefault setObject:mCNSData forKey:[NSString stringWithFormat:@"MainCategoriesArrayKey5"]];
        [userDefault synchronize];
        
        UIAlertView *message = [[UIAlertView alloc] initWithTitle:@""
                                                          message:@"Please restart this app now."
                                                         delegate:nil
                                                cancelButtonTitle:nil
                                                otherButtonTitles:nil];
        [message show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [theArrayImResponsableFor count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CategoryIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.textLabel.text = [[theArrayImResponsableFor objectAtIndex:indexPath.row] objectAtIndex:0];
    
    return cell;
}



#pragma mark - Table view delegate


-(void)sendThisArrayBackToParent:(NSMutableArray*)theArray{
    [theArrayImResponsableFor replaceObjectAtIndex:theRowImIn withObject:theArray];
    [self saveChangesMadeToServices];
}

-(IBAction)gotoEmailInfo:(id)sender{
    EmailInfo* eI = [self.storyboard instantiateViewControllerWithIdentifier:@"EmailInfo"];
    [eI setTitle:invoiceTitle];
    [self.navigationController pushViewController:eI animated:YES];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    SubCatUITVC *subCatUITVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SubCatUITVC"];
    subCatUITVC.title = [tableView cellForRowAtIndexPath:indexPath].textLabel.text;
    theRowImIn = indexPath.row;
    //our childs single array
    NSMutableArray* itemsArray = [[theArrayImResponsableFor objectAtIndex:theRowImIn]objectAtIndex:1];
    NSLog(@"items array has %i many items" , [itemsArray count]);
    [subCatUITVC setArrayImResponsableFor:itemsArray];
    subCatUITVC.delegate = self;
    // Pass the selected object to the new view controller.
    [subCatUITVC setInvoiceTitle:invoiceTitle];
    NSLog(@"effin mad it");
    [self.navigationController pushViewController:subCatUITVC animated:YES];
}

@end
