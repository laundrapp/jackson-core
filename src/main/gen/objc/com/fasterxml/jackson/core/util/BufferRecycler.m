//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/util/BufferRecycler.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/util/BufferRecycler.h"

inline IOSIntArray *ComFasterxmlJacksonCoreUtilBufferRecycler_get_BYTE_BUFFER_LENGTHS(void);
static IOSIntArray *ComFasterxmlJacksonCoreUtilBufferRecycler_BYTE_BUFFER_LENGTHS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreUtilBufferRecycler, BYTE_BUFFER_LENGTHS, IOSIntArray *)

inline IOSIntArray *ComFasterxmlJacksonCoreUtilBufferRecycler_get_CHAR_BUFFER_LENGTHS(void);
static IOSIntArray *ComFasterxmlJacksonCoreUtilBufferRecycler_CHAR_BUFFER_LENGTHS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreUtilBufferRecycler, CHAR_BUFFER_LENGTHS, IOSIntArray *)

J2OBJC_INITIALIZED_DEFN(ComFasterxmlJacksonCoreUtilBufferRecycler)

@implementation ComFasterxmlJacksonCoreUtilBufferRecycler

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  ComFasterxmlJacksonCoreUtilBufferRecycler_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype __nonnull)initWithInt:(jint)bbCount
                              withInt:(jint)cbCount {
  ComFasterxmlJacksonCoreUtilBufferRecycler_initWithInt_withInt_(self, bbCount, cbCount);
  return self;
}

- (IOSByteArray *)allocByteBufferWithInt:(jint)ix {
  return [self allocByteBufferWithInt:ix withInt:0];
}

- (IOSByteArray *)allocByteBufferWithInt:(jint)ix
                                 withInt:(jint)minSize {
  jint DEF_SIZE = [self byteBufferLengthWithInt:ix];
  if (minSize < DEF_SIZE) {
    minSize = DEF_SIZE;
  }
  IOSByteArray *buffer = IOSObjectArray_Get(nil_chk(_byteBuffers_), ix);
  if (buffer == nil || buffer->size_ < minSize) {
    buffer = [self ballocWithInt:minSize];
  }
  else {
    IOSObjectArray_Set(_byteBuffers_, ix, nil);
  }
  return buffer;
}

- (void)releaseByteBufferWithInt:(jint)ix
                   withByteArray:(IOSByteArray *)buffer {
  IOSObjectArray_Set(nil_chk(_byteBuffers_), ix, buffer);
}

- (IOSCharArray *)allocCharBufferWithInt:(jint)ix {
  return [self allocCharBufferWithInt:ix withInt:0];
}

- (IOSCharArray *)allocCharBufferWithInt:(jint)ix
                                 withInt:(jint)minSize {
  jint DEF_SIZE = [self charBufferLengthWithInt:ix];
  if (minSize < DEF_SIZE) {
    minSize = DEF_SIZE;
  }
  IOSCharArray *buffer = IOSObjectArray_Get(nil_chk(_charBuffers_), ix);
  if (buffer == nil || buffer->size_ < minSize) {
    buffer = [self callocWithInt:minSize];
  }
  else {
    IOSObjectArray_Set(_charBuffers_, ix, nil);
  }
  return buffer;
}

- (void)releaseCharBufferWithInt:(jint)ix
                   withCharArray:(IOSCharArray *)buffer {
  IOSObjectArray_Set(nil_chk(_charBuffers_), ix, buffer);
}

- (jint)byteBufferLengthWithInt:(jint)ix {
  return IOSIntArray_Get(nil_chk(ComFasterxmlJacksonCoreUtilBufferRecycler_BYTE_BUFFER_LENGTHS), ix);
}

- (jint)charBufferLengthWithInt:(jint)ix {
  return IOSIntArray_Get(nil_chk(ComFasterxmlJacksonCoreUtilBufferRecycler_CHAR_BUFFER_LENGTHS), ix);
}

- (IOSByteArray *)ballocWithInt:(jint)size {
  return [IOSByteArray arrayWithLength:size];
}

- (IOSCharArray *)callocWithInt:(jint)size {
  return [IOSCharArray arrayWithLength:size];
}

