//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/io/OutputDecorator.java
//

#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/io/IOContext.h"
#include "com/fasterxml/jackson/core/io/OutputDecorator.h"
#include "java/io/OutputStream.h"
#include "java/io/Writer.h"

@implementation ComFasterxmlJacksonCoreIoOutputDecorator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  ComFasterxmlJacksonCoreIoOutputDecorator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (JavaIoOutputStream *)decorateWithComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                withJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaIoWriter *)decorateWithComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                withJavaIoWriter:(JavaIoWriter *)w {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaIoOutputStream;", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "LJavaIoWriter;", 0x401, 0, 3, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(decorateWithComFasterxmlJacksonCoreIoIOContext:withJavaIoOutputStream:);
  methods[2].selector = @selector(decorateWithComFasterxmlJacksonCoreIoIOContext:withJavaIoWriter:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "decorate", "LComFasterxmlJacksonCoreIoIOContext;LJavaIoOutputStream;", "LJavaIoIOException;", "LComFasterxmlJacksonCoreIoIOContext;LJavaIoWriter;" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreIoOutputDecorator = { "OutputDecorator", "com.fasterxml.jackson.core.io", ptrTable, methods, NULL, 7, 0x401, 3, 0, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreIoOutputDecorator;
}

@end

void ComFasterxmlJacksonCoreIoOutputDecorator_init(ComFasterxmlJacksonCoreIoOutputDecorator *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreIoOutputDecorator)
