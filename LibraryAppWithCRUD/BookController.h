//THis class is responsable for displaying all the "MainCategories".

#import <UIKit/UIKit.h>
//#import "SubCatUITVC.h"
//#import "NewCategory.h"
//#import "EmailInfo.h"


@interface BookController : UITableViewController{
    NSMutableArray* clientInfoArray;
    IBOutlet UIBarButtonItem* uIBBI;
    NSString* invoiceTitle;
    int theRowImIn;
    BOOL deleteYesOrNo;
    IBOutlet UITableView* uITV;
    IBOutlet UIButton* deleteAndDoneButton;
    IBOutlet UIButton* newCategoryButton;
//    IBOutlet SubCatUITVC* sCUITVC;  //The next table view.
    NSMutableArray* theArrayImResponsableFor;
    
}

//@property (nonatomic,strong) MainCategories* categoryList;
//@property (nonatomic,strong) UITableView* uITV;
//@property (nonatomic,retain) SubCatUITVC* sCUITVC;

-(IBAction)displayInvoice;
-(void)setInvoiceTitle:(NSString*)stringers;
-(IBAction)editPressed:(id)sender;
-(void)saveChangesMadeToServices;
-(void)saveChangesMadeToCustomerInfo;
-(IBAction)gotoEmailInfo:(id)sender;
-(IBAction)refreshListAndSaveChangesToServices;

@end
