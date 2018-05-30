//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/util/ByteArrayBuilder.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/util/BufferRecycler.h"
#include "com/fasterxml/jackson/core/util/ByteArrayBuilder.h"
#include "java/io/OutputStream.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Math.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/util/LinkedList.h"

@interface ComFasterxmlJacksonCoreUtilByteArrayBuilder () {
 @public
  ComFasterxmlJacksonCoreUtilBufferRecycler *_bufferRecycler_;
  JavaUtilLinkedList *_pastBlocks_;
  jint _pastLen_;
  IOSByteArray *_currBlock_;
  jint _currBlockPtr_;
}

- (void)_allocMore OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreUtilByteArrayBuilder, _bufferRecycler_, ComFasterxmlJacksonCoreUtilBufferRecycler *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreUtilByteArrayBuilder, _pastBlocks_, JavaUtilLinkedList *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreUtilByteArrayBuilder, _currBlock_, IOSByteArray *)

inline jint ComFasterxmlJacksonCoreUtilByteArrayBuilder_get_INITIAL_BLOCK_SIZE(void);
#define ComFasterxmlJacksonCoreUtilByteArrayBuilder_INITIAL_BLOCK_SIZE 500
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreUtilByteArrayBuilder, INITIAL_BLOCK_SIZE, jint)

inline jint ComFasterxmlJacksonCoreUtilByteArrayBuilder_get_MAX_BLOCK_SIZE(void);
#define ComFasterxmlJacksonCoreUtilByteArrayBuilder_MAX_BLOCK_SIZE 262144
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreUtilByteArrayBuilder, MAX_BLOCK_SIZE, jint)

__attribute__((unused)) static void ComFasterxmlJacksonCoreUtilByteArrayBuilder__allocMore(ComFasterxmlJacksonCoreUtilByteArrayBuilder *self);

J2OBJC_INITIALIZED_DEFN(ComFasterxmlJacksonCoreUtilByteArrayBuilder)

IOSByteArray *ComFasterxmlJacksonCoreUtilByteArrayBuilder_NO_BYTES;

@implementation ComFasterxmlJacksonCoreUtilByteArrayBuilder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  ComFasterxmlJacksonCoreUtilByteArrayBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreUtilBufferRecycler:(ComFasterxmlJacksonCoreUtilBufferRecycler *)br {
  ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithComFasterxmlJacksonCoreUtilBufferRecycler_(self, br);
  return self;
}

- (instancetype __nonnull)initWithInt:(jint)firstBlockSize {
  ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithInt_(self, firstBlockSize);
  return self;
}

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreUtilBufferRecycler:(ComFasterxmlJacksonCoreUtilBufferRecycler *)br
                                                                    withInt:(jint)firstBlockSize {
  ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithComFasterxmlJacksonCoreUtilBufferRecycler_withInt_(self, br, firstBlockSize);
  return self;
}

- (void)reset {
  _pastLen_ = 0;
  _currBlockPtr_ = 0;
  if (![((JavaUtilLinkedList *) nil_chk(_pastBlocks_)) isEmpty]) {
    [_pastBlocks_ clear];
  }
}

- (jint)size {
  return _pastLen_ + _currBlockPtr_;
}

- (void)release__ {
  [self reset];
  if (_bufferRecycler_ != nil && _currBlock_ != nil) {
    [_bufferRecycler_ releaseByteBufferWithInt:ComFasterxmlJacksonCoreUtilBufferRecycler_BYTE_WRITE_CONCAT_BUFFER withByteArray:_currBlock_];
    JreStrongAssign(&_currBlock_, nil);
  }
}

- (void)appendWithInt:(jint)i {
  if (_currBlockPtr_ >= ((IOSByteArray *) nil_chk(_currBlock_))->size_) {
    ComFasterxmlJacksonCoreUtilByteArrayBuilder__allocMore(self);
  }
  *IOSByteArray_GetRef(nil_chk(_currBlock_), _currBlockPtr_++) = (jbyte) i;
}

- (void)appendTwoBytesWithInt:(jint)b16 {
  if ((_currBlockPtr_ + 1) < ((IOSByteArray *) nil_chk(_currBlock_))->size_) {
    *IOSByteArray_GetRef(_currBlock_, _currBlockPtr_++) = (jbyte) (JreRShift32(b16, 8));
    *IOSByteArray_GetRef(_currBlock_, _currBlockPtr_++) = (jbyte) b16;
  }
  else {
    [self appendWithInt:JreRShift32(b16, 8)];
    [self appendWithInt:b16];
  }
}

