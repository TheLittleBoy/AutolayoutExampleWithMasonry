//
//  Case12ViewController.m
//  MasonryExample
//
//  Created by  MAC on 16/3/2.
//  Copyright © 2016年 tutuge. All rights reserved.
//

#import "Case12ViewController.h"
#import "Masonry.h"

@interface Case12ViewController ()

@property(strong,nonatomic)UIView * animateView;

@end

@implementation Case12ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initView];
}

- (void)initView
{
    _animateView = [UIView new];
    
    [_animateView setBackgroundColor:[UIColor redColor]];
    
    [self.view addSubview:_animateView];
    
    [_animateView mas_makeConstraints:^(MASConstraintMaker *make) {
        //
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.left.equalTo(self.view).with.offset(12);
        make.top.equalTo(self.view).with.offset(80);
    }];
    
    //执行动画先让它绘制出来
    [self.view layoutIfNeeded];
    
    [UIView animateWithDuration:2.2 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        //
        [_animateView mas_remakeConstraints:^(MASConstraintMaker *make) {
            //
            make.right.equalTo(self.view).with.offset(-12);
            make.size.mas_equalTo(CGSizeMake(50, 50));
            make.top.equalTo(self.view).with.offset(80);
        }];
        
        //去掉之后会没有动画效果
        [self.view layoutIfNeeded];
        
    } completion:^(BOOL finished) {
        //
    }];
}

- (IBAction)back:(id)sender {
    
    [UIView animateWithDuration:2.2 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        //
        [_animateView mas_remakeConstraints:^(MASConstraintMaker *make) {
            //
            make.size.mas_equalTo(CGSizeMake(50, 50));
            make.left.equalTo(self.view).with.offset(12);
            make.top.equalTo(self.view).with.offset(80);
        }];
        
        [self.view layoutIfNeeded];
        
    } completion:^(BOOL finished) {
        //
    }];
    
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
