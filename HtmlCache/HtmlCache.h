//
//  CustomURLCache.h
//  LocalCache
//
//  Created by Marshal on 15-8-26.
//  Copyright (c) 2015年 yuanshuainiuniu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Util.h"

@interface HtmlCache : NSURLCache

@property(nonatomic, assign) NSInteger cacheTime;
@property(nonatomic, retain) NSString *diskPath;
@property(nonatomic, retain) NSMutableDictionary *responseDictionary;

- (id)initWithMemoryCapacity:(NSUInteger)memoryCapacity diskCapacity:(NSUInteger)diskCapacity diskPath:(NSString *)path cacheTime:(NSInteger)cacheTime;

@end
