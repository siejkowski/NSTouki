#import "GentleClass.h"

@implementation GentleClass

- (NSString*)greetingsForDayTime:(kDayTime)dayTime name:(NSString*)name {
    NSMutableString* greetings = [NSMutableString string];
    switch (dayTime) {
        case kMorning:
            [greetings appendString:@"Good morning!"];
            break;
        case kEvening:
            [greetings appendString:@"Good evening!"];
            break;
    }
    [greetings appendString:[@" Nice to see you, " stringByAppendingString:name]];
    return [greetings copy];
}

@end