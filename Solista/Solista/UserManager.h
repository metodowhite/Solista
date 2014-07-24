//
//  UserManager.h
//  Solista
//
//  Created by metodowhite on 24/07/14.
//  Copyright (c) 2014 luisa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface UserManager : NSObject


- (void)registerWithNickname:(NSString *)nickname andPassword:(NSString *)pass;
- (void)loginWithNickname:(NSString *)nickname andPassword:(NSString *)pass;
- (void)logOut;
- (void)deleteAccount;
- (void)editUserProfileFromUserID:(NSString *)userID;
- (PFUser *)getCurrentUser;


- (NSArray *)getFriendsFromUserID:(NSString *)userID;
- (void)deleteFriendFromUserID:(NSString *)userID;


@end
