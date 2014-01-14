#import "RespectedClass.h"

@interface RespectedClass ()

@property(nonatomic, readwrite) NSString* name;

@end

@implementation RespectedClass {
    NSString* badWord;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        badWord = @"Hack!";
    }
    return self;
}

- (NSString*)name {
    [self setName:@"Peter"];
    return _name;
}

- (NSString*)responseForGreetings:(id)greetings {
    if ([greetings isMemberOfClass:[NSString class]] && [greetings rangeOfString:self.name].location != NSNotFound) {
        return @"Very much indeed";
    } else {
        return [self nervousResponse];
    }
}

- (NSString*)nervousResponse {
    NSString* breakingBad = [NSString
        stringWithFormat:@"%@ My name is %@", badWord, [self name]];

    NSArray* splitted = [breakingBad componentsSeparatedByString:@" "];

    NSMutableArray* array = [NSMutableArray arrayWithArray:splitted];

    NSMutableIndexSet* set = [NSMutableIndexSet indexSet];
    [set addIndex:1];
    [set addIndex:2];
    [set addIndex:3];
    [set addIndex:4];

    [splitted enumerateObjectsAtIndexes:set
                                options:0
                             usingBlock:^(id obj, NSUInteger idx, BOOL* stop) {
                                 array[idx] = [obj uppercaseString];
                             }];

    NSMutableString* response = [[NSMutableString alloc] init];
    for (NSString* string in array) {
        [response appendString:string];
        [response appendString:@" "];
    }
    return [response copy];
}

@end