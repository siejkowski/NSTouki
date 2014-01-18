#import <objc/runtime.h>
#import "RespectedClass.h"

void littleRuntime() {

    NSLog(@" ");
    NSLog(@"And for something comepletely different:");
    NSLog(@" ");
    NSLog(@"Object: %p, %p", [RespectedClass new], [RespectedClass new]);
    NSLog(@"Class: %p, %p", [[RespectedClass new] class], [[RespectedClass new] class]);
    NSLog(@"MetaClass: %p, %p", object_getClass([[RespectedClass new] class]), object_getClass([[RespectedClass new] class]));
    NSLog(@" ");
    NSLog(@"SuperClass: %p, %p", [[RespectedClass new] superclass], [[RespectedClass new] superclass]);
    NSLog(@"SuperMetaClass: %p, %p", object_getClass([[RespectedClass new] superclass]), object_getClass([[RespectedClass new] superclass]));
    NSLog(@" ");
    NSLog(@"NSObject class: %p", [NSObject class]);
    NSLog(@"NSObject metaclass: %p", object_getClass([NSObject class]));
    NSLog(@"NSObject class: %p", [NSObject superclass]);
    NSLog(@" ");
    unsigned int numberOfProperties = 0;
    Method * methodList = class_copyMethodList([[RespectedClass new] class], &numberOfProperties);
    NSLog(@"RespectedClass methods: ");
    for (NSUInteger i = 0; i < numberOfProperties; i++) {
        Method method = methodList[i];
        NSLog(@"address: %p", method);
        NSString *name = [[NSString alloc] initWithUTF8String:sel_getName(method_getName(method))];
        NSLog(@"- %@", name);
    }
    free(methodList);
}