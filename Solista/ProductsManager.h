//
//  ProductsManager.h
//  Solista
//
//  Created by Javier Egido Alonso on 23/07/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Product;
@class Location;
@class User;

@interface ProductsManager : NSObject

- (void) create:(NSDictionary *)product;

- (void) delete:(Product *)product;

- (void) edit:(Product *)product withValues:(NSDictionary *)values;

- (void) addLocation:(Location *)location
           toProduct:(Product *)product;
    

- (void) addFriend:(User *)user
         toProduct:(Product *)product;

@end
