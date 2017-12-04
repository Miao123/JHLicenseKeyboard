//
//  ViewController.m
//  车牌号
//
//  Created by 苗建浩 on 2017/12/4.
//  Copyright © 2017年 苗建浩. All rights reserved.
//

#import "ViewController.h"
#import "Header.h"
#import "LicensePlateView.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *carNumberBtn;
@property (nonatomic, strong) UILabel *promptLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *carNumberBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    carNumberBtn.frame = CGRectMake(60, 100, 200, 40);
    carNumberBtn.backgroundColor = [UIColor whiteColor];
    //    [carNumberBtn setTitle:@"请输入车牌号码" forState:0];
    [carNumberBtn setTitleColor:[UIColor darkGrayColor] forState:0];
    carNumberBtn.titleLabel.font = [UIFont systemFontOfSize:15 weight:UIFontWeightThin];
    [carNumberBtn addTarget:self action:@selector(carNumberClick:) forControlEvents:UIControlEventTouchUpInside];
    carNumberBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    self.carNumberBtn = carNumberBtn;
    [self.view addSubview:carNumberBtn];
    
    
    UILabel *promptLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
    promptLabel.text = @"请输入车牌号码";
    promptLabel.textColor = [UIColor darkGrayColor];
    promptLabel.font = [UIFont systemFontOfSize:15 weight:UIFontWeightThin];
    self.promptLabel = promptLabel;
    [carNumberBtn addSubview:promptLabel];
}


- (void)carNumberClick:(UIButton *)sender{
    
    
    LicensePlateView *carView = [LicensePlateView initFrame:CGRectMake(0, 0, screenWidth, screenHight) block:^(NSString *str) {
        if (str.length > 0) {
            self.promptLabel.hidden = YES;
        }else{
            self.promptLabel.hidden = NO;
        }
        [self.carNumberBtn setTitle:str forState:0];
        NSLog(@"str = %@",str);
    }];
    [self.view addSubview:carView];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
