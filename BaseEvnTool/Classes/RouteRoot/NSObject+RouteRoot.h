//
//  NSObject+RouteRoot.h
//   
//
//  Created by Casey on 2017/11/17.
//  Copyright © 2017年 EOC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (RouteRoot)

- (id)routeTargetName:(NSString*)targetName actionName:(NSString*)actionName;
- (id)routeTargetName:(NSString*)targetName actionName:(NSString*)actionName param:(id)param;
- (id)routeTargetName:(NSString*)targetName actionName:(NSString*)actionName paramOne:(id)paramOne paramTwo:(id)paramTwo;


/*
    completion 回掉处理
 */
- (id)routeTargetName:(NSString*)targetName actionName:(NSString*)actionName completionCallBack:(void(^)(NSDictionary*))completion;
- (id)routeTargetName:(NSString*)targetName actionName:(NSString*)actionName param:(id)param completionCallBack:(void(^)(NSDictionary*))completion;


@end
