//
//  User.h
//  Solista
//
//  Created by metodowhite on 24/07/14.
//  Copyright (c) 2014 luisa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface User : NSObject

@property (nonatomic, strong) NSString *userID;
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *nikname;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *password;
@property (nonatomic, strong) UIImage *avatar;
@property (nonatomic, strong) NSArray *friends;


- (instancetype)initWithNickname:(NSString *)nickname andPassword:(NSString *)pass;

@end
