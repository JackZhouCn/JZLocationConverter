//
//  ViewController.m
//  JZConverterDome
//
//  Created by jack zhou on 13-8-22.
//  Copyright (c) 2013年 JZ. All rights reserved.
//

#import "ViewController.h"
#import <JZLocationConverter.h>

@interface ViewController ()
@property(nonatomic,strong)CLLocationManager * manger;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _manger = [[CLLocationManager alloc]init];
    _manger.delegate = self;
    [_manger startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation {
    [manager stopUpdatingLocation];
    CLLocationCoordinate2D wgsPt = newLocation.coordinate;
    CLLocationCoordinate2D gcjPt = [JZLocationConverter wgs84ToGcj02:wgsPt];
    CLLocationCoordinate2D bdPt = [JZLocationConverter wgs84ToBd09:wgsPt];
//当使用模拟器定位在中国大陆以外地区，计算GCJ-02坐标还是返回WGS-84
    _pt1Lable.text = [NSString stringWithFormat:@"WGS-84(国际标准坐标)：\n %f,%f",wgsPt.latitude,wgsPt.longitude];
    _pt2Lable.text = [NSString stringWithFormat:@"GCJ-02(中国国测局坐标(火星坐标))：\n %f,%f",gcjPt.latitude,gcjPt.longitude];
    _pt3Lable.text = [NSString stringWithFormat:@"BD-09(百度坐标)：\n %f,%f",bdPt.latitude,bdPt.longitude];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
