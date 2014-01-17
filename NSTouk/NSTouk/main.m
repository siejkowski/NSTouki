#import "GentleClass.h"
#import "Plot.h"
#import "LittleRuntime.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GentleClass* gentleClass = [[GentleClass alloc] init];
        RespectedClass* wellRespectedClass = [RespectedClass new];

        Plot* plot = [Plot plotWithGentleClass:gentleClass wellRespectedClass:wellRespectedClass];

        NSString* nervous = @"The nervous encounter:";
        void (^nervousMetadata)() = ^{
            NSLog(nervous);
            };

        [plot nervousConversationWithBlocking:nervousMetadata];
        [plot calmConversationWithBlocking:^{
            NSLog(@"The calm encounter:");
        }];

//        littleRuntime();

    }
    return 0;
}

