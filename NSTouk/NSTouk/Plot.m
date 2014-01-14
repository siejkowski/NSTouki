#import "Plot.h"
#import "GentleClass.h"
#import "RespectedClass.h"
#import "NSString+Calmness.h"

static NSString* const c_REMEMBERED_NAME = @"Steve";

@interface Plot ()

@property GentleClass* gentleClass;
@property RespectedClass* wellRespectedClass;

@end

@implementation Plot
- (instancetype)initWithGentleClass:(GentleClass*)gentleClass wellRespectedClass:(RespectedClass*)wellRespectedClass {
    self = [super init];
    if (self) {
        _gentleClass = gentleClass;
        _wellRespectedClass = wellRespectedClass;
    }

    return self;
}

+ (instancetype)plotWithGentleClass:(GentleClass*)gentleClass wellRespectedClass:(RespectedClass*)wellRespectedClass {
    static dispatch_once_t pred;
    static Plot * instance;
    dispatch_once(&pred, ^{
        instance = [[Plot alloc] initWithGentleClass:gentleClass wellRespectedClass:wellRespectedClass];
    });
    return instance;
}


- (void)nervousConversationWithMetadata:(Metadata)metadata {
    if (metadata)
        metadata();
    NSLog(@"%@", [self.gentleClass greetingsForDayTime:kEvening name:c_REMEMBERED_NAME]);
    NSLog(@"%@", [self.wellRespectedClass responseForGreetings:c_REMEMBERED_NAME]);
}

- (void)calmConversationWithMetadata:(Metadata)metadata {
    metadata ? metadata() : ({});
    NSLog(@"%@", [self.gentleClass greetingsForDayTime:kEvening name:c_REMEMBERED_NAME]);
    NSLog(@"%@", [[self.wellRespectedClass responseForGreetings:c_REMEMBERED_NAME] applyCalmness]);

}


@end