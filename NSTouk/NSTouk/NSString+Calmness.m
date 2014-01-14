#import "NSString+Calmness.h"

@implementation NSString (Calmness)

- (NSString*)applyCalmness {
    return [[self stringByReplacingOccurrencesOfString:@"Hack"
                                             withString:@"Oh sir, you must have mistaken me for somebody else"]
            lowercaseStringWithLocale:[NSLocale localeWithLocaleIdentifier:@"en_US"]];
}

@end