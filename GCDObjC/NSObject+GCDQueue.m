//
//  NSObject+GCDQueue.m
//  GCDObjC
//
//  Created by Steve Green on 10/31/18.
//

#import <objc/message.h>
#import "GCDQueue.h"
#import "NSObject+GCDQueue.h"

static void *NSObjectGCDQueueSerialKey = &NSObjectGCDQueueSerialKey;

@implementation NSObject (GCDQueue)

- (GCDQueue *)GCDQueueSerial
{
  id queue = objc_getAssociatedObject(self, NSObjectGCDQueueSerialKey);

  // lazily create the GCDQueue
  if (nil == queue) {
    queue = [[GCDQueue alloc] initSerial];
    self.GCDQueueSerial = queue;
  }

  return queue;
}

- (void)setGCDQueueSerial:(GCDQueue *)GCDQueue
{
  objc_setAssociatedObject(self, NSObjectGCDQueueSerialKey, GCDQueue, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
