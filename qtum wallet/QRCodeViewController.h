//
//  QRCodeViewController.h
//  qtum wallet
//
//  Created by Sharaev Vladimir on 21.11.16.
//  Copyright © 2016 Designsters. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol QRCodeViewControllerDelegate <NSObject>

- (void)qrCodeScanned:(NSString *)string;

@end

@interface QRCodeViewController : BaseViewController

@property (nonatomic, weak) id<QRCodeViewControllerDelegate> delegate;

@end
