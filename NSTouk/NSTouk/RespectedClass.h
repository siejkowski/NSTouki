typedef NS_ENUM(NSUInteger, kDayTime) {
    kMorning,
    kEvening
};

@protocol BeingRespectful

@required
- (id)greetingsForDayTime:(kDayTime)dayTime name:(NSString* )name;

@optional
- (NSString*)contactInfo;

@end

@interface RespectedClass : NSObject

@property(nonatomic, readonly) NSString* name;

- (NSString*)responseForGreetings:(id)greetings;

@end