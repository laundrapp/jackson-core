//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/sym/NameN.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/sym/Name.h"
#include "com/fasterxml/jackson/core/sym/NameN.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Arrays.h"

@interface ComFasterxmlJacksonCoreSymNameN () {
 @public
  jint q1_;
  jint q2_;
  jint q3_;
  jint q4_;
  jint qlen_;
  IOSIntArray *q_;
}

- (jboolean)_equals2WithIntArray:(IOSIntArray *)quads;

@end

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreSymNameN, q_, IOSIntArray *)

__attribute__((unused)) static jboolean ComFasterxmlJacksonCoreSymNameN__equals2WithIntArray_(ComFasterxmlJacksonCoreSymNameN *self, IOSIntArray *quads);

@implementation ComFasterxmlJacksonCoreSymNameN

- (instancetype __nonnull)initWithNSString:(NSString *)name
                                   withInt:(jint)hash_
                                   withInt:(jint)q1
                                   withInt:(jint)q2
                                   withInt:(jint)q3
                                   withInt:(jint)q4
                              withIntArray:(IOSIntArray *)quads
                                   withInt:(jint)quadLen {
  ComFasterxmlJacksonCoreSymNameN_initWithNSString_withInt_withInt_withInt_withInt_withInt_withIntArray_withInt_(self, name, hash_, q1, q2, q3, q4, quads, quadLen);
  return self;
}

+ (ComFasterxmlJacksonCoreSymNameN *)constructWithNSString:(NSString *)name
                                                   withInt:(jint)hash_
                                              withIntArray:(IOSIntArray *)q
                                                   withInt:(jint)qlen {
  return ComFasterxmlJacksonCoreSymNameN_constructWithNSString_withInt_withIntArray_withInt_(name, hash_, q, qlen);
}

- (jboolean)equalsWithInt:(jint)quad {
  return false;
}

- (jboolean)equalsWithInt:(jint)quad1
                  withInt:(jint)quad2 {
  return false;
}

- (jboolean)equalsWithInt:(jint)quad1
                  withInt:(jint)quad2
                  withInt:(jint)quad3 {
  return false;
}

- (jboolean)equalsWithIntArray:(IOSIntArray *)quads
                       withInt:(jint)len {
  if (len != qlen_) {
    return false;
  }
  if (IOSIntArray_Get(nil_chk(quads), 0) != q1_) return false;
  if (IOSIntArray_Get(quads, 1) != q2_) return false;
  if (IOSIntArray_Get(quads, 2) != q3_) return false;
  if (IOSIntArray_Get(quads, 3) != q4_) return false;
  switch (len) {
    default:
    return ComFasterxmlJacksonCoreSymNameN__equals2WithIntArray_(self, quads);
    case 8:
    if (IOSIntArray_Get(quads, 7) != IOSIntArray_Get(nil_chk(q_), 3)) return false;
    case 7:
    if (IOSIntArray_Get(quads, 6) != IOSIntArray_Get(nil_chk(q_), 2)) return false;
    case 6:
    if (IOSIntArray_Get(quads, 5) != IOSIntArray_Get(nil_chk(q_), 1)) return false;
    case 5:
    if (IOSIntArray_Get(quads, 4) != IOSIntArray_Get(nil_chk(q_), 0)) return false;
    case 4:
    ;
  }
  return true;
}

- (jboolean)_equals2WithIntArray:(IOSIntArray *)quads {
  return ComFasterxmlJacksonCoreSymNameN__equals2WithIntArray_(self, quads);
}

