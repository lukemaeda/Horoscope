//
//  ViewController.m
//  Horoscope
//
//  Created by kunren10 on 2014/02/27.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// 月フィールド
@property (weak,nonatomic) IBOutlet UITextField *tfMon;
// 日フィールド
@property (weak,nonatomic) IBOutlet UITextField *tfDay;
// 表示ディスプレイ
@property (weak,nonatomic) IBOutlet UILabel *lbDisp;

// 画像表示
@property (weak,nonatomic) IBOutlet UIImageView *imHoro;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// [星座を判定]アクションボタン
- (IBAction)selctSeiza:(id)sender
{
    // 入力値の取得
    NSString *tuki = self.tfMon.text;
    NSString *hi   = self.tfDay.text;
    
    // 数字変換
    int mm = [tuki intValue];
    int dd = [hi   intValue];
    
    // 月を100倍して日をたす 数字として算出する
    int mmdd = mm * 100 + dd;
    
    //int mmdd = [self.tfMon.text intValue]
    
    // 星座判定
//    if (mmdd == 101) {
//        self.lbDisp.text = @"元旦";
//    }
    
    // 星座判定 3月21日から3月31日以下 または 4月1日から4月19日まで
    if ((mmdd >= 321 && mmdd <= 331) ||
        (mmdd >= 401 && mmdd <= 419)) {
        
//        self.lbDisp.text = @"牡羊座";
//        self.imHoro.image = [UIImage imageNamed:@"image/z0001"];
        
        // 上記の２つの表示をメソッドを作り２つの引数を渡す方法
        // setSeizaメソッド ２つの引数を渡す
        [self setSeiza:@"牡羊座" :@"image/z0001"];
    
    } else if ((mmdd >= 421 && mmdd <= 430) ||
               (mmdd >= 501 && mmdd <= 519)) {
        
        [self setSeiza:@"おうし座" :@"image/z0002"];
        
    } else if ((mmdd >= 521 && mmdd <= 531) ||
               (mmdd >= 601 && mmdd <= 619)) {
        
        [self setSeiza:@"ふたご座" :@"image/z0003"];
        
    } else if ((mmdd >= 621 && mmdd <= 630) ||
               (mmdd >= 701 && mmdd <= 719)) {
        
        [self setSeiza:@"かに座" :@"image/z0004"];
        
    } else if ((mmdd >= 721 && mmdd <= 731) ||
               (mmdd >= 801 && mmdd <= 819)) {
        
        [self setSeiza:@"しし座" :@"image/z0005"];
        
    } else if ((mmdd >= 821 && mmdd <= 831) ||
               (mmdd >= 901 && mmdd <= 919)) {
        
        [self setSeiza:@"おとめ座" :@"image/z0006"];
        
    } else if ((mmdd >= 921 && mmdd <= 930) ||
               (mmdd >= 1001 && mmdd <= 1019)) {
        
        [self setSeiza:@"てんびん座" :@"image/z0007"];
        
    } else if ((mmdd >= 1021 && mmdd <= 1031) ||
               (mmdd >= 1101 && mmdd <= 1119)) {
        
        [self setSeiza:@"さそり座" :@"image/z0008"];
        
    } else if ((mmdd >= 1121 && mmdd <= 1130) ||
               (mmdd >= 1201 && mmdd <= 1219)) {
        
        [self setSeiza:@"いて座" :@"image/z0009"];
        
    } else if ((mmdd >= 1221 && mmdd <= 1231) ||
               (mmdd >= 101 && mmdd <= 119)) {
        
        [self setSeiza:@"やぎ座" :@"image/z0010"];
        
    } else if ((mmdd >= 121 && mmdd <= 131) ||
               (mmdd >= 201 && mmdd <= 219)) {
        
        [self setSeiza:@"みずがめ座" :@"image/z0011"];
        
    } else if ((mmdd >= 221 && mmdd <= 228) ||
               (mmdd >= 301 && mmdd <= 319)) {
        
        [self setSeiza:@"うお座" :@"image/z0012"];
        
    } else {
        // 該当しない場合
        self.lbDisp.text = @"日付が不正です。";
        // 該当しない場合は空白(nil)を表示
        self.imHoro.image = nil;
    }
    
    // キーボードを隠す
        [self.tfMon resignFirstResponder];
        [self.tfDay resignFirstResponder];
    
}

// 星座の表示
- (void)setSeiza:(NSString *)dispName
                :(NSString *)fileName {
    
    // 星座名
    self.lbDisp.text = dispName;
    // 星座画像
    self.imHoro.image = [UIImage imageNamed:fileName];
    
}

@end
