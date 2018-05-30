//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/JsonProcessingException.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/JsonLocation.h"
#include "com/fasterxml/jackson/core/JsonProcessingException.h"
#include "java/io/IOException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/Throwable.h"

@implementation ComFasterxmlJacksonCoreJsonProcessingException

- (instancetype __nonnull)initWithNSString:(NSString *)msg
   withComFasterxmlJacksonCoreJsonLocation:(ComFasterxmlJacksonCoreJsonLocation *)loc
                     withJavaLangThrowable:(JavaLangThrowable *)rootCause {
  ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_(self, msg, loc, rootCause);
  return self;
}

- (instancetype __nonnull)initWithNSString:(NSString *)msg {
  ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_(self, msg);
  return self;
}

- (instancetype __nonnull)initWithNSString:(NSString *)msg
   withComFasterxmlJacksonCoreJsonLocation:(ComFasterxmlJacksonCoreJsonLocation *)loc {
  ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_(self, msg, loc);
  return self;
}

- (instancetype __nonnull)initWithNSString:(NSString *)msg
                     withJavaLangThrowable:(JavaLangThrowable *)rootCause {
  ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withJavaLangThrowable_(self, msg, rootCause);
  return self;
}

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)rootCause {
  ComFasterxmlJacksonCoreJsonProcessingException_initWithJavaLangThrowable_(self, rootCause);
  return self;
}

- (ComFasterxmlJacksonCoreJsonLocation *)getLocation {
  return _location_;
}

- (void)clearLocation {
  JreStrongAssign(&_location_, nil);
}

- (NSString *)getOriginalMessage {
  return [super getMessage];
}

- (id)getProcessor {
  return nil;
}

- (NSString *)getMessageSuffix {
  return nil;
}

- (NSString *)getMessage {
  NSString *msg = [super getMessage];
  if (msg == nil) {
    msg = @"N/A";
  }
  ComFasterxmlJacksonCoreJsonLocation *loc = [self getLocation];
  NSString *suffix = [self getMessageSuffix];
  if (loc != nil || suffix != nil) {
    JavaLangStringBuilder *sb = create_JavaLangStringBuilder_initWithInt_(100);
    [sb appendWithNSString:msg];
    if (suffix != nil) {
      [sb appendWithNSString:suffix];
    }
    if (loc != nil) {
      [sb appendWithChar:0x000a];
      [sb appendWithNSString:@" at "];
      [sb appendWithNSString:[loc description]];
    }
    msg = [sb description];
  }
  return msg;
}

- (NSString *)description {
  return JreStrcat("$$$", [[self java_getClass] getName], @": ", [self getMessage]);
}

- (void)dealloc {
  RELEASE_(_location_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 4, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonLocation;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withComFasterxmlJacksonCoreJsonLocation:withJavaLangThrowable:);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(initWithNSString:withComFasterxmlJacksonCoreJsonLocation:);
  methods[3].selector = @selector(initWithNSString:withJavaLangThrowable:);
  methods[4].selector = @selector(initWithJavaLangThrowable:);
  methods[5].selector = @selector(getLocation);
  methods[6].selector = @selector(clearLocation);
  methods[7].selector = @selector(getOriginalMessage);
  methods[8].selector = @selector(getProcessor);
  methods[9].selector = @selector(getMessageSuffix);
  methods[10].selector = @selector(getMessage);
  methods[11].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = ComFasterxmlJacksonCoreJsonProcessingException_serialVersionUID, 0x18, -1, -1, -1, -1 },
    { "_location_", "LComFasterxmlJacksonCoreJsonLocation;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LComFasterxmlJacksonCoreJsonLocation;LJavaLangThrowable;", "LNSString;", "LNSString;LComFasterxmlJacksonCoreJsonLocation;", "LNSString;LJavaLangThrowable;", "LJavaLangThrowable;", "toString" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreJsonProcessingException = { "JsonProcessingException", "com.fasterxml.jackson.core", ptrTable, methods, fields, 7, 0x1, 12, 2, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreJsonProcessingException;
}

@end

void ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_(ComFasterxmlJacksonCoreJsonProcessingException *self, NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc, JavaLangThrowable *rootCause) {
  JavaIoIOException_initWithNSString_(self, msg);
  if (rootCause != nil) {
    [self initCauseWithJavaLangThrowable:rootCause];
  }
  JreStrongAssign(&self->_location_, loc);
}

ComFasterxmlJacksonCoreJsonProcessingException *new_ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_(NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc, JavaLangThrowable *rootCause) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreJsonProcessingException, initWithNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_, msg, loc, rootCause)
}

ComFasterxmlJacksonCoreJsonProcessingException *create_ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_(NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc, JavaLangThrowable *rootCause) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreJsonProcessingException, initWithNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_, msg, loc, rootCause)
}

void ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_(ComFasterxmlJacksonCoreJsonProcessingException *self, NSString *msg) {
  JavaIoIOException_initWithNSString_(self, msg);
}

ComFasterxmlJacksonCoreJsonProcessingException *new_ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_(NSString *msg) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreJsonProcessingException, initWithNSString_, msg)
}

ComFasterxmlJacksonCoreJsonProcessingException *create_ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_(NSString *msg) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreJsonProcessingException, initWithNSString_, msg)
}

void ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_(ComFasterxmlJacksonCoreJsonProcessingException *self, NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc) {
  ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_(self, msg, loc, nil);
}

ComFasterxmlJacksonCoreJsonProcessingException *new_ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_(NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreJsonProcessingException, initWithNSString_withComFasterxmlJacksonCoreJsonLocation_, msg, loc)
}

ComFasterxmlJacksonCoreJsonProcessingException *create_ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_(NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreJsonProcessingException, initWithNSString_withComFasterxmlJacksonCoreJsonLocation_, msg, loc)
}

void ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withJavaLangThrowable_(ComFasterxmlJacksonCoreJsonProcessingException *self, NSString *msg, JavaLangThrowable *rootCause) {
  ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_(self, msg, nil, rootCause);
}

ComFasterxmlJacksonCoreJsonProcessingException *new_ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *rootCause) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreJsonProcessingException, initWithNSString_withJavaLangThrowable_, msg, rootCause)
}

ComFasterxmlJacksonCoreJsonProcessingException *create_ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *rootCause) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreJsonProcessingException, initWithNSString_withJavaLangThrowable_, msg, rootCause)
}

void ComFasterxmlJacksonCoreJsonProcessingException_initWithJavaLangThrowable_(ComFasterxmlJacksonCoreJsonProcessingException *self, JavaLangThrowable *rootCause) {
  ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_(self, nil, nil, rootCause);
}

ComFasterxmlJacksonCoreJsonProcessingException *new_ComFasterxmlJacksonCoreJsonProcessingException_initWithJavaLangThrowable_(JavaLangThrowable *rootCause) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreJsonProcessingException, initWithJavaLangThrowable_, rootCause)
}

ComFasterxmlJacksonCoreJsonProcessingException *create_ComFasterxmlJacksonCoreJsonProcessingException_initWithJavaLangThrowable_(JavaLangThrowable *rootCause) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreJsonProcessingException, initWithJavaLangThrowable_, rootCause)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreJsonProcessingException)