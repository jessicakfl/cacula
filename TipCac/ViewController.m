//
//  ViewController.m
//  TipCac
//
//  Created by Jessica Bai on 3/3/17.
//  Copyright © 2017 Jessica Bai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_purchaseAmond addTarget:self action:@selector(purchaseChange:) forControlEvents:UIControlEventEditingChanged];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)purchaseChange:(UITextField *)sender {
    NSString *amount =[sender text];
    self.purchaseAmount=[amount intValue];
    [self cacTip:self.sliderPercent.value :_purchaseAmount];
    self.tipAmount.text=[NSString stringWithFormat:@"%d",self.cacutlatedTipAmount];
    [self.view endEditing:YES];
}
- (IBAction)valueChanged:(UISlider *)sender {
    [self cacTip:self.sliderPercent.value:self.purchaseAmount];
    float value = [sender value];
    self.plab.text = [NSString stringWithFormat:@"%.0f%%",value];
    int tip=[self cacTip:self.sliderPercent.value :_purchaseAmount];
    self.tipAmount.text=[NSString stringWithFormat:@"%d",tip];
}
- (int) cacTip:(float) pur: (int) pamount{
    return pur * pamount/100;
}


@end
