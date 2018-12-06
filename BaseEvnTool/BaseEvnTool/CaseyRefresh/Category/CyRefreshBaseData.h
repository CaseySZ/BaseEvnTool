//
//  CyRefreshBaseData.h
//  TableRefresh
//
//  Created by Casey on 05/12/2018.
//  Copyright © 2018 Casey. All rights reserved.
//

#define KVOKeyPathContentOffset  @"contentOffset"
#define KVOKeyPathContentInset  @"contentInset"
#define KVOKeyPathContentSize  @"contentSize"
#define KVOKeyPathPanState  @"state"

#define CyRefreshHeaderHeight  60.0
#define CyRefreshFooterHeight  60.0

#define CyRefreshSlowAnimationDuration  0.4
#define CyRefreshFastAnimationDuration 0.25


/** 进入刷新状态的回调 */
typedef void (^CyBeginRefreshingBlock)(void);

typedef NS_ENUM(NSInteger, CyRefreshState) {
   
    CyRefreshStateIdle = 1,  /** 普通闲置状态 */
    
    CyRefreshStatePulling, /** 松开就可以进行刷新的状态 */
   
    CyRefreshStateRefreshing,  /** 正在刷新中的状态 */
    
    CyRefreshStateWillRefresh, /** 即将刷新的状态 */
   
    CyRefreshStateNoMoreData  /** 所有数据加载完毕，没有更多的数据了 */
};


