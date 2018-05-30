//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/io/DataOutputAsStream.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/io/DataOutputAsStream.h"
#include "java/io/DataOutput.h"
#include "java/io/OutputStream.h"

@implementation ComFasterxmlJacksonCoreIoDataOutputAsStream

- (instancetype __nonnull)initWithJavaIoDataOutput:(id<JavaIoDataOutput>)outArg {
  ComFasterxmlJacksonCoreIoDataOutputAsStream_initWithJavaIoDataOutput_(self, outArg);
  return self;
}

- (void)writeWithInt:(jint)b {
  [((id<JavaIoDataOutput>) nil_chk(_output_)) writeWithInt:b];
}

- (void)writeWithByteArray:(IOSByteArray *)b {
  [((id<JavaIoDataOutput>) nil_chk(_output_)) writeWithByteArray:b withInt:0 withInt:((IOSByteArray *) nil_chk(b))->size_];
}

- (void)writeWithByteArray:(IOSByteArray *)b
                   withInt:(jint)offset
                   withInt:(jint)length {
  [((id<JavaIoDataOutput>) nil_chk(_output_)) writeWithByteArray:b withInt:offset withInt:length];
}

- (void)dealloc {
  RELEASE_(_output_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 4, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 5, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaIoDataOutput:);
  methods[1].selector = @selector(writeWithInt:);
  methods[2].selector = @selector(writeWithByteArray:);
  methods[3].selector = @selector(writeWithByteArray:withInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_output_", "LJavaIoDataOutput;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaIoDataOutput;", "write", "I", "LJavaIoIOException;", "[B", "[BII" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreIoDataOutputAsStream = { "DataOutputAsStream", "com.fasterxml.jackson.core.io", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreIoDataOutputAsStream;
}

@end

void ComFasterxmlJacksonCoreIoDataOutputAsStream_initWithJavaIoDataOutput_(ComFasterxmlJacksonCoreIoDataOutputAsStream *self, id<JavaIoDataOutput> outArg) {
  JavaIoOutputStream_init(self);
  JreStrongAssign(&self->_output_, outArg);
}

ComFasterxmlJacksonCoreIoDataOutputAsStream *new_ComFasterxmlJacksonCoreIoDataOutputAsStream_initWithJavaIoDataOutput_(id<JavaIoDataOutput> outArg) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreIoDataOutputAsStream, initWithJavaIoDataOutput_, outArg)
}

ComFasterxmlJacksonCoreIoDataOutputAsStream *create_ComFasterxmlJacksonCoreIoDataOutputAsStream_initWithJavaIoDataOutput_(id<JavaIoDataOutput> outArg) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreIoDataOutputAsStream, initWithJavaIoDataOutput_, outArg)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreIoDataOutputAsStream)