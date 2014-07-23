//
//  ProductsManager.m
//  Solista
//
//  Created by Javier Egido Alonso on 23/07/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "ProductsManager.h"
#import "Product.h"
@class Location;
@class User;

@interface ProductsManager()


@end


@implementation ProductsManager

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void) create:(NSDictionary *)product{
    Product *newProduct = [[Product alloc] init];
    
    [self edit:newProduct withValues:product];
    
    //TODO: conectar con parse para salvar
    
}

- (void) edit:(Product *)product withValues:(NSDictionary *)values{
    
    if (values[@"name"]) {
        product.name = values[@"name"];
    }
    if (values[@"avatar"]) {
        product.avatar = values[@"avatar"];
    }
    if (values[@"hashtags"]) {
        product.hashtags = values[@"hashtags"];
    }
    if (values[@"locations"]) {
        product.locations = values[@"locations"];
    }
    if (values[@"friends"]) {
        product.friends = values[@"friends"];
    }
    if (values[@"dateLimit"]) {
        product.dateLimit = values[@"dateLimit"];
    }
    if (values[@"price"]) {
        product.price = [values[@"price"] floatValue];
    }
    if (values[@"quantity"]) {
        product.quantity = [values[@"quantity"] floatValue];
    }
    if (values[@"isBuyed"]) {
        product.isBuyed = values[@"isBuyed"];
    }
    
    //TODO: conectar con parse para salvar
}

- (void) delete:(Product *)product{
    //TODO: conectar con parse para eliminar producto
}

- (void) addLocation:(Location *)location
           toProduct:(Product *)product{
    
    NSMutableArray *auxArray = [[NSMutableArray alloc]initWithArray:product.locations];
    [auxArray addObject:location];
    [product setLocations:auxArray];
    
    //TODO: conectar con parse para salvar
}
- (void) addFriend:(User *)user
         toProduct:(Product *)product{
    
    NSMutableArray *auxArray = [[NSMutableArray alloc]initWithArray:product.friends];
    [auxArray addObject:user];
    [product setLocations:auxArray];
    
    //TODO: conectar con parse para salvar
}

@end
