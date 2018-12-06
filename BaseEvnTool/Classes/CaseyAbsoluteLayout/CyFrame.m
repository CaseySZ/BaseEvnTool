//
//  CyFrame.m
//  CaseyAbsoluteLayout
//
//  Created by Casey on 06/12/2018.
//  Copyright © 2018 Casey. All rights reserved.
//

#import "CyFrame.h"
#import "UIView+CyFrame.h"



@interface CyFrame ()

@property (nonatomic, assign)CGFloat x;
@property (nonatomic, assign)CGFloat y;


@property (nonatomic, assign)BOOL statusCenternX;
@property (nonatomic, assign)BOOL statusCenternY;

@property (nonatomic, assign)BOOL statusTop;
@property (nonatomic, assign)BOOL statusBottom;

@property (nonatomic, assign)BOOL statusLeft;
@property (nonatomic, assign)BOOL statusRight;


@end



@implementation CyFrame



#pragma mark -  base

- (void)setX:(CGFloat)x{
    
    [self cleanStatusHorizontal];
    self.view.frame = CGRectMake(x, self.y, self.width, self.height);
}



- (CGFloat)x{
    
    return self.view.frame.origin.x;
}


- (void)setY:(CGFloat)y{
    
    [self cleanStatusVertical];
    self.view.frame = CGRectMake(self.x, y, self.width, self.height);
    
}

- (CGFloat)y{
    
    return self.view.frame.origin.y;
}


- (void)setWidth:(CGFloat)width{
    
    if (self.statusCenternX){
        
        CGFloat centerX = self.centerX;
        self.view.frame = CGRectMake(centerX-width/2, self.y, width, self.height);
        
    }else if (self.statusRight){
        
        CGFloat right = self.right;
        self.view.frame = CGRectMake(right-width, self.y, width, self.height);
    }else{
        self.view.frame = CGRectMake(self.x, self.y, width, self.height);
    }
    [self cleanStatusHorizontal];
}


- (CGFloat)width{
    
    return self.view.frame.size.width;
}

- (void)setHeight:(CGFloat)height{
    
    if (self.statusCenternY){
        CGFloat centerY = self.centerY;
        self.view.frame = CGRectMake(self.x, centerY - height/2, self.width, height);
    }else if (self.statusBottom){
        CGFloat bottom = self.bottom;
        self.view.frame = CGRectMake(self.x, bottom - height, self.width, height);
    }else{
        self.view.frame = CGRectMake(self.x, self.y, self.width, height);
    }
    [self cleanStatusVertical];
}

- (CGFloat)height{
    
    return self.view.frame.size.height;
    
}


#pragma mark - layout

- (CGFloat)centerX {
    
    
    return self.x + self.width/2;
    
}

- (void)setCenterX:(CGFloat)centerX{
    
    [self cleanStatusHorizontal];
    self.statusCenternX = YES;
    self.view.frame = CGRectMake(centerX-self.width/2, self.y, self.width, self.height);
    
}

- (CGFloat)centerY{
    
    return self.y + self.height/2;
}

- (void)setCenterY:(CGFloat)centerY{
    
    [self cleanStatusVertical];
    self.statusCenternY = YES;
    self.view.frame = CGRectMake(self.x, centerY - self.height/2, self.width, self.height);
}



- (CGFloat)right{
    
    return self.x + self.width;
}

- (void)setRight:(CGFloat)right{
    
    
    [self cleanStatusHorizontal];
    self.statusRight = YES;
    self.view.frame = CGRectMake(right-self.width, self.y, self.width, self.height);
}

- (CGFloat)left{
    
    return self.x;
}

- (void)setLeft:(CGFloat)left{
    
    self.x = left;
}


- (CGFloat)top{
    
    return self.y;
}

- (void)setTop:(CGFloat)top{
    self.y = top;
}

- (CGFloat)bottom{
    
    return self.y + self.height;
}

- (void)setBottom:(CGFloat)bottom{
    
    [self cleanStatusVertical];
    self.statusBottom = YES;
    self.view.frame = CGRectMake(self.x, bottom - self.height, self.width, self.height);
}


#pragma mark - super relate

- (void)leftEqualSuperViewL{
    
    UIView *superView = self.view.superview;
    if (superView) {
        self.left = 0;
    }
    
}

- (void)rightEqualSuperViewR{
    
    UIView *superView = self.view.superview;
    if (superView) {
        self.right = superView.cy.width;
    }
    
}
- (void)topEqualSuperViewT{
    
    UIView *superView = self.view.superview;
    if (superView) {
        self.top = 0;
    }
    
}
- (void)bottomEqualSuperViewB{
    
    UIView *superView = self.view.superview;
    if (superView) {
        self.bottom = superView.cy.height;
    }
}

- (void)centerEqualSuperViewC{
    
    [self centerXEqualSuperViewCx];
    [self centerYEqualSuperViewCy];
    
}
- (void)centerXEqualSuperViewCx{
    
    UIView *superView = self.view.superview;
    if (superView) {
        self.centerX = superView.cy.width/2;
    }
}

- (void)centerYEqualSuperViewCy{
    UIView *superView = self.view.superview;
    if (superView) {
        self.centerY = superView.cy.height/2;
    }
    
}
#pragma mark - Status

- (void)cleanAllStatus{
    
    [self cleanStatusHorizontal];
    [self cleanStatusVertical];
}

- (void)cleanStatusHorizontal{
    
    self.statusCenternX = NO;
    self.statusLeft = NO;
    self.statusRight = NO;
}

- (void)cleanStatusVertical{
    
    self.statusCenternY = NO;
    self.statusTop = NO;
    self.statusBottom = NO;
}

@end
