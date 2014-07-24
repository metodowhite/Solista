//
//  ViewController.m
//  Solista
//
//  Created by luisa on 15/7/14.
//  Copyright (c) 2014 luisa. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
//    testObject[@"foo"] = @"bar";
//    testObject[@"fooBOOL"] = @(YES); //conversión del boleano para poder subirlo a parse
//    [testObject saveInBackground];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (IBAction)retreiveTestObject:(id)sender {
////    PFQuery *query = [PFQuery queryWithClassName:@"TestObject"];
////    [query whereKey:@"fooBOOL" equalTo:@YES];
//
//    
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"fooBOOL = %@", @NO];
//    PFQuery *query = [PFQuery queryWithClassName:@"TestObject" predicate:predicate];
//    
//    //    [query whereKey:@"fooBOOL" notEqualTo:@YES];
//    //    [query whereKey:@"value" greaterThan:@23];
//    //    query.limit = 10;
//    //    query.skip = 10;
//    //    [query getFirstObject];
//    //    [query orderByAscending:@"value"];
//    
//    NSArray *skills = @[@"patita", @"ranita"];
//    [query whereKey:@"skills" containedIn:skills];
//    
//    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
//        if (objects) {
//            for (PFObject *object in objects) {
//                NSLog(@"objects: %@", object.objectId);
//            }
//        }
//    }];
//}



@end
