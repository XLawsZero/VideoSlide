//
//  VideoSlideView.h
//  HuanTouWang
//
//  Created by  mac on 2019/8/17.
//  Copyright © 2019年  mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@class VideoSlideView;
@protocol VideoSlideViewDelegate <NSObject>

@optional
-(void)videoSlideViewClick:(NSString *)urlString andTitle:(NSString *)title;

@end

typedef enum{ //页数类型
    VideoSlideViewPage = 0, //默认页数
    VideoSlideViewNumber = 1, //数字页数
} VideoSlideViewType;

@interface VideoSlideView : UIView

@property (nonatomic,strong) NSTimer * timer;
@property (nonatomic,assign) int page;

@property (nonatomic,assign) id<VideoSlideViewDelegate> delegate;

//imageAndVideoArray直接是视频或图片网络地址，取第一张图作为视频配图，r如果没有图片只有视频则这里使用loading_bgView命名的png图片（这里如果有视频文件必须是数组第一的位置，后面全部为图片）
- (instancetype)initWithFrame:(CGRect)frame reloadUIWithDataArray:(NSMutableArray *)imageAndVideoArray andVideoType:(VideoSlideViewType)videoSlideViewType;

//若播放器没有停止播放可以使用如下方法：
// 暂停播放
//[[NSNotificationCenter defaultCenter]postNotificationName:@"IsStopVideo" object:@"YES"];

@end
