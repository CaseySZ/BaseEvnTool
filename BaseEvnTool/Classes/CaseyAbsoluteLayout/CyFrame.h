//
//  CyFrame.h
//  CaseyAbsoluteLayout
//
//  Created by Casey on 06/12/2018.
//  Copyright © 2018 Casey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CyFrame : NSObject


@property (nonatomic, weak)UIView *view;

@property (nonatomic, assign)CGFloat left;
@property (nonatomic, assign)CGFloat right;
@property (nonatomic, assign)CGFloat top;
@property (nonatomic, assign)CGFloat bottom;

@property (nonatomic, assign)CGFloat height;
@property (nonatomic, assign)CGFloat width;

@property (nonatomic, assign)CGFloat centerX;
@property (nonatomic, assign)CGFloat centerY;




/*
 使用equalSuperView相关方法，注意，只会superview frame的当前状态做关联
 不会因superview的Frame变化而变化，这个是绝对布局，可以认为是一次性行为。
 所以当出现和你预想的不一样，检查superview的Frame是否发生了变化
 */
- (void)leftEqualSuperViewL;
- (void)rightEqualSuperViewR;
- (void)topEqualSuperViewT;
- (void)bottomEqualSuperViewB;
- (void)centerEqualSuperViewC;
- (void)centerXEqualSuperViewCx;
- (void)centerYEqualSuperViewCy;

- (void)cleanAllStatus;

@end

NS_ASSUME_NONNULL_END
