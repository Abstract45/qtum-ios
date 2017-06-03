//
//  ErrorPopUpViewController.m
//  qtum wallet
//
//  Created by Sharaev Vladimir on 03.06.17.
//  Copyright © 2017 PixelPlex. All rights reserved.
//

#import "ErrorPopUpViewController.h"

@interface ErrorPopUpViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *okButton;



@end

@implementation ErrorPopUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)actionOk:(id)sender {
    if ([self.delegate respondsToSelector:@selector(okButtonPressed)]) {
        [self.delegate okButtonPressed];
    }
}

- (IBAction)actionCancel:(id)sender {
    if ([self.delegate respondsToSelector:@selector(cancelButtonPressed)]) {
        [self.delegate cancelButtonPressed];
    }
}

- (void)setContent:(PopUpContent *)content{
    [super setContent:content];
    
    self.titleLabel.text = content.titleString;
    self.messageLabel.text = content.messageString;
    [self.okButton setTitle:content.okButtonTitle forState:UIControlStateNormal];
    [self.cancelButton setTitle:content.cancelButtonTitle forState:UIControlStateNormal];
}

@end
