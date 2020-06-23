//
//  Router.h
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Server.h"

NS_ASSUME_NONNULL_BEGIN

@interface Router : NSObject
+ (instancetype)shared;
- (void)push:(NSString *)server;
- (void)push:(NSString *)server params:(id)params;
- (void)pop;
- (Server *)server;
@end

NS_ASSUME_NONNULL_END
