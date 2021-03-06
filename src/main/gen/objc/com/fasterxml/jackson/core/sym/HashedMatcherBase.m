//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/sym/HashedMatcherBase.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/sym/FieldNameMatcher.h"
#include "com/fasterxml/jackson/core/sym/HashedMatcherBase.h"

@interface ComFasterxmlJacksonCoreSymHashedMatcherBase ()

- (jint)_matchName2WithNSString:(NSString *)toMatch
                        withInt:(jint)ix
                        withInt:(jint)ix2;

@end

inline jlong ComFasterxmlJacksonCoreSymHashedMatcherBase_get_serialVersionUID(void);
#define ComFasterxmlJacksonCoreSymHashedMatcherBase_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreSymHashedMatcherBase, serialVersionUID, jlong)

__attribute__((unused)) static jint ComFasterxmlJacksonCoreSymHashedMatcherBase__matchName2WithNSString_withInt_withInt_(ComFasterxmlJacksonCoreSymHashedMatcherBase *self, NSString *toMatch, jint ix, jint ix2);

@implementation ComFasterxmlJacksonCoreSymHashedMatcherBase

- (instancetype __nonnull)initWithNSStringArray:(IOSObjectArray *)names
                                   withIntArray:(IOSIntArray *)offsets
                                        withInt:(jint)mask
 withComFasterxmlJacksonCoreSymFieldNameMatcher:(ComFasterxmlJacksonCoreSymFieldNameMatcher *)backup
                              withNSStringArray:(IOSObjectArray *)nameLookup {
  ComFasterxmlJacksonCoreSymHashedMatcherBase_initWithNSStringArray_withIntArray_withInt_withComFasterxmlJacksonCoreSymFieldNameMatcher_withNSStringArray_(self, names, offsets, mask, backup, nameLookup);
  return self;
}

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreSymHashedMatcherBase:(ComFasterxmlJacksonCoreSymHashedMatcherBase *)base
                                                            withNSStringArray:(IOSObjectArray *)nameLookup {
  ComFasterxmlJacksonCoreSymHashedMatcherBase_initWithComFasterxmlJacksonCoreSymHashedMatcherBase_withNSStringArray_(self, base, nameLookup);
  return self;
}

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreSymHashedMatcherBase:(ComFasterxmlJacksonCoreSymHashedMatcherBase *)base
                               withComFasterxmlJacksonCoreSymFieldNameMatcher:(ComFasterxmlJacksonCoreSymFieldNameMatcher *)fallback {
  ComFasterxmlJacksonCoreSymHashedMatcherBase_initWithComFasterxmlJacksonCoreSymHashedMatcherBase_withComFasterxmlJacksonCoreSymFieldNameMatcher_(self, base, fallback);
  return self;
}

- (jint)matchNameWithNSString:(NSString *)toMatch {
  jint ix = ComFasterxmlJacksonCoreSymFieldNameMatcher__hashWithInt_withInt_(((jint) [((NSString *) nil_chk(toMatch)) hash]), _mask_);
  if (IOSObjectArray_Get(nil_chk(_names_), ix) == toMatch) {
    return IOSIntArray_Get(nil_chk(_offsets_), ix);
  }
  jint ix2 = (_mask_ + 1) + (JreRShift32(ix, 1));
  if (IOSObjectArray_Get(_names_, ix2) == toMatch) {
    return IOSIntArray_Get(nil_chk(_offsets_), ix2);
  }
  return ComFasterxmlJacksonCoreSymHashedMatcherBase__matchName2WithNSString_withInt_withInt_(self, toMatch, ix, ix2);
}

- (jint)_matchName2WithNSString:(NSString *)toMatch
                        withInt:(jint)ix
                        withInt:(jint)ix2 {
  return ComFasterxmlJacksonCoreSymHashedMatcherBase__matchName2WithNSString_withInt_withInt_(self, toMatch, ix, ix2);
}

- (jint)_matchSpillWithNSString:(NSString *)toMatch {
  jint ix = (_mask_ + 1);
  ix += (JreRShift32(ix, 1));
  for (jint end = ((IOSObjectArray *) nil_chk(_names_))->size_; ix < end; ++ix) {
    NSString *name = IOSObjectArray_Get(_names_, ix);
    if ([((NSString *) nil_chk(toMatch)) isEqual:name]) {
      return IOSIntArray_Get(nil_chk(_offsets_), ix);
    }
    if (name == nil) {
      break;
    }
  }
  return [self matchSecondaryWithNSString:toMatch];
}

- (jint)spillCount {
  jint spillStart = (_mask_ + 1) + (JreRShift32((_mask_ + 1), 1));
  jint count = 0;
  for (jint i = spillStart; i < ((IOSObjectArray *) nil_chk(_names_))->size_; ++i) {
    if (IOSObjectArray_Get(_names_, i) != nil) {
      ++count;
    }
  }
  return count;
}

- (jint)secondaryCount {
  jint spillStart = (_mask_ + 1) + (JreRShift32((_mask_ + 1), 1));
  jint count = 0;
  for (jint i = _mask_ + 1; i < spillStart; ++i) {
    if (IOSObjectArray_Get(nil_chk(_names_), i) != nil) {
      ++count;
    }
  }
  return count;
}

