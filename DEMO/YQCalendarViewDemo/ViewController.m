//
//  ViewController.m
//  YQCalendarViewDemo
//
//  Created by problemchild on 16/8/23.
//  Copyright © 2016年 ProblenChild. All rights reserved.
//

#import "ViewController.h"

#import "YQCalendarView.h"

@interface ViewController ()<YQCalendarViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    YQCalendarView *view = [[YQCalendarView alloc]initWithFrame:CGRectMake(20,
                                                                           100,
                                                                           self.view.frame.size.width-40,
                                                                           300)];
    [self.view addSubview:view];
    
    //设置选中的日期，格式 yyyy-MM-dd (数组)
    view.selectedArray = @[@"2024-06-23",
                           @"2024-06-21",
                           @"2024-06-20",
                           @"2024-06-15",
                           @"2024-06-12",
                           @"2024-07-05",
                           @"2024-07-26",
                           @"2024-07-29",
                           @"2024-08-14",
                           @"2024-09-20",
                           @"2024-09-23",
                           ];
    
    //单独添加选中个某一天
    [view AddToChooseOneDay:@"2024-10-10"];
    
    //--------------------------------------------------自定义显示
    
    /*
    //整体背景色
    view.backgroundColor   = [UIColor blueColor];
    //选中的日期的背景颜色
    view.selectedBackColor = [UIColor lightGrayColor];
    //选中的日期下方的图标
    view.selectedIcon      = [UIImage imageNamed:@""];
    //下一页按钮的图标
    view.nextBTNIcon       = [UIImage imageNamed:@""];
    //前一页按钮的图标
    view.preBTNIcon        = [UIImage imageNamed:@""];
    //上方日期标题的字体
    view.titleFont         = [UIFont systemFontOfSize:17];
    //上方日期标题的颜色
    view.titleColor        = [UIColor blackColor];
    //下方日历的每一天的字体
    view.dayFont           = [UIFont systemFontOfSize:17];
    //下方日历的每一天的字体颜色
    view.dayColor          = [UIColor redColor];
    */
    
    //--------------------------------------------------如果需要接收点击后的代理
    view.delegate = self;
}

//接收点击的代理方法
//使用String格式，是为了避免因时区可能会导致的不必要的麻烦
-(void)YQCalendarViewTouchedOneDay:(NSString *)dateString{
    NSLog(@"点击了：%@",dateString);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
