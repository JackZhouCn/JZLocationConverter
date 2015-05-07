//
//  ViewController.h
//  JZConverterDome
//
//  Created by jack zhou on 13-8-22.
//  Copyright (c) 2013年 JZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
@interface ViewController : UIViewController<CLLocationManagerDelegate>
@property(nonatomic,weak) IBOutlet UILabel * pt1Lable;
@property(nonatomic,weak) IBOutlet UILabel * pt2Lable;
@property(nonatomic,weak) IBOutlet UILabel * pt3Lable;
@end
