The solution involves using `autorelease` or ARC (Automatic Reference Counting) to manage memory more effectively:

**Using autorelease:**

```objectivec
@interface MyClass : NSObject
@property (nonatomic, retain) NSString *myString;
@end

@implementation MyClass
- (void)dealloc {
    [myString release];
    [super dealloc];
}
@end

// ... in some other method ...
MyClass *obj = [[MyClass alloc] init];
obj.myString = [[NSString alloc] initWithString: @"Hello"];
[obj.myString autorelease]; // added autorelease
[obj release];
```

**Using ARC (Automatic Reference Counting):**

In modern Objective-C development, ARC is highly recommended. With ARC, the code simplifies significantly:

```objectivec
@interface MyClass : NSObject
@property (nonatomic, strong) NSString *myString;
@end

@implementation MyClass
// dealloc is no longer needed with ARC
@end

// ... in some other method ...
MyClass *obj = [[MyClass alloc] init];
obj.myString = [NSString stringWithString: @"Hello"];
// ARC handles memory management automatically
[obj release];
```

ARC eliminates the need for manual retain/release calls, making the code cleaner and reducing the risk of memory leaks.