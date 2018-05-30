//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/format/MatchStrength.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/format/MatchStrength.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

__attribute__((unused)) static void ComFasterxmlJacksonCoreFormatMatchStrength_initWithNSString_withInt_(ComFasterxmlJacksonCoreFormatMatchStrength *self, NSString *__name, jint __ordinal);

J2OBJC_INITIALIZED_DEFN(ComFasterxmlJacksonCoreFormatMatchStrength)

ComFasterxmlJacksonCoreFormatMatchStrength *ComFasterxmlJacksonCoreFormatMatchStrength_values_[5];

@implementation ComFasterxmlJacksonCoreFormatMatchStrength

+ (IOSObjectArray *)values {
  return ComFasterxmlJacksonCoreFormatMatchStrength_values();
}

+ (ComFasterxmlJacksonCoreFormatMatchStrength *)valueOfWithNSString:(NSString *)name {
  return ComFasterxmlJacksonCoreFormatMatchStrength_valueOfWithNSString_(name);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LComFasterxmlJacksonCoreFormatMatchStrength;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreFormatMatchStrength;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NO_MATCH", "LComFasterxmlJacksonCoreFormatMatchStrength;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "INCONCLUSIVE", "LComFasterxmlJacksonCoreFormatMatchStrength;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "WEAK_MATCH", "LComFasterxmlJacksonCoreFormatMatchStrength;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "SOLID_MATCH", "LComFasterxmlJacksonCoreFormatMatchStrength;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "FULL_MATCH", "LComFasterxmlJacksonCoreFormatMatchStrength;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ComFasterxmlJacksonCoreFormatMatchStrength, NO_MATCH), &JreEnum(ComFasterxmlJacksonCoreFormatMatchStrength, INCONCLUSIVE), &JreEnum(ComFasterxmlJacksonCoreFormatMatchStrength, WEAK_MATCH), &JreEnum(ComFasterxmlJacksonCoreFormatMatchStrength, SOLID_MATCH), &JreEnum(ComFasterxmlJacksonCoreFormatMatchStrength, FULL_MATCH), "Ljava/lang/Enum<Lcom/fasterxml/jackson/core/format/MatchStrength;>;" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreFormatMatchStrength = { "MatchStrength", "com.fasterxml.jackson.core.format", ptrTable, methods, fields, 7, 0x4011, 2, 5, -1, -1, -1, 7, -1 };
  return &_ComFasterxmlJacksonCoreFormatMatchStrength;
}

+ (void)initialize {
  if (self == [ComFasterxmlJacksonCoreFormatMatchStrength class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 5 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    for (jint i = 0; i < 5; i++) {
      ((void)(ComFasterxmlJacksonCoreFormatMatchStrength_values_[i] = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
      ComFasterxmlJacksonCoreFormatMatchStrength_initWithNSString_withInt_(e, JreEnumConstantName(ComFasterxmlJacksonCoreFormatMatchStrength_class_(), i), i);
    }
    J2OBJC_SET_INITIALIZED(ComFasterxmlJacksonCoreFormatMatchStrength)
  }
}

@end

void ComFasterxmlJacksonCoreFormatMatchStrength_initWithNSString_withInt_(ComFasterxmlJacksonCoreFormatMatchStrength *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *ComFasterxmlJacksonCoreFormatMatchStrength_values() {
  ComFasterxmlJacksonCoreFormatMatchStrength_initialize();
  return [IOSObjectArray arrayWithObjects:ComFasterxmlJacksonCoreFormatMatchStrength_values_ count:5 type:ComFasterxmlJacksonCoreFormatMatchStrength_class_()];
}

ComFasterxmlJacksonCoreFormatMatchStrength *ComFasterxmlJacksonCoreFormatMatchStrength_valueOfWithNSString_(NSString *name) {
  ComFasterxmlJacksonCoreFormatMatchStrength_initialize();
  for (int i = 0; i < 5; i++) {
    ComFasterxmlJacksonCoreFormatMatchStrength *e = ComFasterxmlJacksonCoreFormatMatchStrength_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ComFasterxmlJacksonCoreFormatMatchStrength *ComFasterxmlJacksonCoreFormatMatchStrength_fromOrdinal(NSUInteger ordinal) {
  ComFasterxmlJacksonCoreFormatMatchStrength_initialize();
  if (ordinal >= 5) {
    return nil;
  }
  return ComFasterxmlJacksonCoreFormatMatchStrength_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreFormatMatchStrength)
