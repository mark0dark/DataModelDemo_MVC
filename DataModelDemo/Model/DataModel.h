//
//  DataModel.h
//  DataModelDemo
//
//  Created by Jianwen on 13-7-24.
//  Copyright (c) 2013年 Dark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataModel : NSObject
{

}

@property (nonatomic, copy) NSString *detestDesc;
@property (nonatomic, copy) NSString *detestName;
@property (nonatomic, copy) NSString *detestId;

- (DataModel*)initWithJsonDictionary:(NSDictionary*)dic;
@end
