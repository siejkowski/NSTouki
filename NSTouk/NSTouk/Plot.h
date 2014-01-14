#import <Foundation/Foundation.h>

typedef void (^Metadata)();

@class GentleClass;
@class RespectedClass;

@interface Plot : NSObject

+ (instancetype)plotWithGentleClass:(GentleClass*)gentleClass wellRespectedClass:(RespectedClass*)wellRespectedClass;

- (void)nervousConversationWithMetadata:(Metadata)metadata;
- (void)calmConversationWithMetadata:(Metadata)metadata;

@end