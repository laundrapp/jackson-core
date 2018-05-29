//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/io/InputDecorator.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/io/IOContext.h"
#include "com/fasterxml/jackson/core/io/InputDecorator.h"
#include "java/io/DataInput.h"
#include "java/io/InputStream.h"
#include "java/io/Reader.h"
#include "java/lang/UnsupportedOperationException.h"

inline jlong ComFasterxmlJacksonCoreIoInputDecorator_get_serialVersionUID(void);
#define ComFasterxmlJacksonCoreIoInputDecorator_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreIoInputDecorator, serialVersionUID, jlong)

@implementation ComFasterxmlJacksonCoreIoInputDecorator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  ComFasterxmlJacksonCoreIoInputDecorator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (JavaIoInputStream *)decorateWithComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                withJavaIoInputStream:(JavaIoInputStream *)inArg {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaIoInputStream *)decorateWithComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                        withByteArray:(IOSByteArray *)src
                                                              withInt:(jint)offset
                                                              withInt:(jint)length {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<JavaIoDataInput>)decorateWithComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                  withJavaIoDataInput:(id<JavaIoDataInput>)input {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (JavaIoReader *)decorateWithComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                withJavaIoReader:(JavaIoReader *)r {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaIoInputStream;", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "LJavaIoInputStream;", 0x401, 0, 3, 2, -1, -1, -1 },
    { NULL, "LJavaIoDataInput;", 0x1, 0, 4, 2, -1, -1, -1 },
    { NULL, "LJavaIoReader;", 0x401, 0, 5, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(decorateWithComFasterxmlJacksonCoreIoIOContext:withJavaIoInputStream:);
  methods[2].selector = @selector(decorateWithComFasterxmlJacksonCoreIoIOContext:withByteArray:withInt:withInt:);
  methods[3].selector = @selector(decorateWithComFasterxmlJacksonCoreIoIOContext:withJavaIoDataInput:);
  methods[4].selector = @selector(decorateWithComFasterxmlJacksonCoreIoIOContext:withJavaIoReader:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = ComFasterxmlJacksonCoreIoInputDecorator_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "decorate", "LComFasterxmlJacksonCoreIoIOContext;LJavaIoInputStream;", "LJavaIoIOException;", "LComFasterxmlJacksonCoreIoIOContext;[BII", "LComFasterxmlJacksonCoreIoIOContext;LJavaIoDataInput;", "LComFasterxmlJacksonCoreIoIOContext;LJavaIoReader;" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreIoInputDecorator = { "InputDecorator", "com.fasterxml.jackson.core.io", ptrTable, methods, fields, 7, 0x401, 5, 1, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreIoInputDecorator;
}

@end

void ComFasterxmlJacksonCoreIoInputDecorator_init(ComFasterxmlJacksonCoreIoInputDecorator *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreIoInputDecorator)
