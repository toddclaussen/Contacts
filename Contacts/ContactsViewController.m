//
//  ContactsViewController.m
//  Contacts
//
//  Created by Todd Claussen on 3/3/14.
//  Copyright (c) 2014 Todd Claussen. All rights reserved.
//

#import "ContactsViewController.h"

@interface ContactsViewController ()

@end

@implementation ContactsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
}
-(void)dismissKeyboard {
    // add textfields and textviews
    //[Nameofoutletlikeatextfield resignFirstResponder];
    [self.txtName resignFirstResponder];
    [self.txtAddress resignFirstResponder];
    [self.txtCity resignFirstResponder];
    [self.txtState resignFirstResponder];
    [self.txtZip resignFirstResponder];
    [self.txtPhone resignFirstResponder];
    [self.txtEmail resignFirstResponder];
    [self.txtData resignFirstResponder];
     }

//right-click drag textfield to fileowner select doneediting
//right-click drag textfield to fileowner select delegate
-(IBAction) doneEditing:(id) sender {
    [sender resignFirstResponder];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnBack:(id)sender {
}
- (IBAction)btnViewData:(id)sender {
}

- (IBAction)btnSave:(id)sender {
}
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [self.scrollview setContentOffset:scrollPoint animated:YES];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self.scrollview setContentOffset:CGPointZero animated:YES];
}
- (void)textViewDidBeginEditing:(UITextView *)textView {
    CGPoint scrollPoint = CGPointMake(0, textView.frame.origin.y);
    [self.scrollview setContentOffset:scrollPoint animated:YES];
}
- (void)textViewDidEndEditing:(UITextView *)textView {
    [self.scrollview setContentOffset:CGPointZero animated:YES];
}

@end
