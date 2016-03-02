//
//  Case11ViewController.m
//  MasonryExample
//
//  Created by  MAC on 16/3/1.
//  Copyright © 2016年 tutuge. All rights reserved.
//

#import "Case11ViewController.h"
#import "Masonry.h"
#import "SKTagView.h"


@interface Case11ViewController ()

@property(strong,nonatomic)SKTagView * tagView;

@end

@implementation Case11ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    [self setupTagView];
}

- (void)setupTagView
{
    self.tagView = ({
        SKTagView *view = [SKTagView new];
        view.backgroundColor = [UIColor cyanColor];
        view.padding = UIEdgeInsetsMake(10, 10, 10, 10);
        view.interitemSpacing = 8;
        view.lineSpacing = 10;
        
        __weak SKTagView * weak_view = view;
        //Handle tag's tap event
        view.didTapTagAtIndex = ^(NSUInteger index){
            NSLog(@"Tap");
            
            [weak_view removeTagAtIndex:index];
        };
        view;
    });
    [self.view addSubview:self.tagView];
    [self.tagView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
    }];
    
    //Add Tags
    [@[@"Python", @"Javascript", @"HTML", @"Go", @"Objective-C", @"C", @"PHP",@"C++",@"C#",@"SQL",@"Java",@"Swift"] enumerateObjectsUsingBlock:^(NSString *text, NSUInteger idx, BOOL *stop) {
        SKTag *tag = [SKTag tagWithText:text];
        tag.textColor = UIColor.whiteColor;
        tag.bgColor = UIColor.orangeColor;
        tag.cornerRadius = 3;
        tag.fontSize = 15;
        tag.padding = UIEdgeInsetsMake(13.5, 12.5, 13.5, 12.5);
        
        [self.tagView addTag:tag];
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
