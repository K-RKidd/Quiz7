//
//  Task.h
//  Quiz7c
//
//  Created by Krystle on 4/7/14.
//  Copyright (c) 2014 Krystle Kidd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Task : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate * dueDate;
@property (nonatomic) CGFloat urgency;

@end