- (void)dealloc {
  RELEASE_(_byteBuffers_);
  RELEASE_(_charBuffers_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "[B", 0x11, 1, 2, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, 1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "[C", 0x11, 5, 2, -1, -1, -1, -1 },
    { NULL, "[C", 0x1, 5, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 8, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 9, 2, -1, -1, -1, -1 },
    { NULL, "[B", 0x4, 10, 2, -1, -1, -1, -1 },
    { NULL, "[C", 0x4, 11, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithInt:withInt:);
  methods[2].selector = @selector(allocByteBufferWithInt:);
  methods[3].selector = @selector(allocByteBufferWithInt:withInt:);
  methods[4].selector = @selector(releaseByteBufferWithInt:withByteArray:);
  methods[5].selector = @selector(allocCharBufferWithInt:);
  methods[6].selector = @selector(allocCharBufferWithInt:withInt:);
  methods[7].selector = @selector(releaseCharBufferWithInt:withCharArray:);
  methods[8].selector = @selector(byteBufferLengthWithInt:);
  methods[9].selector = @selector(charBufferLengthWithInt:);
  methods[10].selector = @selector(ballocWithInt:);
  methods[11].selector = @selector(callocWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "BYTE_READ_IO_BUFFER", "I", .constantValue.asInt = ComFasterxmlJacksonCoreUtilBufferRecycler_BYTE_READ_IO_BUFFER, 0x19, -1, -1, -1, -1 },
    { "BYTE_WRITE_ENCODING_BUFFER", "I", .constantValue.asInt = ComFasterxmlJacksonCoreUtilBufferRecycler_BYTE_WRITE_ENCODING_BUFFER, 0x19, -1, -1, -1, -1 },
    { "BYTE_WRITE_CONCAT_BUFFER", "I", .constantValue.asInt = ComFasterxmlJacksonCoreUtilBufferRecycler_BYTE_WRITE_CONCAT_BUFFER, 0x19, -1, -1, -1, -1 },
    { "BYTE_BASE64_CODEC_BUFFER", "I", .constantValue.asInt = ComFasterxmlJacksonCoreUtilBufferRecycler_BYTE_BASE64_CODEC_BUFFER, 0x19, -1, -1, -1, -1 },
    { "CHAR_TOKEN_BUFFER", "I", .constantValue.asInt = ComFasterxmlJacksonCoreUtilBufferRecycler_CHAR_TOKEN_BUFFER, 0x19, -1, -1, -1, -1 },
    { "CHAR_CONCAT_BUFFER", "I", .constantValue.asInt = ComFasterxmlJacksonCoreUtilBufferRecycler_CHAR_CONCAT_BUFFER, 0x19, -1, -1, -1, -1 },
    { "CHAR_TEXT_BUFFER", "I", .constantValue.asInt = ComFasterxmlJacksonCoreUtilBufferRecycler_CHAR_TEXT_BUFFER, 0x19, -1, -1, -1, -1 },
    { "CHAR_NAME_COPY_BUFFER", "I", .constantValue.asInt = ComFasterxmlJacksonCoreUtilBufferRecycler_CHAR_NAME_COPY_BUFFER, 0x19, -1, -1, -1, -1 },
    { "BYTE_BUFFER_LENGTHS", "[I", .constantValue.asLong = 0, 0x1a, -1, 12, -1, -1 },
    { "CHAR_BUFFER_LENGTHS", "[I", .constantValue.asLong = 0, 0x1a, -1, 13, -1, -1 },
    { "_byteBuffers_", "[[B", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_charBuffers_", "[[C", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "II", "allocByteBuffer", "I", "releaseByteBuffer", "I[B", "allocCharBuffer", "releaseCharBuffer", "I[C", "byteBufferLength", "charBufferLength", "balloc", "calloc", &ComFasterxmlJacksonCoreUtilBufferRecycler_BYTE_BUFFER_LENGTHS, &ComFasterxmlJacksonCoreUtilBufferRecycler_CHAR_BUFFER_LENGTHS };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreUtilBufferRecycler = { "BufferRecycler", "com.fasterxml.jackson.core.util", ptrTable, methods, fields, 7, 0x1, 12, 12, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreUtilBufferRecycler;
}

+ (void)initialize {
  if (self == [ComFasterxmlJacksonCoreUtilBufferRecycler class]) {
    JreStrongAssignAndConsume(&ComFasterxmlJacksonCoreUtilBufferRecycler_BYTE_BUFFER_LENGTHS, [IOSIntArray newArrayWithInts:(jint[]){ 8000, 8000, 2000, 2000 } count:4]);
    JreStrongAssignAndConsume(&ComFasterxmlJacksonCoreUtilBufferRecycler_CHAR_BUFFER_LENGTHS, [IOSIntArray newArrayWithInts:(jint[]){ 4000, 4000, 200, 200 } count:4]);
    J2OBJC_SET_INITIALIZED(ComFasterxmlJacksonCoreUtilBufferRecycler)
  }
}

@end

void ComFasterxmlJacksonCoreUtilBufferRecycler_init(ComFasterxmlJacksonCoreUtilBufferRecycler *self) {
  ComFasterxmlJacksonCoreUtilBufferRecycler_initWithInt_withInt_(self, 4, 4);
}

ComFasterxmlJacksonCoreUtilBufferRecycler *new_ComFasterxmlJacksonCoreUtilBufferRecycler_init() {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreUtilBufferRecycler, init)
}

ComFasterxmlJacksonCoreUtilBufferRecycler *create_ComFasterxmlJacksonCoreUtilBufferRecycler_init() {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreUtilBufferRecycler, init)
}

void ComFasterxmlJacksonCoreUtilBufferRecycler_initWithInt_withInt_(ComFasterxmlJacksonCoreUtilBufferRecycler *self, jint bbCount, jint cbCount) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->_byteBuffers_, [IOSObjectArray newArrayWithLength:bbCount type:IOSClass_byteArray(1)]);
  JreStrongAssignAndConsume(&self->_charBuffers_, [IOSObjectArray newArrayWithLength:cbCount type:IOSClass_charArray(1)]);
}

ComFasterxmlJacksonCoreUtilBufferRecycler *new_ComFasterxmlJacksonCoreUtilBufferRecycler_initWithInt_withInt_(jint bbCount, jint cbCount) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreUtilBufferRecycler, initWithInt_withInt_, bbCount, cbCount)
}

ComFasterxmlJacksonCoreUtilBufferRecycler *create_ComFasterxmlJacksonCoreUtilBufferRecycler_initWithInt_withInt_(jint bbCount, jint cbCount) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreUtilBufferRecycler, initWithInt_withInt_, bbCount, cbCount)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreUtilBufferRecycler)