//
//  RoundRectsViewController.h
//  QuartzCoreStudy
//
//  Created by Paweł Wiergowski on 1/7/13.
//  Copyright (c) 2013 Paweł Wiergowski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

@property (retain , nonatomic) IBOutlet UIView* roundView;

- (void) makeRoundCornersForView:(UIView*) _uiview;
- (void) makeCircleForView:(UIView*) _uiview;
- (void) addShadowForView:(UIView*) _uiview;
-(void) addBorderForView:(UIView *) _uiview;
-(void) addGradientForView:(UIView *) _uiviewl;

@end
