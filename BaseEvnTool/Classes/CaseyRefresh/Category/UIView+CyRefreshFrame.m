//
//  UIView+RefreshFrame.m
//  TableRefresh
//
//  Created by Casey on 04/12/2018.
//  Copyright © 2018 Casey. All rights reserved.
//

#import "UIView+CyRefreshFrame.h"

@implementation UIView (CyRefreshFrame)



- (void)setCy_x:(CGFloat)cy_x{
    
    self.frame = CGRectMake(cy_x, self.cy_y, self.cy_width, self.cy_height);
}

- (CGFloat)cy_x{
    

    return self.frame.origin.x;
    
}


- (void)setCy_y:(CGFloat)cy_y{
    
    self.frame = CGRectMake(self.cy_x, cy_y, self.cy_width, self.cy_height);
}

- (CGFloat)cy_y{
    
    return self.frame.origin.y;
}


- (void)setCy_width:(CGFloat)cy_width{
    
    self.frame = CGRectMake(self.cy_x, self.cy_y, cy_width, self.cy_height);
}

- (CGFloat)cy_width{
    
    return self.frame.size.width;
}


- (void)setCy_height:(CGFloat)cy_height{
    
    self.frame = CGRectMake(self.cy_x, self.cy_y, self.cy_width, cy_height);
}


- (CGFloat)cy_height{
    
    return self.frame.size.height;
}


@end
