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
//    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 435)];
//    scroll.contentSize = CGSizeMake(320, 700);
//    scroll.showsHorizontalScrollIndicator = YES;
//    
//    NSArray *itemArray = [NSArray arrayWithObjects: @"One", @"Two", @"Three", nil];
//    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:itemArray];
//    segmentedControl.frame = CGRectMake(35, 200, 250, 50);
//    segmentedControl.segmentedControlStyle = UISegmentedControlStylePlain;
//    [segmentedControl addTarget:self action:@selector(MySegmentControlAction:) forControlEvents: UIControlEventValueChanged];
//    segmentedControl.selectedSegmentIndex = 1;
//    [scroll addSubview:segmentedControl];
//    //[segmentedControl release];
//    [self.view addSubview:scroll];

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
}
- (IBAction)valueChanged:(UISlider *)sender {
    [self cacTip:self.sliderPercent.value:self.purchaseAmount];
    float value = [sender value];
    self.plab.text = [NSString stringWithFormat:@"%f%%",value];
    int tip=[self cacTip:self.sliderPercent.value :_purchaseAmount];
    self.tipAmount.text=[NSString stringWithFormat:@"%d",tip];
}
- (int) cacTip:(float) value: (int) pamount{
    return value * pamount;
}
- (IBAction)segControl:(UISegmentedControl *)sender {
}
- (IBAction)cacul:(UIButton *)sender {
//    int tip=[self cacTip:self.sliderPercent.value :_purchaseAmount];
//    self.tipAmount.text=[NSString stringWithFormat:@"%d",tip];
}
@end