- (void)appendThreeBytesWithInt:(jint)b24 {
  if ((_currBlockPtr_ + 2) < ((IOSByteArray *) nil_chk(_currBlock_))->size_) {
    *IOSByteArray_GetRef(_currBlock_, _currBlockPtr_++) = (jbyte) (JreRShift32(b24, 16));
    *IOSByteArray_GetRef(_currBlock_, _currBlockPtr_++) = (jbyte) (JreRShift32(b24, 8));
    *IOSByteArray_GetRef(_currBlock_, _currBlockPtr_++) = (jbyte) b24;
  }
  else {
    [self appendWithInt:JreRShift32(b24, 16)];
    [self appendWithInt:JreRShift32(b24, 8)];
    [self appendWithInt:b24];
  }
}

- (void)appendFourBytesWithInt:(jint)b32 {
  if ((_currBlockPtr_ + 3) < ((IOSByteArray *) nil_chk(_currBlock_))->size_) {
    *IOSByteArray_GetRef(_currBlock_, _currBlockPtr_++) = (jbyte) (JreRShift32(b32, 24));
    *IOSByteArray_GetRef(_currBlock_, _currBlockPtr_++) = (jbyte) (JreRShift32(b32, 16));
    *IOSByteArray_GetRef(_currBlock_, _currBlockPtr_++) = (jbyte) (JreRShift32(b32, 8));
    *IOSByteArray_GetRef(_currBlock_, _currBlockPtr_++) = (jbyte) b32;
  }
  else {
    [self appendWithInt:JreRShift32(b32, 24)];
    [self appendWithInt:JreRShift32(b32, 16)];
    [self appendWithInt:JreRShift32(b32, 8)];
    [self appendWithInt:b32];
  }
}

- (IOSByteArray *)toByteArray {
  jint totalLen = _pastLen_ + _currBlockPtr_;
  if (totalLen == 0) {
    return ComFasterxmlJacksonCoreUtilByteArrayBuilder_NO_BYTES;
  }
  IOSByteArray *result = [IOSByteArray arrayWithLength:totalLen];
  jint offset = 0;
  for (IOSByteArray * __strong block in nil_chk(_pastBlocks_)) {
    jint len = ((IOSByteArray *) nil_chk(block))->size_;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(block, 0, result, offset, len);
    offset += len;
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(_currBlock_, 0, result, offset, _currBlockPtr_);
  offset += _currBlockPtr_;
  if (offset != totalLen) {
    @throw create_JavaLangRuntimeException_initWithNSString_(JreStrcat("$I$I$", @"Internal error: total len assumed to be ", totalLen, @", copied ", offset, @" bytes"));
  }
  if (![_pastBlocks_ isEmpty]) {
    [self reset];
  }
  return result;
}

- (IOSByteArray *)resetAndGetFirstSegment {
  [self reset];
  return _currBlock_;
}

- (IOSByteArray *)finishCurrentSegment {
  ComFasterxmlJacksonCoreUtilByteArrayBuilder__allocMore(self);
  return _currBlock_;
}

- (IOSByteArray *)completeAndCoalesceWithInt:(jint)lastBlockLength {
  _currBlockPtr_ = lastBlockLength;
  return [self toByteArray];
}

- (IOSByteArray *)getCurrentSegment {
  return _currBlock_;
}

- (void)setCurrentSegmentLengthWithInt:(jint)len {
  _currBlockPtr_ = len;
}

- (jint)getCurrentSegmentLength {
  return _currBlockPtr_;
}

- (void)writeWithByteArray:(IOSByteArray *)b {
  [self writeWithByteArray:b withInt:0 withInt:((IOSByteArray *) nil_chk(b))->size_];
}

- (void)writeWithByteArray:(IOSByteArray *)b
                   withInt:(jint)off
                   withInt:(jint)len {
  while (true) {
    jint max = ((IOSByteArray *) nil_chk(_currBlock_))->size_ - _currBlockPtr_;
    jint toCopy = JavaLangMath_minWithInt_withInt_(max, len);
    if (toCopy > 0) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(b, off, _currBlock_, _currBlockPtr_, toCopy);
      off += toCopy;
      _currBlockPtr_ += toCopy;
      len -= toCopy;
    }
    if (len <= 0) break;
    ComFasterxmlJacksonCoreUtilByteArrayBuilder__allocMore(self);
  }
}

- (void)writeWithInt:(jint)b {
  [self appendWithInt:b];
}

- (void)close {
}

- (void)flush {
}

- (void)_allocMore {
  ComFasterxmlJacksonCoreUtilByteArrayBuilder__allocMore(self);
}

