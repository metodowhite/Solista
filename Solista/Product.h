//
//  Product.h
//  Solista
//
//  Created by Javier Egido Alonso on 23/07/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface Product : NSObject

@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) UIImage *avatar;
@property (strong,nonatomic) NSArray *hashtags;
@property (strong,nonatomic) NSArray *locations;
@property (strong,nonatomic) NSArray *friends;
@property (strong,nonatomic) NSDate *dateLimit;

@property (nonatomic) CGFloat price;
@property (nonatomic) CGFloat quantity;
@property (nonatomic) BOOL isBuyed;

- (instancetype)initWithName:(NSString *)name;

@end
