//
//  ViewController.m
//  TestDelegates
//
//  Created by Patrik Rikama Hinnenberg on 2018-02-09.
//  Copyright © 2018 Patrik Rikama Hinnenberg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) IBOutlet UILabel *recievingLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

/*
-(void)viewDidAppear:(BOOL)animated {
    [self.recievingLabel reloadData];
}
*/
 
-(void)userEnteredData:(NSString *)input {
    NSLog(@"%@", input);
    self.recievingLabel.text = input;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Segue

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    SenderViewController *senderVC = segue.destinationViewController;
    senderVC.delegate = self;
}


@end
