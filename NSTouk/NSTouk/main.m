#import "GentleClass.h"
#import "Plot.h"
#import "LittleRuntime.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GentleClass* gentleClass = [[GentleClass alloc] init];
        RespectedClass* wellRespectedClass = [RespectedClass new];

        Plot* plot = [Plot plotWithGentleClass:gentleClass wellRespectedClass:wellRespectedClass];

        NSString* nervous = @"The nervous way:";
        void (^nervousMetadata)() = ^{
            NSLog(nervous);
            };

        [plot nervousConversationWithMetadata:nervousMetadata];
        [plot calmConversationWithMetadata:^{
            NSLog(@"The calm way");
        }];

//        littleRuntime();

    }
    return 0;
}

