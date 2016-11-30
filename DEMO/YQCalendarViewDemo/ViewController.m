//
//  ViewController.m
//  YQCalendarViewDemo
//
//  Created by problemchild on 16/8/23.
//  Copyright © 2016年 ProblenChild. All rights reserved.
//

#import "ViewController.h"

#import "YQCalendarView.h"

@interface ViewController ()

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
    view.selectedArray = @[@"2016-09-23",
                           @"2016-09-21",
                           @"2016-09-20",
                           @"2016-09-15",
                           @"2016-09-12",
                           @"2016-10-05",
                           @"2016-10-26",
                           @"2016-10-29",
                           @"2016-11-14",
                           @"2016-11-20",
                           @"2016-11-23",
                           ];
    
    //单独添加选中个某一天
    [view AddToChooseOneDay:@"2016-12-10"];
    
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
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
