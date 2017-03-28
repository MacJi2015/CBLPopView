//
//  ViewController.m
//  CBLPopView
//
//  Created by 上海点硕 on 2016/10/14.
//  Copyright © 2016年 cbl－　点硕. All rights reserved.
//

#import "ViewController.h"
#import "CustomAlertView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton  new];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor blackColor];
    btn.frame =  CGRectMake(100, 100, 160, 60);
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    
   
}

- (void)btnclick
{
    
    CustomAlertView *alert = [[CustomAlertView alloc] initWithAlertViewHeight:320];
    
    alert.ButtonClick = ^void(UIButton*button){
        NSLog(@"%ld",(long)button.tag);
        
        if (button.tag==100) {
            //look  rili
            
        }
    };
 
}





@end
