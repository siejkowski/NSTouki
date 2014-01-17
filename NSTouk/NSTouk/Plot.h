typedef void (^Metadata)();

@class GentleClass;
@class RespectedClass;

@interface Plot : NSObject

+ (instancetype)plotWithGentleClass:(GentleClass*)gentleClass wellRespectedClass:(RespectedClass*)wellRespectedClass;

- (void)nervousConversationWithBlocking:(Metadata)metadata;
- (void)calmConversationWithBlocking:(Metadata)metadata;

@end