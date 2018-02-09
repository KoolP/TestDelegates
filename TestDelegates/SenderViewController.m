//
//  SenderViewController.m
//  TestDelegates
//
//  Created by Patrik Rikama Hinnenberg on 2018-02-09.
//  Copyright © 2018 Patrik Rikama Hinnenberg. All rights reserved.
//

#import "SenderViewController.h"

@interface SenderViewController ()
@property (nonatomic) IBOutlet UITextField *dataEntryTextField;

@end

@implementation SenderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)sendButtonPressed:(id)sender {
    
    NSString *inputDelegate = self.dataEntryTextField.text;
    
    [self.delegate userEnteredData:(NSString *) inputDelegate];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    //[self.navigationController popToRootViewControllerAnimated:YES];
}

/*
-(void)userEnteredData {
    
    [self.delegate userEnteredData:self.dataEntryTextField.text];
    
    
    NSString *input = self.dataEntryTextField.text;
    self.view.backgroundColor  = [UIColor blackColor];
    [self.delegat userEnteredData:self ]
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
