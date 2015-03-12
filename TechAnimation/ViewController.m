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
    label = [[UILabel alloc] initWithFrame:CGRectMake(-10, -30, 50, 30)]; //Labelを生成し、初期状態を決める
    
    label.backgroundColor = [UIColor blackColor]; //背景を黒にする
    
    label.textColor = [UIColor whiteColor]; //文字色を黒にする
    
    label.alpha = 0.0; //透明度を0.0にする(見えない)
    
    label.text = @"HEY!!"; //Labelに表示される文字を"HEY!"にする
    
    [self.view addSubview:label]; //labelを画面に表示される
    
    [self.view bringSubviewToFront:label]; //Labelを前面に表示させる
    
    [UIview animateKeyframesWithDuration:2.0f delay: options:<#(UIViewKeyframeAnimationOptions)#> animations:<#^(void)animations#> completion:<#^(BOOL finished)completion#>]
    
}

@end
