//
//  MBSampleClass.h
//  HelloWorld
//
//  Created by Mark Bryant on 2/12/14.
//  Copyright (c) 2014 Mark Bryant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBSampleClass : NSObject

@property (readonly) NSString* coolId;

- (void)assignCoolId;

- (NSString*)getCoolId;

@end
