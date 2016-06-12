//
//  ViewController.m
//  USB-Lock
//
//  Created by Yannick Weiss on 11/06/16.
//  Copyright © 2016 Yannick Weiss. All rights reserved.
//

#import "ViewController.h"
#import "SSKeychain.h"

@implementation ViewController

- (IBAction)done:(id)sender {
	[SSKeychain setPassword:self.password.stringValue forService:@"loginPassword" account:@"USB-Lock"];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	self.password.stringValue = [SSKeychain passwordForService:@"loginPassword" account:@"USB-Lock"];
}

- (void)setRepresentedObject:(id)representedObject {
	[super setRepresentedObject:representedObject];

	// Update the view, if already loaded.
}

@end