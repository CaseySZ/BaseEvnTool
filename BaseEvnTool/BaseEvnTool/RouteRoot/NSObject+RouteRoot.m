//
//  NSObject+RouteRoot.m
//   
//
//  Created by Casey on 2017/11/17.
//  Copyright © 2017年 EOC. All rights reserved.
//

#import "NSObject+RouteRoot.h"

@implementation NSObject (RouteRoot)

- (id)routeTargetName:(NSString*)targetName actionName:(NSString*)actionName{
    
    return [self routeTargetName:targetName actionName:actionName param:nil];
    
}

- (id)routeTargetName:(NSString*)targetName actionName:(NSString*)actionName completionCallBack:(void(^)(NSDictionary*))completion{
    
    return [self routeTargetName:targetName actionName:actionName param:completion];
    
}


- (id)routeTargetName:(NSString*)targetName actionName:(NSString*)actionName param:(id)param completionCallBack:(void(^)(NSDictionary*))completion{
    
    
    return [self routeTargetName:targetName actionName:actionName paramOne:param paramTwo:completion];
}




- (id)routeTargetName:(NSString*)targetName actionName:(NSString*)actionName param:(id)param{
    
    Class targetClass = NSClassFromString(targetName);
    if (!targetClass) {
        NSLog(@"Route Error:%@对象不存在", targetName);
        return nil;
    }
    SEL actionSel = NSSelectorFromString(actionName);
    
    NSObject *targetObj = [targetClass new];
    if ([targetObj respondsToSelector:actionSel]) {
        
        NSMethodSignature *signture = [targetObj methodSignatureForSelector:actionSel];
        NSString *returnType = [NSString stringWithUTF8String:signture.methodReturnType];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        
        if([returnType isEqualToString:@"@"]){
            return [targetObj performSelector:actionSel withObject:param];
        }else if([returnType isEqualToString:@"v"]||[returnType isEqualToString:@"V"]){
            
            [targetObj performSelector:actionSel withObject:param];
            return nil;
            
        }else if([returnType isEqualToString:@"b"]||[returnType isEqualToString:@"B"]){
            
            BOOL backValue = [targetObj performSelector:actionSel withObject:param];
            return [NSNumber numberWithBool:backValue];
            
        }else{
            
            [targetObj performSelector:actionSel withObject:param];
            return nil;
        }
        
#pragma clang diagnostic pop
    }else{
        
        NSLog(@"error:%@没有%@方法", targetName, actionName);
        return nil;
    }
}

- (id)routeTargetName:(NSString*)targetName actionName:(NSString*)actionName paramOne:(id)paramOne paramTwo:(id)paramTwo{
    
    Class targetClass = NSClassFromString(targetName);
    SEL actionSel = NSSelectorFromString(actionName);
    
    NSObject *targetObj = [targetClass new];
    if ([targetObj respondsToSelector:actionSel]) {
        
        NSMethodSignature *signture = [targetObj methodSignatureForSelector:actionSel];
        NSString *returnType = [NSString stringWithUTF8String:signture.methodReturnType];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        
        if([returnType isEqualToString:@"@"]){
            return [targetObj performSelector:actionSel withObject:paramOne withObject:paramTwo];
        }else if([returnType isEqualToString:@"v"]||[returnType isEqualToString:@"V"]){
            
            [targetObj performSelector:actionSel withObject:paramOne withObject:paramTwo];
            return nil;
            
        }else{
            
            [targetObj performSelector:actionSel withObject:paramOne withObject:paramTwo];
            return nil;
        }
        
#pragma clang diagnostic pop
    }else{
        
        NSLog(@"Route error:%@没有%@方法", targetName, actionName);
        return nil;
    }
}




@end
