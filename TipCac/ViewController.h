//
//  ViewController.h
//  TipCac
//
//  Created by Jessica Bai on 3/3/17.
//  Copyright © 2017 Jessica Bai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *purchaseAmond;
@property (weak, nonatomic) IBOutlet UISlider *sliderPercent;
@property (nonatomic) int cacutlatedTipAmount;


@property (weak, nonatomic) IBOutlet UILabel *plab;
@property (nonatomic) int purchaseAmount;
- (IBAction)valueChanged:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UILabel *tipAmount;
- (IBAction)purchaseChange:(UITextField *)sender;
- (int) cacTip:(float) pur: (int) pamount;


@end

