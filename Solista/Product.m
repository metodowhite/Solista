//
//  Product.m
//  Solista
//
//  Created by Javier Egido Alonso on 23/07/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "Product.h"

@interface Product ()

@property (nonatomic,strong) NSMutableArray *privateHashtags;
@property (nonatomic,strong) NSMutableArray *privateFriends;
@property (nonatomic,strong) NSMutableArray *privateLocations;

@end

@implementation Product

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _name = name;
        _avatar = [[UIImage alloc] init];
        _privateHashtags = [[NSMutableArray alloc]init];
        _privateFriends = [[NSMutableArray alloc]init];
        _privateLocations = [[NSMutableArray alloc]init];
        _dateLimit = [[NSDate alloc] init];
        _price = 0.0f;
        _quantity = 0.0f;
        _isBuyed = NO ;
        
    }
    return self;
}

- (NSArray *)hashtags {
    return [self.privateHashtags copy];
}
- (NSArray *)friends {
    return [self.privateFriends copy];
}
- (NSArray *)locations {
    return [self.privateLocations copy];
}

- (void) setHashtags:(NSArray *)hashtags{
    _privateHashtags = [hashtags copy];
}
- (void) setFriends:(NSArray *)friends{
    _privateFriends = [friends copy];
}
- (void) setLocations:(NSArray *)locations{
    _privateLocations = [locations copy];
}

@end