- (void)dealloc {
  RELEASE_(q_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreSymNameN;", 0x9, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0x12, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withInt:withInt:withInt:withInt:withInt:withIntArray:withInt:);
  methods[1].selector = @selector(constructWithNSString:withInt:withIntArray:withInt:);
  methods[2].selector = @selector(equalsWithInt:);
  methods[3].selector = @selector(equalsWithInt:withInt:);
  methods[4].selector = @selector(equalsWithInt:withInt:withInt:);
  methods[5].selector = @selector(equalsWithIntArray:withInt:);
  methods[6].selector = @selector(_equals2WithIntArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "q1_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "q2_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "q3_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "q4_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "qlen_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "q_", "[I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;IIIII[II", "construct", "LNSString;I[II", "equals", "I", "II", "III", "[II", "_equals2", "[I" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreSymNameN = { "NameN", "com.fasterxml.jackson.core.sym", ptrTable, methods, fields, 7, 0x11, 7, 6, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreSymNameN;
}

@end

void ComFasterxmlJacksonCoreSymNameN_initWithNSString_withInt_withInt_withInt_withInt_withInt_withIntArray_withInt_(ComFasterxmlJacksonCoreSymNameN *self, NSString *name, jint hash_, jint q1, jint q2, jint q3, jint q4, IOSIntArray *quads, jint quadLen) {
  ComFasterxmlJacksonCoreSymName_initWithNSString_withInt_(self, name, hash_);
  self->q1_ = q1;
  self->q2_ = q2;
  self->q3_ = q3;
  self->q4_ = q4;
  JreStrongAssign(&self->q_, quads);
  self->qlen_ = quadLen;
}

ComFasterxmlJacksonCoreSymNameN *new_ComFasterxmlJacksonCoreSymNameN_initWithNSString_withInt_withInt_withInt_withInt_withInt_withIntArray_withInt_(NSString *name, jint hash_, jint q1, jint q2, jint q3, jint q4, IOSIntArray *quads, jint quadLen) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreSymNameN, initWithNSString_withInt_withInt_withInt_withInt_withInt_withIntArray_withInt_, name, hash_, q1, q2, q3, q4, quads, quadLen)
}

ComFasterxmlJacksonCoreSymNameN *create_ComFasterxmlJacksonCoreSymNameN_initWithNSString_withInt_withInt_withInt_withInt_withInt_withIntArray_withInt_(NSString *name, jint hash_, jint q1, jint q2, jint q3, jint q4, IOSIntArray *quads, jint quadLen) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreSymNameN, initWithNSString_withInt_withInt_withInt_withInt_withInt_withIntArray_withInt_, name, hash_, q1, q2, q3, q4, quads, quadLen)
}

ComFasterxmlJacksonCoreSymNameN *ComFasterxmlJacksonCoreSymNameN_constructWithNSString_withInt_withIntArray_withInt_(NSString *name, jint hash_, IOSIntArray *q, jint qlen) {
  ComFasterxmlJacksonCoreSymNameN_initialize();
  if (qlen < 4) {
    @throw create_JavaLangIllegalArgumentException_init();
  }
  jint q1 = IOSIntArray_Get(nil_chk(q), 0);
  jint q2 = IOSIntArray_Get(q, 1);
  jint q3 = IOSIntArray_Get(q, 2);
  jint q4 = IOSIntArray_Get(q, 3);
  jint rem = qlen - 4;
  IOSIntArray *buf;
  if (rem > 0) {
    buf = JavaUtilArrays_copyOfRangeWithIntArray_withInt_withInt_(q, 4, qlen);
  }
  else {
    buf = nil;
  }
  return create_ComFasterxmlJacksonCoreSymNameN_initWithNSString_withInt_withInt_withInt_withInt_withInt_withIntArray_withInt_(name, hash_, q1, q2, q3, q4, buf, qlen);
}

jboolean ComFasterxmlJacksonCoreSymNameN__equals2WithIntArray_(ComFasterxmlJacksonCoreSymNameN *self, IOSIntArray *quads) {
  jint end = self->qlen_ - 4;
  for (jint i = 0; i < end; ++i) {
    if (IOSIntArray_Get(nil_chk(quads), i + 4) != IOSIntArray_Get(nil_chk(self->q_), i)) {
      return false;
    }
  }
  return true;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreSymNameN)
