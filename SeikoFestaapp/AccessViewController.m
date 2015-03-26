//
//  AccessViewController.m
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/03/25.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import "AccessViewController.h"

@implementation AccessViewController
-(IBAction)accessBack{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)viewDidLoad
{
    [UINavigationBar appearance].barTintColor = [UIColor greenColor];
    [super viewDidLoad];
    
    // ピンチジェスチャーを登録する
    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc]
                                              initWithTarget:self action:@selector(pinchAction:)];
    pinchGesture.delegate=self;
    [self.view addGestureRecognizer:pinchGesture];
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]
                                              initWithTarget:self action:@selector(panAction:)];
    panGesture.delegate=self;
    [self.view addGestureRecognizer:panGesture];

    //[pinchGesture release];
    _isMoving = NO;
}
-(void)panAction:(UIPanGestureRecognizer *)sender{
    // ドラッグで移動した距離を取得する
    CGPoint p = [sender translationInView:self.view];
    
    // 移動した距離だけ、UIImageViewのcenterポジションを移動させる
    CGPoint movedPoint = CGPointMake(accessView.center.x + p.x, accessView.center.y + p.y);
    if(movedPoint.y>320){
        movedPoint.y=320;
    }else if(movedPoint.y<0){
        movedPoint.y=0;
    }
    if(movedPoint.x>320){
        movedPoint.x=320;
    }else if(movedPoint.x<0){
        movedPoint.x=0;
    }
    accessView.center = movedPoint;
    
    // ドラッグで移動した距離を初期化する
    // これを行わないと、[sender translationInView:]が返す距離は、ドラッグが始まってからの蓄積値となるため、
    // 今回のようなドラッグに合わせてImageを動かしたい場合には、蓄積値をゼロにする
    [sender setTranslation:CGPointZero inView:self.view];
}
- (void)pinchAction : (UIPinchGestureRecognizer *)sender {
    // ジェスチャ開始時
    if (!_isMoving && sender.state == UIGestureRecognizerStateBegan) {
        _isMoving = YES;
        _currentTransform = accessView.transform;
    }
    // ジェスチャ終了時
    else if (_isMoving && sender.state == UIGestureRecognizerStateEnded) {
        _isMoving = NO;
        _scale = 1.0f;
    }
    
    // 拡大率取得
    _scale = sender.scale;
    
    // アフィン変換を適用
    CGAffineTransform transform = CGAffineTransformConcat(_currentTransform, CGAffineTransformMakeScale(_scale, _scale));
//    if(accessView.transform.x<320){
//        accessView.transform=CGTransformIsIdentity;
//        
//    }
    accessView.transform = transform;
    
    
//    
//    CGAffineTransform currentTransForm;
//    
//    // ピンチジェスチャー発生時に、Imageの現在のアフィン変形の状態を保存する
//    if (sender.state == UIGestureRecognizerStateBegan) {
//        currentTransForm = accessView.transform;
//        // currentTransFormは、フィールド変数。imgViewは画像を表示するUIImageView型のフィールド変数。
//    }
//    
//    // ピンチジェスチャー発生時から、どれだけ拡大率が変化したかを取得する
//    // 2本の指の距離が離れた場合には、1以上の値、近づいた場合には、1以下の値が取得できる
//    CGFloat scale = [sender scale];
//    if (sender.state == UIGestureRecognizerStateEnded) {
//        NSLog(@"pinch end");
//    }
//    // ピンチジェスチャー開始時からの拡大率の変化を、imgViewのアフィン変形の状態に設定する事で、拡大する。
//    accessView.transform = CGAffineTransformConcat(currentTransForm, CGAffineTransformMakeScale(scale,scale));
}
@end