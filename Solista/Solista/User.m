//
//  User.m
//  Solista
//
//  Created by metodowhite on 24/07/14.
//  Copyright (c) 2014 luisa. All rights reserved.
//

#import "User.h"

@implementation User

- (instancetype)initWithNickname:(NSString *)nickname andPassword:(NSString *)pass{
    self = [super init];
    
    if (self) {
        _nikname = nickname;
        _password = pass;
    }
    
    return self;
}

@end
