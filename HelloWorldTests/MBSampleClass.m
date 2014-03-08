//
//  MBSampleClass.m
//  HelloWorld
//
//  Created by Mark Bryant on 2/12/14.
//  Copyright (c) 2014 Mark Bryant. All rights reserved.
//

#import "MBSampleClass.h"

@interface MBSampleClass ()

@property (readwrite) NSString* coolId;

@end

@implementation MBSampleClass

- (void)assignCoolId {
    self.coolId = @"something awesome";
}

- (NSString*)getCoolId {
    return _coolId;
}

@end
