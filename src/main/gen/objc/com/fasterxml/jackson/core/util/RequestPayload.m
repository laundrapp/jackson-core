//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/util/RequestPayload.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/util/RequestPayload.h"
#include "java/io/IOException.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/RuntimeException.h"

inline jlong ComFasterxmlJacksonCoreUtilRequestPayload_get_serialVersionUID(void);
#define ComFasterxmlJacksonCoreUtilRequestPayload_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreUtilRequestPayload, serialVersionUID, jlong)

@implementation ComFasterxmlJacksonCoreUtilRequestPayload

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)bytes
                               withNSString:(NSString *)charset {
  ComFasterxmlJacksonCoreUtilRequestPayload_initWithByteArray_withNSString_(self, bytes, charset);
  return self;
}

- (instancetype __nonnull)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)str {
  ComFasterxmlJacksonCoreUtilRequestPayload_initWithJavaLangCharSequence_(self, str);
  return self;
}

- (id)getRawPayload {
  if (_payloadAsBytes_ != nil) {
    return _payloadAsBytes_;
  }
  return _payloadAsText_;
}

- (NSString *)description {
  if (_payloadAsBytes_ != nil) {
    @try {
      return [NSString java_stringWithBytes:_payloadAsBytes_ charsetName:_charset_];
    }
    @catch (JavaIoIOException *e) {
      @throw create_JavaLangRuntimeException_initWithJavaLangThrowable_(e);
    }
  }
  return [((id<JavaLangCharSequence>) nil_chk(_payloadAsText_)) description];
}

- (void)dealloc {
  RELEASE_(_payloadAsBytes_);
  RELEASE_(_payloadAsText_);
  RELEASE_(_charset_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithByteArray:withNSString:);
  methods[1].selector = @selector(initWithJavaLangCharSequence:);
  methods[2].selector = @selector(getRawPayload);
  methods[3].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = ComFasterxmlJacksonCoreUtilRequestPayload_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "_payloadAsBytes_", "[B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_payloadAsText_", "LJavaLangCharSequence;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_charset_", "LNSString;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[BLNSString;", "LJavaLangCharSequence;", "toString" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreUtilRequestPayload = { "RequestPayload", "com.fasterxml.jackson.core.util", ptrTable, methods, fields, 7, 0x1, 4, 4, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreUtilRequestPayload;
}

@end

void ComFasterxmlJacksonCoreUtilRequestPayload_initWithByteArray_withNSString_(ComFasterxmlJacksonCoreUtilRequestPayload *self, IOSByteArray *bytes, NSString *charset) {
  NSObject_init(self);
  if (bytes == nil) {
    @throw create_JavaLangIllegalArgumentException_init();
  }
  JreStrongAssign(&self->_payloadAsBytes_, bytes);
  JreStrongAssign(&self->_charset_, (charset == nil || [charset java_isEmpty]) ? @"UTF-8" : charset);
}

ComFasterxmlJacksonCoreUtilRequestPayload *new_ComFasterxmlJacksonCoreUtilRequestPayload_initWithByteArray_withNSString_(IOSByteArray *bytes, NSString *charset) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreUtilRequestPayload, initWithByteArray_withNSString_, bytes, charset)
}

ComFasterxmlJacksonCoreUtilRequestPayload *create_ComFasterxmlJacksonCoreUtilRequestPayload_initWithByteArray_withNSString_(IOSByteArray *bytes, NSString *charset) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreUtilRequestPayload, initWithByteArray_withNSString_, bytes, charset)
}

void ComFasterxmlJacksonCoreUtilRequestPayload_initWithJavaLangCharSequence_(ComFasterxmlJacksonCoreUtilRequestPayload *self, id<JavaLangCharSequence> str) {
  NSObject_init(self);
  if (str == nil) {
    @throw create_JavaLangIllegalArgumentException_init();
  }
  JreStrongAssign(&self->_payloadAsText_, str);
}

ComFasterxmlJacksonCoreUtilRequestPayload *new_ComFasterxmlJacksonCoreUtilRequestPayload_initWithJavaLangCharSequence_(id<JavaLangCharSequence> str) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreUtilRequestPayload, initWithJavaLangCharSequence_, str)
}

ComFasterxmlJacksonCoreUtilRequestPayload *create_ComFasterxmlJacksonCoreUtilRequestPayload_initWithJavaLangCharSequence_(id<JavaLangCharSequence> str) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreUtilRequestPayload, initWithJavaLangCharSequence_, str)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreUtilRequestPayload)
