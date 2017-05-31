//
//  ViewController.m
//  XMViewCategory
//
//  Created by xuming on 2017/5/18.
//  Copyright © 2017年 NationSky. All rights reserved.
//

#import "ViewController.h"
#import "UIView+XMViewCategory.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *view1;
@property (strong, nonatomic) IBOutlet UIView *view2;
@property (strong, nonatomic) IBOutlet UIView *view3;
@property (strong, nonatomic) IBOutlet UIView *view4;
@property (strong, nonatomic) IBOutlet UIView *view5;
@property (strong, nonatomic) IBOutlet UIView *view6;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view1 xm_setCornerRadius:20 withBackgroundColor:[UIColor redColor]];
    [self.view2 xm_setCornerRadius:10 withBorderColor:[UIColor blueColor] borderWidth:15];
    [self.view3 xm_setCornerRadius:10 withBackgroundColor:[UIColor greenColor] borderColor:[UIColor grayColor] borderWidth:2];
    [self.view4 xm_setCornerRadius:10];
    [self.view5 xm_setCornerRadius:10 byRoundingCorners:UIRectCornerTopLeft];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
