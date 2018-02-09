//
//  SenderViewController.h
//  TestDelegates
//
//  Created by Patrik Rikama Hinnenberg on 2018-02-09.
//  Copyright © 2018 Patrik Rikama Hinnenberg. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SenderViewControllerProtocol <NSObject>
@required
-(void)userEnteredData:(NSString *)input;
@end

@interface SenderViewController : UIViewController

@property (nonatomic) id <SenderViewControllerProtocol> delegate;

@end
