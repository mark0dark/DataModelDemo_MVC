//
//  AJList.h
//  DataModelDemo
//
//  Created by Jianwen on 13-7-24.
//  Copyright (c) 2013年 Dark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AJList : NSObject
{
    int totalNum;
    NSArray* itemArray;
}

@property (nonatomic, assign)int totalNum;
@property (nonatomic, retain)NSArray* itemArray;

@end
