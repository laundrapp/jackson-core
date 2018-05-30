//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/JsonStreamContext.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/JsonLocation.h"
#include "com/fasterxml/jackson/core/JsonPointer.h"
#include "com/fasterxml/jackson/core/JsonStreamContext.h"
#include "com/fasterxml/jackson/core/io/CharTypes.h"
#include "java/lang/Deprecated.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/annotation/Annotation.h"

__attribute__((unused)) static jint ComFasterxmlJacksonCoreJsonStreamContext_getCurrentIndex(ComFasterxmlJacksonCoreJsonStreamContext *self);

__attribute__((unused)) static IOSObjectArray *ComFasterxmlJacksonCoreJsonStreamContext__Annotations$0(void);

@implementation ComFasterxmlJacksonCoreJsonStreamContext

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  ComFasterxmlJacksonCoreJsonStreamContext_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreJsonStreamContext:(ComFasterxmlJacksonCoreJsonStreamContext *)base {
  ComFasterxmlJacksonCoreJsonStreamContext_initWithComFasterxmlJacksonCoreJsonStreamContext_(self, base);
  return self;
}

- (instancetype __nonnull)initWithInt:(jint)type
                              withInt:(jint)index {
  ComFasterxmlJacksonCoreJsonStreamContext_initWithInt_withInt_(self, type, index);
  return self;
}

- (ComFasterxmlJacksonCoreJsonStreamContext *)getParent {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)inArray {
  return _type_ == ComFasterxmlJacksonCoreJsonStreamContext_TYPE_ARRAY;
}

- (jboolean)inRoot {
  return _type_ == ComFasterxmlJacksonCoreJsonStreamContext_TYPE_ROOT;
}

- (jboolean)inObject {
  return _type_ == ComFasterxmlJacksonCoreJsonStreamContext_TYPE_OBJECT;
}

- (NSString *)getTypeDesc {
  switch (_type_) {
    case ComFasterxmlJacksonCoreJsonStreamContext_TYPE_ROOT:
    return @"ROOT";
    case ComFasterxmlJacksonCoreJsonStreamContext_TYPE_ARRAY:
    return @"ARRAY";
    case ComFasterxmlJacksonCoreJsonStreamContext_TYPE_OBJECT:
    return @"OBJECT";
  }
  return @"?";
}

- (NSString *)typeDesc {
  switch (_type_) {
    case ComFasterxmlJacksonCoreJsonStreamContext_TYPE_ROOT:
    return @"root";
    case ComFasterxmlJacksonCoreJsonStreamContext_TYPE_ARRAY:
    return @"Array";
    case ComFasterxmlJacksonCoreJsonStreamContext_TYPE_OBJECT:
    return @"Object";
  }
  return @"?";
}

- (jint)getEntryCount {
  return _index_ + 1;
}

- (jint)getCurrentIndex {
  return ComFasterxmlJacksonCoreJsonStreamContext_getCurrentIndex(self);
}

- (jboolean)hasCurrentIndex {
  return _index_ >= 0;
}

- (jboolean)hasPathSegment {
  if (_type_ == ComFasterxmlJacksonCoreJsonStreamContext_TYPE_OBJECT) {
    return [self hasCurrentName];
  }
  else if (_type_ == ComFasterxmlJacksonCoreJsonStreamContext_TYPE_ARRAY) {
    return [self hasCurrentIndex];
  }
  return false;
}

- (NSString *)getCurrentName {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)hasCurrentName {
  return [self getCurrentName] != nil;
}

- (id)getCurrentValue {
  return nil;
}

- (void)setCurrentValueWithId:(id)v {
}

- (ComFasterxmlJacksonCoreJsonPointer *)pathAsPointer {
  return ComFasterxmlJacksonCoreJsonPointer_forPathWithComFasterxmlJacksonCoreJsonStreamContext_withBoolean_(self, false);
}

- (ComFasterxmlJacksonCoreJsonPointer *)pathAsPointerWithBoolean:(jboolean)includeRoot {
  return ComFasterxmlJacksonCoreJsonPointer_forPathWithComFasterxmlJacksonCoreJsonStreamContext_withBoolean_(self, includeRoot);
}

- (ComFasterxmlJacksonCoreJsonLocation *)getStartLocationWithId:(id)srcRef {
  return JreLoadStatic(ComFasterxmlJacksonCoreJsonLocation, NA);
}

