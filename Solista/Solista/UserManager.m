//
//  UserManager.m
//  Solista
//
//  Created by metodowhite on 24/07/14.
//  Copyright (c) 2014 luisa. All rights reserved.
//

#import "UserManager.h"
#import "User.h"

#import <Parse/Parse.h>

@implementation UserManager


- (void)registerWithNickname:(NSString *)nickname andPassword:(NSString *)pass{
    PFUser *newUser = [PFUser user];
    newUser.username = nickname;
    newUser.password = pass;
    
    [newUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            //TODO
        } else {
            NSString *errorString = [error userInfo][@"error"];
            // NSLog(@"errorString: %@", errorString);
        }
    }];
}

- (void)loginWithNickname:(NSString *)nickname andPassword:(NSString *)pass{
    [PFUser logInWithUsernameInBackground:nickname password:pass block:^(PFUser *user, NSError *error) {
        if (!error) {
            //TODO
        } else {
            NSString *errorString = [error userInfo][@"error"];
            NSLog(@"errorString: %@", errorString);
        }
    }];
}

-(void)logOut{
    [PFUser logOut];
}

- (void)deleteAccount{
    //TODO
}

- (void)editUserProfileFromUserID:(NSString *)userID{
    User *actualUser = [[User alloc]init];
    actualUser.userID = userID;
    
    PFQuery *query = [PFQuery queryWithClassName:@"User"];
    [query getObjectInBackgroundWithId:actualUser.userID block:^(PFObject *object, NSError *error) {
        object[@"firstName"] = @"";
        object[@"lastName"] = @"";
        object[@"nikname"] = @"";
        object[@"email"] = @"";
        object[@"password"] = @"";
        object[@"avatar"] = @"";
        [object addUniqueObjectsFromArray:@[@"", @""] forKey:@"friends"];
        
        [object saveInBackground];
    }];
}

- (PFUser *)getCurrentUser{
    return [PFUser currentUser];
}

- (NSArray *)getFriendsFromUserID:(NSString *)userID{
    PFQuery *query = [PFQuery queryWithClassName:@"User"];
    NSMutableArray *friendsArr;
    [query getObjectInBackgroundWithId:userID block:^(PFObject *object, NSError *error) {
        NSLog(@"Friends: %@", object[@"friends"]);
        for (NSString *friend in object[@"friends"]) {
            [friendsArr addObject:friend];
        }
    }];
    
    return friendsArr;
    
}

- (void)deleteFriendFromUserID:(NSString *)userID{
    
    PFUser *actualUser = [PFUser currentUser];
    
    PFQuery *query = [PFQuery queryWithClassName:@"User"];
    [query getObjectInBackgroundWithId:actualUser.username block:^(PFObject *object, NSError *error) {
        [object removeObject:@"" forKey:@"friends"];
        
        [object saveInBackground];
    }];
    
}


@end
