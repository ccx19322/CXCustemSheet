//
//  TestViewController.m
//  CXCustemSheet
//
//  Created by chen cx on 2017/3/6.
//  Copyright © 2017年 chen cx. All rights reserved.
//

#import "TestViewController.h"
#import "CXCustemSheet.h"
@interface TestViewController ()<CXCustemSheetDelegate>
@property (nonatomic, strong) CXCustemSheet *sheet;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 50, 100, 50);
    [button setTitle:@"Sheet" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(sheetClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)sheetClick:(UIButton*)sender {
    //需要放的按钮数组
    NSArray * array = @[@"男",@"女"];
    _sheet = [[CXCustemSheet alloc]initWithNameArrays:array];
    _sheet.delegate = self;
    [_sheet selectedAtIndex:^(NSInteger index) {
        NSLog(@"%d",index);
    }];
    //弹出视图放在的视图
    [_sheet showInView:self.view];
}

- (void)buttonMenuCXCustemSheet:(CXCustemSheet *)buttonMenu didSelectedAtIndex:(NSUInteger)index {
    NSLog(@"%d",index);
}



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