- (void)dealloc {
  RELEASE_(_bufferRecycler_);
  RELEASE_(_pastBlocks_);
  RELEASE_(_currBlock_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, 8, 1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithComFasterxmlJacksonCoreUtilBufferRecycler:);
  methods[2].selector = @selector(initWithInt:);
  methods[3].selector = @selector(initWithComFasterxmlJacksonCoreUtilBufferRecycler:withInt:);
  methods[4].selector = @selector(reset);
  methods[5].selector = @selector(size);
  methods[6].selector = @selector(release__);
  methods[7].selector = @selector(appendWithInt:);
  methods[8].selector = @selector(appendTwoBytesWithInt:);
  methods[9].selector = @selector(appendThreeBytesWithInt:);
  methods[10].selector = @selector(appendFourBytesWithInt:);
  methods[11].selector = @selector(toByteArray);
  methods[12].selector = @selector(resetAndGetFirstSegment);
  methods[13].selector = @selector(finishCurrentSegment);
  methods[14].selector = @selector(completeAndCoalesceWithInt:);
  methods[15].selector = @selector(getCurrentSegment);
  methods[16].selector = @selector(setCurrentSegmentLengthWithInt:);
  methods[17].selector = @selector(getCurrentSegmentLength);
  methods[18].selector = @selector(writeWithByteArray:);
  methods[19].selector = @selector(writeWithByteArray:withInt:withInt:);
  methods[20].selector = @selector(writeWithInt:);
  methods[21].selector = @selector(close);
  methods[22].selector = @selector(flush);
  methods[23].selector = @selector(_allocMore);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NO_BYTES", "[B", .constantValue.asLong = 0, 0x19, -1, 13, -1, -1 },
    { "INITIAL_BLOCK_SIZE", "I", .constantValue.asInt = ComFasterxmlJacksonCoreUtilByteArrayBuilder_INITIAL_BLOCK_SIZE, 0x1a, -1, -1, -1, -1 },
    { "MAX_BLOCK_SIZE", "I", .constantValue.asInt = ComFasterxmlJacksonCoreUtilByteArrayBuilder_MAX_BLOCK_SIZE, 0x1a, -1, -1, -1, -1 },
    { "DEFAULT_BLOCK_ARRAY_SIZE", "I", .constantValue.asInt = ComFasterxmlJacksonCoreUtilByteArrayBuilder_DEFAULT_BLOCK_ARRAY_SIZE, 0x18, -1, -1, -1, -1 },
    { "_bufferRecycler_", "LComFasterxmlJacksonCoreUtilBufferRecycler;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_pastBlocks_", "LJavaUtilLinkedList;", .constantValue.asLong = 0, 0x12, -1, -1, 14, -1 },
    { "_pastLen_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_currBlock_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_currBlockPtr_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComFasterxmlJacksonCoreUtilBufferRecycler;", "I", "LComFasterxmlJacksonCoreUtilBufferRecycler;I", "release", "append", "appendTwoBytes", "appendThreeBytes", "appendFourBytes", "completeAndCoalesce", "setCurrentSegmentLength", "write", "[B", "[BII", &ComFasterxmlJacksonCoreUtilByteArrayBuilder_NO_BYTES, "Ljava/util/LinkedList<[B>;" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreUtilByteArrayBuilder = { "ByteArrayBuilder", "com.fasterxml.jackson.core.util", ptrTable, methods, fields, 7, 0x11, 24, 9, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreUtilByteArrayBuilder;
}

+ (void)initialize {
  if (self == [ComFasterxmlJacksonCoreUtilByteArrayBuilder class]) {
    JreStrongAssignAndConsume(&ComFasterxmlJacksonCoreUtilByteArrayBuilder_NO_BYTES, [IOSByteArray newArrayWithLength:0]);
    J2OBJC_SET_INITIALIZED(ComFasterxmlJacksonCoreUtilByteArrayBuilder)
  }
}

@end

void ComFasterxmlJacksonCoreUtilByteArrayBuilder_init(ComFasterxmlJacksonCoreUtilByteArrayBuilder *self) {
  ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithComFasterxmlJacksonCoreUtilBufferRecycler_(self, nil);
}

ComFasterxmlJacksonCoreUtilByteArrayBuilder *new_ComFasterxmlJacksonCoreUtilByteArrayBuilder_init() {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreUtilByteArrayBuilder, init)
}

ComFasterxmlJacksonCoreUtilByteArrayBuilder *create_ComFasterxmlJacksonCoreUtilByteArrayBuilder_init() {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreUtilByteArrayBuilder, init)
}

void ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithComFasterxmlJacksonCoreUtilBufferRecycler_(ComFasterxmlJacksonCoreUtilByteArrayBuilder *self, ComFasterxmlJacksonCoreUtilBufferRecycler *br) {
  ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithComFasterxmlJacksonCoreUtilBufferRecycler_withInt_(self, br, ComFasterxmlJacksonCoreUtilByteArrayBuilder_INITIAL_BLOCK_SIZE);
}

ComFasterxmlJacksonCoreUtilByteArrayBuilder *new_ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithComFasterxmlJacksonCoreUtilBufferRecycler_(ComFasterxmlJacksonCoreUtilBufferRecycler *br) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreUtilByteArrayBuilder, initWithComFasterxmlJacksonCoreUtilBufferRecycler_, br)
}