- (NSString *)description {
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_initWithInt_(64);
  {
    NSString *currentName;
    switch (_type_) {
      case ComFasterxmlJacksonCoreJsonStreamContext_TYPE_ROOT:
      [sb appendWithNSString:@"/"];
      break;
      case ComFasterxmlJacksonCoreJsonStreamContext_TYPE_ARRAY:
      [sb appendWithChar:'['];
      [sb appendWithInt:ComFasterxmlJacksonCoreJsonStreamContext_getCurrentIndex(self)];
      [sb appendWithChar:']'];
      break;
      case ComFasterxmlJacksonCoreJsonStreamContext_TYPE_OBJECT:
      default:
      [sb appendWithChar:'{'];
      currentName = [self getCurrentName];
      if (currentName != nil) {
        [sb appendWithChar:'"'];
        ComFasterxmlJacksonCoreIoCharTypes_appendQuotedWithJavaLangStringBuilder_withNSString_(sb, currentName);
        [sb appendWithChar:'"'];
      }
      else {
        [sb appendWithChar:'?'];
      }
      [sb appendWithChar:'}'];
      break;
    }
  }
  return [sb description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonStreamContext;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x11, -1, -1, -1, -1, 2, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonPointer;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonPointer;", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonLocation;", 0x1, 7, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 8, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithComFasterxmlJacksonCoreJsonStreamContext:);
  methods[2].selector = @selector(initWithInt:withInt:);
  methods[3].selector = @selector(getParent);
  methods[4].selector = @selector(inArray);
  methods[5].selector = @selector(inRoot);
  methods[6].selector = @selector(inObject);
  methods[7].selector = @selector(getTypeDesc);
  methods[8].selector = @selector(typeDesc);
  methods[9].selector = @selector(getEntryCount);
  methods[10].selector = @selector(getCurrentIndex);
  methods[11].selector = @selector(hasCurrentIndex);
  methods[12].selector = @selector(hasPathSegment);
  methods[13].selector = @selector(getCurrentName);
  methods[14].selector = @selector(hasCurrentName);
  methods[15].selector = @selector(getCurrentValue);
  methods[16].selector = @selector(setCurrentValueWithId:);
  methods[17].selector = @selector(pathAsPointer);
  methods[18].selector = @selector(pathAsPointerWithBoolean:);
  methods[19].selector = @selector(getStartLocationWithId:);
  methods[20].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TYPE_ROOT", "I", .constantValue.asInt = ComFasterxmlJacksonCoreJsonStreamContext_TYPE_ROOT, 0x1c, -1, -1, -1, -1 },
    { "TYPE_ARRAY", "I", .constantValue.asInt = ComFasterxmlJacksonCoreJsonStreamContext_TYPE_ARRAY, 0x1c, -1, -1, -1, -1 },
    { "TYPE_OBJECT", "I", .constantValue.asInt = ComFasterxmlJacksonCoreJsonStreamContext_TYPE_OBJECT, 0x1c, -1, -1, -1, -1 },
    { "_type_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_index_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComFasterxmlJacksonCoreJsonStreamContext;", "II", (void *)&ComFasterxmlJacksonCoreJsonStreamContext__Annotations$0, "setCurrentValue", "LNSObject;", "pathAsPointer", "Z", "getStartLocation", "toString" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreJsonStreamContext = { "JsonStreamContext", "com.fasterxml.jackson.core", ptrTable, methods, fields, 7, 0x401, 21, 5, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreJsonStreamContext;
}

@end

void ComFasterxmlJacksonCoreJsonStreamContext_init(ComFasterxmlJacksonCoreJsonStreamContext *self) {
  NSObject_init(self);
}

void ComFasterxmlJacksonCoreJsonStreamContext_initWithComFasterxmlJacksonCoreJsonStreamContext_(ComFasterxmlJacksonCoreJsonStreamContext *self, ComFasterxmlJacksonCoreJsonStreamContext *base) {
  NSObject_init(self);
  self->_type_ = ((ComFasterxmlJacksonCoreJsonStreamContext *) nil_chk(base))->_type_;
  self->_index_ = base->_index_;
}

void ComFasterxmlJacksonCoreJsonStreamContext_initWithInt_withInt_(ComFasterxmlJacksonCoreJsonStreamContext *self, jint type, jint index) {
  NSObject_init(self);
  self->_type_ = type;
  self->_index_ = index;
}

jint ComFasterxmlJacksonCoreJsonStreamContext_getCurrentIndex(ComFasterxmlJacksonCoreJsonStreamContext *self) {
  return (self->_index_ < 0) ? 0 : self->_index_;
}

IOSObjectArray *ComFasterxmlJacksonCoreJsonStreamContext__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreJsonStreamContext)
