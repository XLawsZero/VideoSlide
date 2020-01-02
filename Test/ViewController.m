//
//  ViewController.m
//  Test
//
//  Created by 九元航空 on 2019/12/27.
//  Copyright © 2019 齐庆斌. All rights reserved.
//

#import "ViewController.h"
#import <VideoSlideFramework/VideoSlideFramework.h>

#define MWidth [UIScreen mainScreen].bounds.size.width
#define MHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray * marr = [[NSMutableArray alloc]initWithObjects:
                             @"http://video.699pic.com/videos/75/28/91/b_qIEMjgeZqvkF1574752891.mp4",
                             @"https://bpic.588ku.com/back_pic/05/95/90/355d85d89e0bdda.jpg",
                             @"https://bpic.588ku.com/back_list_pic/19/10/22/81739d55f7084181fc1948c900f967e6.jpg",
                             @"https://bpic.588ku.com/back_list_pic/19/09/24/0243a24c0c810ac65018ac1169f736be.jpg",
                             @"https://bpic.588ku.com/back_list_pic/19/11/23/f43f4bc2d67ce29573a4a5dbbc8f2bef.jpg", nil];
    
    VideoSlideView * videoSlideView = [[VideoSlideView alloc]initWithFrame:CGRectMake(0, 0, MWidth, 300) reloadUIWithDataArray:marr andVideoType:VideoSlideViewNumber];
//    [videoSlideView.timer setFireDate:[NSDate distantPast]]; //开启时间轮播
    [videoSlideView.timer setFireDate:[NSDate distantFuture]]; //停止时间轮播
    [self.view addSubview:videoSlideView];
}


@end
