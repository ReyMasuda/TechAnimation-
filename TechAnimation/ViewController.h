//
//  ViewController.h
//  TechAnimation
//
//  Created by ReyMasuda on 2015/03/11.
//  Copyright (c) 2015年 ReyMasuda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UIImageView *imageView; //画像表示のためのimageView
    
    UILabel *label; //labelの宣言
}

-(IBAction)start; //アニメーションのスタートメソッド
-(IBAction)back; //初期状態に戻すメソッド

-(IBAction)show; //パーツを表示させるためのメソッド


@end

