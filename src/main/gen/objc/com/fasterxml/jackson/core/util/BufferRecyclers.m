//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/util/BufferRecyclers.java
//

#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/io/JsonStringEncoder.h"
#include "com/fasterxml/jackson/core/util/BufferRecycler.h"
#include "com/fasterxml/jackson/core/util/BufferRecyclers.h"
#include "java/lang/ThreadLocal.h"
#include "java/lang/ref/SoftReference.h"

J2OBJC_INITIALIZED_DEFN(ComFasterxmlJacksonCoreUtilBufferRecyclers)

JavaLangThreadLocal *ComFasterxmlJacksonCoreUtilBufferRecyclers__recyclerRef;
JavaLangThreadLocal *ComFasterxmlJacksonCoreUtilBufferRecyclers__encoderRef;

@implementation ComFasterxmlJacksonCoreUtilBufferRecyclers

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  ComFasterxmlJacksonCoreUtilBufferRecyclers_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (ComFasterxmlJacksonCoreUtilBufferRecycler *)getBufferRecycler {
  return ComFasterxmlJacksonCoreUtilBufferRecyclers_getBufferRecycler();
}

+ (ComFasterxmlJacksonCoreIoJsonStringEncoder *)getJsonStringEncoder {
  return ComFasterxmlJacksonCoreUtilBufferRecyclers_getJsonStringEncoder();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreUtilBufferRecycler;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreIoJsonStringEncoder;", 0x9, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getBufferRecycler);
  methods[2].selector = @selector(getJsonStringEncoder);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_recyclerRef", "LJavaLangThreadLocal;", .constantValue.asLong = 0, 0x1c, -1, 0, 1, -1 },
    { "_encoderRef", "LJavaLangThreadLocal;", .constantValue.asLong = 0, 0x1c, -1, 2, 3, -1 },
  };
  static const void *ptrTable[] = { &ComFasterxmlJacksonCoreUtilBufferRecyclers__recyclerRef, "Ljava/lang/ThreadLocal<Ljava/lang/ref/SoftReference<Lcom/fasterxml/jackson/core/util/BufferRecycler;>;>;", &ComFasterxmlJacksonCoreUtilBufferRecyclers__encoderRef, "Ljava/lang/ThreadLocal<Ljava/lang/ref/SoftReference<Lcom/fasterxml/jackson/core/io/JsonStringEncoder;>;>;" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreUtilBufferRecyclers = { "BufferRecyclers", "com.fasterxml.jackson.core.util", ptrTable, methods, fields, 7, 0x1, 3, 2, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreUtilBufferRecyclers;
}

+ (void)initialize {
  if (self == [ComFasterxmlJacksonCoreUtilBufferRecyclers class]) {
    JreStrongAssignAndConsume(&ComFasterxmlJacksonCoreUtilBufferRecyclers__recyclerRef, new_JavaLangThreadLocal_init());
    JreStrongAssignAndConsume(&ComFasterxmlJacksonCoreUtilBufferRecyclers__encoderRef, new_JavaLangThreadLocal_init());
    J2OBJC_SET_INITIALIZED(ComFasterxmlJacksonCoreUtilBufferRecyclers)
  }
}

@end

void ComFasterxmlJacksonCoreUtilBufferRecyclers_init(ComFasterxmlJacksonCoreUtilBufferRecyclers *self) {
  NSObject_init(self);
}

ComFasterxmlJacksonCoreUtilBufferRecyclers *new_ComFasterxmlJacksonCoreUtilBufferRecyclers_init() {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreUtilBufferRecyclers, init)
}

ComFasterxmlJacksonCoreUtilBufferRecyclers *create_ComFasterxmlJacksonCoreUtilBufferRecyclers_init() {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreUtilBufferRecyclers, init)
}

ComFasterxmlJacksonCoreUtilBufferRecycler *ComFasterxmlJacksonCoreUtilBufferRecyclers_getBufferRecycler() {
  ComFasterxmlJacksonCoreUtilBufferRecyclers_initialize();
  JavaLangRefSoftReference *ref = [((JavaLangThreadLocal *) nil_chk(ComFasterxmlJacksonCoreUtilBufferRecyclers__recyclerRef)) get];
  ComFasterxmlJacksonCoreUtilBufferRecycler *br = (ref == nil) ? nil : [((JavaLangRefSoftReference *) nil_chk(ref)) get];
  if (br == nil) {
    br = create_ComFasterxmlJacksonCoreUtilBufferRecycler_init();
    [ComFasterxmlJacksonCoreUtilBufferRecyclers__recyclerRef setWithId:create_JavaLangRefSoftReference_initWithId_(br)];
  }
  return br;
}

ComFasterxmlJacksonCoreIoJsonStringEncoder *ComFasterxmlJacksonCoreUtilBufferRecyclers_getJsonStringEncoder() {
  ComFasterxmlJacksonCoreUtilBufferRecyclers_initialize();
  JavaLangRefSoftReference *ref = [((JavaLangThreadLocal *) nil_chk(ComFasterxmlJacksonCoreUtilBufferRecyclers__encoderRef)) get];
  ComFasterxmlJacksonCoreIoJsonStringEncoder *enc = (ref == nil) ? nil : [((JavaLangRefSoftReference *) nil_chk(ref)) get];
  if (enc == nil) {
    enc = create_ComFasterxmlJacksonCoreIoJsonStringEncoder_init();
    [ComFasterxmlJacksonCoreUtilBufferRecyclers__encoderRef setWithId:create_JavaLangRefSoftReference_initWithId_(enc)];
  }
  return enc;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreUtilBufferRecyclers)
