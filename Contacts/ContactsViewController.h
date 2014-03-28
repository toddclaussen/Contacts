//
//  ContactsViewController.h
//  Contacts
//
//  Created by Todd Claussen on 3/3/14.
//  Copyright (c) 2014 Todd Claussen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactsViewController : UIViewController
- (IBAction)btnBack:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *btnBack;
@property (strong, nonatomic) IBOutlet UITextView *txtData;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollview;

@property (strong, nonatomic) IBOutlet UITextField *txtName;

@property (strong, nonatomic) IBOutlet UITextField *txtAddress;

@property (strong, nonatomic) IBOutlet UITextField *txtCity;

@property (strong, nonatomic) IBOutlet UITextField *txtState;

@property (strong, nonatomic) IBOutlet UITextField *txtZip;


@property (strong, nonatomic) IBOutlet UITextField *txtPhone;
@property (strong, nonatomic) IBOutlet UITextField *txtEmail;


- (IBAction)btnViewData:(id)sender;
- (IBAction)btnSave:(id)sender;
-(IBAction) doneEditing:(id) sender;

@end