ComFasterxmlJacksonCoreUtilByteArrayBuilder *create_ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithComFasterxmlJacksonCoreUtilBufferRecycler_(ComFasterxmlJacksonCoreUtilBufferRecycler *br) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreUtilByteArrayBuilder, initWithComFasterxmlJacksonCoreUtilBufferRecycler_, br)
}

void ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithInt_(ComFasterxmlJacksonCoreUtilByteArrayBuilder *self, jint firstBlockSize) {
  ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithComFasterxmlJacksonCoreUtilBufferRecycler_withInt_(self, nil, firstBlockSize);
}

ComFasterxmlJacksonCoreUtilByteArrayBuilder *new_ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithInt_(jint firstBlockSize) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreUtilByteArrayBuilder, initWithInt_, firstBlockSize)
}

ComFasterxmlJacksonCoreUtilByteArrayBuilder *create_ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithInt_(jint firstBlockSize) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreUtilByteArrayBuilder, initWithInt_, firstBlockSize)
}

void ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithComFasterxmlJacksonCoreUtilBufferRecycler_withInt_(ComFasterxmlJacksonCoreUtilByteArrayBuilder *self, ComFasterxmlJacksonCoreUtilBufferRecycler *br, jint firstBlockSize) {
  JavaIoOutputStream_init(self);
  JreStrongAssignAndConsume(&self->_pastBlocks_, new_JavaUtilLinkedList_init());
  JreStrongAssign(&self->_bufferRecycler_, br);
  JreStrongAssign(&self->_currBlock_, (br == nil) ? [IOSByteArray arrayWithLength:firstBlockSize] : [((ComFasterxmlJacksonCoreUtilBufferRecycler *) nil_chk(br)) allocByteBufferWithInt:ComFasterxmlJacksonCoreUtilBufferRecycler_BYTE_WRITE_CONCAT_BUFFER]);
}

ComFasterxmlJacksonCoreUtilByteArrayBuilder *new_ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithComFasterxmlJacksonCoreUtilBufferRecycler_withInt_(ComFasterxmlJacksonCoreUtilBufferRecycler *br, jint firstBlockSize) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreUtilByteArrayBuilder, initWithComFasterxmlJacksonCoreUtilBufferRecycler_withInt_, br, firstBlockSize)
}

ComFasterxmlJacksonCoreUtilByteArrayBuilder *create_ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithComFasterxmlJacksonCoreUtilBufferRecycler_withInt_(ComFasterxmlJacksonCoreUtilBufferRecycler *br, jint firstBlockSize) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreUtilByteArrayBuilder, initWithComFasterxmlJacksonCoreUtilBufferRecycler_withInt_, br, firstBlockSize)
}

void ComFasterxmlJacksonCoreUtilByteArrayBuilder__allocMore(ComFasterxmlJacksonCoreUtilByteArrayBuilder *self) {
  jint newPastLen = self->_pastLen_ + ((IOSByteArray *) nil_chk(self->_currBlock_))->size_;
  if (newPastLen < 0) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"Maximum Java array size (2GB) exceeded by `ByteArrayBuilder`");
  }
  self->_pastLen_ = newPastLen;
  jint newSize = JavaLangMath_maxWithInt_withInt_((JreRShift32(self->_pastLen_, 1)), (ComFasterxmlJacksonCoreUtilByteArrayBuilder_INITIAL_BLOCK_SIZE + ComFasterxmlJacksonCoreUtilByteArrayBuilder_INITIAL_BLOCK_SIZE));
  if (newSize > ComFasterxmlJacksonCoreUtilByteArrayBuilder_MAX_BLOCK_SIZE) {
    newSize = ComFasterxmlJacksonCoreUtilByteArrayBuilder_MAX_BLOCK_SIZE;
  }
  [((JavaUtilLinkedList *) nil_chk(self->_pastBlocks_)) addWithId:self->_currBlock_];
  JreStrongAssignAndConsume(&self->_currBlock_, [IOSByteArray newArrayWithLength:newSize]);
  self->_currBlockPtr_ = 0;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreUtilByteArrayBuilder)
