//
//  CVGPaymentSelectedView.h
//  FinanceWallet
//
//  Created by 丁玉松 on 2016/11/28.
//  Copyright © 2016年 Beijing Yingyan Internet Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    CVGPaymentTypeBalance = 1,
    CVGPaymentTypeBankCard = 2
} CVGPaymentType;

@protocol CVGPaymentSelectedViewDelegate <NSObject>

@required
-(void)recharge;

@end


@interface CVGPaymentSelectedView : UIView


@property (nonatomic ,assign) id<CVGPaymentSelectedViewDelegate> delegate;

@property (nonatomic ,assign) CVGPaymentType payType;

- (void)assignUIWithCanUserBalanceMoney:(long long)money bankLimit:(NSString *)limitString;


@end
