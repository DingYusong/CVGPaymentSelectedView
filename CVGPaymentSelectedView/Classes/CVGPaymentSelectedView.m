//
//  CVGPaymentSelectedView.m
//  FinanceWallet
//
//  Created by 丁玉松 on 2016/11/28.
//  Copyright © 2016年 Beijing Yingyan Internet Co., Ltd. All rights reserved.
//

#import "CVGPaymentSelectedView.h"
@interface CVGPaymentSelectedView ()
@property (strong, nonatomic) IBOutlet UIView *view;

@property (weak, nonatomic) IBOutlet UILabel *moneyCanUseLabel;
@property (weak, nonatomic) IBOutlet UIButton *rechargeButton;
@property (weak, nonatomic) IBOutlet UIButton *balanceSelectButton;

@property (weak, nonatomic) IBOutlet UILabel *bankCardCanUseLimitLabel;
@property (weak, nonatomic) IBOutlet UIButton *bankCardSelectButton;
@end


@implementation CVGPaymentSelectedView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        NSString *className = NSStringFromClass([self class]);
        self.view = [[[NSBundle mainBundle] loadNibNamed:className owner:self options:nil] firstObject];
        [self addSubview:self.view];
        [self.view setTranslatesAutoresizingMaskIntoConstraints:NO];
        NSDictionary *views = NSDictionaryOfVariableBindings(_view);
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_view]|" options:0 metrics:nil views:views]];
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_view]|" options:0 metrics:nil views:views]];
    }
    [self payTypeSelected:CVGPaymentTypeBankCard];
    return self;
}


- (void)assignUIWithCanUserBalanceMoney:(long long)money bankLimit:(NSString *)limitString
{
    NSString *canUseMoney = [NSString stringWithFormat:@"%.2f元",money/100.0];
    self.moneyCanUseLabel.text = [NSString stringWithFormat:@"可用余额%@",canUseMoney];

    if (limitString && limitString.length) {
        self.bankCardCanUseLimitLabel.text = limitString;
    }else{
        self.bankCardCanUseLimitLabel.text = @"单笔最高5万元";
    }
}
- (IBAction)rechargeClick:(id)sender {
    
    if ([self.delegate respondsToSelector:@selector(recharge)]) {
        [self.delegate recharge];
    }
}

- (IBAction)btnClick:(id)sender {
    UIButton *button = (UIButton *)sender;
    if (0 == button.tag) {
        //余额支付
        self.payType = CVGPaymentTypeBalance;
    }else {
        //银行卡支付
        self.payType = CVGPaymentTypeBankCard;
    }
    [self payTypeSelected:self.payType];
}

- (void)payTypeSelected:(CVGPaymentType)payType{
    if (self.payType == CVGPaymentTypeBalance) {
        [self.balanceSelectButton setImage:[UIImage imageNamed:@"circle_selected"] forState:UIControlStateNormal];
        [self.bankCardSelectButton setImage:[UIImage imageNamed:@"circle_unselected"] forState:UIControlStateNormal];
    }else{
        [self.bankCardSelectButton setImage:[UIImage imageNamed:@"circle_selected"] forState:UIControlStateNormal];
        [self.balanceSelectButton setImage:[UIImage imageNamed:@"circle_unselected"] forState:UIControlStateNormal];
    }
}


@end
