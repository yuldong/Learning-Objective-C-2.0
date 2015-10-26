//
//  Coupon.m
//  CouponDispenser
//
//  Created by 曹媛媛 on 15/10/11.
//  Copyright (c) 2015年 yrion. All rights reserved.
//

#import "Coupon.h"

#define kInitialCouponAllocation 100

static NSUInteger avaliableCoupons = kInitialCouponAllocation;

@interface Coupon ()

+ (void)setAvaliableCoupons:(NSUInteger)inValiableCoupons;
+ (NSUInteger)avaliableCoupons;

@end

@implementation Coupon

- (instancetype)init {
    if (self = [super init]) {
        if (avaliableCoupons == 0) {
            [self release];
            return nil;
        }
        avaliableCoupons--;
    }
    return self;
}

+ (NSUInteger)numberCouponsLeft {
    return [self avaliableCoupons];;
}

+ (void)resetCoupon {
    //  avaliableCoupons = kInitialCouponAllocation;
    [self setAvaliableCoupons:kInitialCouponAllocation];
}

+ (void)setAvaliableCoupons:(NSUInteger)inValiableCoupons {
      avaliableCoupons = inValiableCoupons;
}

+ (NSUInteger)avaliableCoupons {
    return avaliableCoupons;
}

@end
