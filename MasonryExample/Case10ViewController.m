//
//  Case10ViewController.m
//  MasonryExample
//
//  Created by  MAC on 16/3/1.
//  Copyright © 2016年 tutuge. All rights reserved.
//

#import "Case10ViewController.h"
#import "Masonry.h"
#import "Masonry_LJC.h"
#import "MMPlaceHolder.h"

@interface Case10ViewController ()

@end

@implementation Case10ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    [self initView];
}

-(void)initView
{
    UIView *sv11 = [UIView new];
    UIView *sv12 = [UIView new];
    UIView *sv13 = [UIView new];
    UIView *sv21 = [UIView new];
    UIView *sv31 = [UIView new];
    sv11.backgroundColor = [UIColor redColor];
    sv12.backgroundColor = [UIColor redColor];
    sv13.backgroundColor = [UIColor redColor];
    sv21.backgroundColor = [UIColor redColor];
    sv31.backgroundColor = [UIColor redColor];
    [_sv addSubview:sv11];
    [_sv addSubview:sv12];
    [_sv addSubview:sv13];
    [_sv addSubview:sv21];
    [_sv addSubview:sv31];
    //给予不同的大小 测试效果
    [sv11 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(@[sv12,sv13]);
        make.centerX.equalTo(@[sv21,sv31]);
        make.size.mas_equalTo(CGSizeMake(40, 40));
    }];
    [sv12 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(70, 20));
    }];
    [sv13 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 50));
    }];
    [sv21 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 20));
    }];
    [sv31 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(40, 60));
    }];
    [_sv distributeSpacingHorizontallyWith:@[sv11,sv12,sv13]];
    [_sv distributeSpacingVerticallyWith:@[sv11,sv21,sv31]];
    [_sv showPlaceHolderWithAllSubviews];
//    [_sv hidePlaceHolder];
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
