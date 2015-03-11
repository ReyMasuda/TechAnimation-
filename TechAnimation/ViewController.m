//
//  ViewController.m
//  TechAnimation
//
//  Created by ReyMasuda on 2015/03/11.
//  Copyright (c) 2015年 ReyMasuda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    imageView.center = CGPointMake(100, 100); //x座標が100, y座標が100のところに画像を表示
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)start{
    
    imageView.alpha = 0.1; //透明度を0.1に設定
    
    [UIView beginAnimations:nil context:nil]; //アニメーション設定開始
    
    [UIView setAnimationDuration:2]; //アニメーションは2秒間
    
    [UIView setAnimationDelay:1]; //開始を1秒遅らせる
    
    [UIView setAnimationRepeatCount:100]; //100回繰り返す
    
    imageView.center = CGPointMake(200, 200); //x座標が200, y座標が200のところに画像を表示
    
    imageView.alpha = 1;
    
    [UIView commitAnimations]; //アニメーション実行！
}

-(IBAction)show{
    label = [[UILabel alloc] initWithFrame:CGRectMake(-10, -30, 50, 30)];
    
    label.backgroundColor = [UIColor blackColor];
    
    label.textColor = [UIColor whiteColor];
    
    label.alpha = 0.0;
    
    label.text = @"HEY!!";
    
    [self.view addSubview:label];
    
    [self.view bringSubviewToFront:label];
    
}

@end