- (void)dealloc {
  RELEASE_(_offsets_);
  RELEASE_(_names_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x11, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x12, 5, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 7, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSStringArray:withIntArray:withInt:withComFasterxmlJacksonCoreSymFieldNameMatcher:withNSStringArray:);
  methods[1].selector = @selector(initWithComFasterxmlJacksonCoreSymHashedMatcherBase:withNSStringArray:);
  methods[2].selector = @selector(initWithComFasterxmlJacksonCoreSymHashedMatcherBase:withComFasterxmlJacksonCoreSymFieldNameMatcher:);
  methods[3].selector = @selector(matchNameWithNSString:);
  methods[4].selector = @selector(_matchName2WithNSString:withInt:withInt:);
  methods[5].selector = @selector(_matchSpillWithNSString:);
  methods[6].selector = @selector(spillCount);
  methods[7].selector = @selector(secondaryCount);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = ComFasterxmlJacksonCoreSymHashedMatcherBase_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "_mask_", "I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_offsets_", "[I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_names_", "[LNSString;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[LNSString;[IILComFasterxmlJacksonCoreSymFieldNameMatcher;[LNSString;", "LComFasterxmlJacksonCoreSymHashedMatcherBase;[LNSString;", "LComFasterxmlJacksonCoreSymHashedMatcherBase;LComFasterxmlJacksonCoreSymFieldNameMatcher;", "matchName", "LNSString;", "_matchName2", "LNSString;II", "_matchSpill" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreSymHashedMatcherBase = { "HashedMatcherBase", "com.fasterxml.jackson.core.sym", ptrTable, methods, fields, 7, 0x401, 8, 4, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreSymHashedMatcherBase;
}

@end

void ComFasterxmlJacksonCoreSymHashedMatcherBase_initWithNSStringArray_withIntArray_withInt_withComFasterxmlJacksonCoreSymFieldNameMatcher_withNSStringArray_(ComFasterxmlJacksonCoreSymHashedMatcherBase *self, IOSObjectArray *names, IOSIntArray *offsets, jint mask, ComFasterxmlJacksonCoreSymFieldNameMatcher *backup, IOSObjectArray *nameLookup) {
  ComFasterxmlJacksonCoreSymFieldNameMatcher_initWithComFasterxmlJacksonCoreSymFieldNameMatcher_withNSStringArray_(self, backup, nameLookup);
  JreStrongAssign(&self->_names_, names);
  JreStrongAssign(&self->_offsets_, offsets);
  self->_mask_ = mask;
}

void ComFasterxmlJacksonCoreSymHashedMatcherBase_initWithComFasterxmlJacksonCoreSymHashedMatcherBase_withNSStringArray_(ComFasterxmlJacksonCoreSymHashedMatcherBase *self, ComFasterxmlJacksonCoreSymHashedMatcherBase *base, IOSObjectArray *nameLookup) {
  ComFasterxmlJacksonCoreSymHashedMatcherBase_initWithNSStringArray_withIntArray_withInt_withComFasterxmlJacksonCoreSymFieldNameMatcher_withNSStringArray_(self, ((ComFasterxmlJacksonCoreSymHashedMatcherBase *) nil_chk(base))->_names_, base->_offsets_, base->_mask_, base->_backupMatcher_, nameLookup);
}

void ComFasterxmlJacksonCoreSymHashedMatcherBase_initWithComFasterxmlJacksonCoreSymHashedMatcherBase_withComFasterxmlJacksonCoreSymFieldNameMatcher_(ComFasterxmlJacksonCoreSymHashedMatcherBase *self, ComFasterxmlJacksonCoreSymHashedMatcherBase *base, ComFasterxmlJacksonCoreSymFieldNameMatcher *fallback) {
  ComFasterxmlJacksonCoreSymHashedMatcherBase_initWithNSStringArray_withIntArray_withInt_withComFasterxmlJacksonCoreSymFieldNameMatcher_withNSStringArray_(self, ((ComFasterxmlJacksonCoreSymHashedMatcherBase *) nil_chk(base))->_names_, base->_offsets_, base->_mask_, fallback, base->_nameLookup_);
}

jint ComFasterxmlJacksonCoreSymHashedMatcherBase__matchName2WithNSString_withInt_withInt_(ComFasterxmlJacksonCoreSymHashedMatcherBase *self, NSString *toMatch, jint ix, jint ix2) {
  NSString *name = IOSObjectArray_Get(nil_chk(self->_names_), ix);
  if ([((NSString *) nil_chk(toMatch)) isEqual:name]) {
    return IOSIntArray_Get(nil_chk(self->_offsets_), ix);
  }
  if (name != nil) {
    name = IOSObjectArray_Get(self->_names_, ix2);
    if ([toMatch isEqual:name]) {
      return IOSIntArray_Get(nil_chk(self->_offsets_), ix2);
    }
    if (name != nil) {
      return [self _matchSpillWithNSString:toMatch];
    }
  }
  return [self matchSecondaryWithNSString:toMatch];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreSymHashedMatcherBase)
