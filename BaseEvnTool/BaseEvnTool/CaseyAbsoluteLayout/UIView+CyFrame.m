//
//  UIView+CyFrame.m
//  CaseyAbsoluteLayout
//
//  Created by Casey on 06/12/2018.
//  Copyright © 2018 Casey. All rights reserved.
//

#import "UIView+CyFrame.h"
#import <objc/runtime.h>
#import "CyFrame.h"


@implementation UIView (CyFrame)


- (CyFrame*)cy{
    
    CyFrame *cy = objc_getAssociatedObject(self, @selector(setCy:));
    if (cy == nil){
        cy = [[CyFrame alloc] init];
        cy.view = self;
        self.cy = cy;
    }
    return cy;
}


- (void)setCy:(CyFrame *)cy{
    
    objc_setAssociatedObject(self, @selector(setCy:), cy, OBJC_ASSOCIATION_RETAIN);
    
}


@end
