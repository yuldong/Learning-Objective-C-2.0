//
//  NewCoupon.m
//  CouponDispenser
//
//  Created by 曹媛媛 on 15/10/11.
//  Copyright (c) 2015年 yrion. All rights reserved.
//

#import "NewCoupon.h"

#define kInitialNewCouponAllocation 50

static NSUInteger avaliableNewCoupons = kInitialNewCouponAllocation;

@implementation NewCoupon

+ (NSUInteger)numberCouponsLeft {
    return [self avaliableCoupons];
}

+ (void)resetCoupon {
    [self setAvaliableCoupons:kInitialNewCouponAllocation];
}

+ (void)setAvaliableCoupons:(NSUInteger)inValiableCoupons {
    avaliableNewCoupons = inValiableCoupons;
}

+ (NSUInteger)avaliableCoupons {
    return avaliableNewCoupons;
}

@end
