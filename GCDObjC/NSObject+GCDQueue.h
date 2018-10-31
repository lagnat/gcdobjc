//
//  NSObject+GCDQueue.h
//  GCDObjC
//
//  Created by Steve Green on 10/31/18.
//

#import <Foundation/Foundation.h>

@class GCDQueue;

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (GCDQueue)
@property (nonatomic, strong) GCDQueue *GCDQueueSerial;
@end

NS_ASSUME_NONNULL_END
