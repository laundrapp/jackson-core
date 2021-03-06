//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/JsonParseException.java
//

#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/JsonLocation.h"
#include "com/fasterxml/jackson/core/JsonParseException.h"
#include "com/fasterxml/jackson/core/JsonParser.h"
#include "com/fasterxml/jackson/core/JsonProcessingException.h"
#include "com/fasterxml/jackson/core/util/RequestPayload.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/Throwable.h"

inline jlong ComFasterxmlJacksonCoreJsonParseException_get_serialVersionUID(void);
#define ComFasterxmlJacksonCoreJsonParseException_serialVersionUID 3LL
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonParseException, serialVersionUID, jlong)

@implementation ComFasterxmlJacksonCoreJsonParseException

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)p
                                                       withNSString:(NSString *)msg {
  ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_(self, p, msg);
  return self;
}

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)p
                                                       withNSString:(NSString *)msg
                                              withJavaLangThrowable:(JavaLangThrowable *)root {
  ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_withJavaLangThrowable_(self, p, msg, root);
  return self;
}

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)p
                                                       withNSString:(NSString *)msg
                            withComFasterxmlJacksonCoreJsonLocation:(ComFasterxmlJacksonCoreJsonLocation *)loc {
  ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_withComFasterxmlJacksonCoreJsonLocation_(self, p, msg, loc);
  return self;
}

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)p
                                                       withNSString:(NSString *)msg
                            withComFasterxmlJacksonCoreJsonLocation:(ComFasterxmlJacksonCoreJsonLocation *)loc
                                              withJavaLangThrowable:(JavaLangThrowable *)root {
  ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_(self, p, msg, loc, root);
  return self;
}

- (ComFasterxmlJacksonCoreJsonParseException *)withParserWithComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)p {
  JreStrongAssign(&_processor_, p);
  return self;
}

- (ComFasterxmlJacksonCoreJsonParseException *)withRequestPayloadWithComFasterxmlJacksonCoreUtilRequestPayload:(ComFasterxmlJacksonCoreUtilRequestPayload *)p {
  JreStrongAssign(&_requestPayload_, p);
  return self;
}

- (ComFasterxmlJacksonCoreJsonParser *)getProcessor {
  return _processor_;
}

- (ComFasterxmlJacksonCoreUtilRequestPayload *)getRequestPayload {
  return _requestPayload_;
}

- (NSString *)getRequestPayloadAsString {
  return (_requestPayload_ != nil) ? [((ComFasterxmlJacksonCoreUtilRequestPayload *) nil_chk(_requestPayload_)) description] : nil;
}

- (NSString *)getMessage {
  NSString *msg = [super getMessage];
  if (_requestPayload_ != nil) {
    msg = [((JavaLangStringBuilder *) nil_chk([create_JavaLangStringBuilder_initWithNSString_(@"\nRequest payload: ") appendWithNSString:[((ComFasterxmlJacksonCoreUtilRequestPayload *) nil_chk(_requestPayload_)) description]])) description];
  }
  return msg;
}

- (void)dealloc {
  RELEASE_(_processor_);
  RELEASE_(_requestPayload_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParseException;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParseException;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreUtilRequestPayload;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComFasterxmlJacksonCoreJsonParser:withNSString:);
  methods[1].selector = @selector(initWithComFasterxmlJacksonCoreJsonParser:withNSString:withJavaLangThrowable:);
  methods[2].selector = @selector(initWithComFasterxmlJacksonCoreJsonParser:withNSString:withComFasterxmlJacksonCoreJsonLocation:);
  methods[3].selector = @selector(initWithComFasterxmlJacksonCoreJsonParser:withNSString:withComFasterxmlJacksonCoreJsonLocation:withJavaLangThrowable:);
  methods[4].selector = @selector(withParserWithComFasterxmlJacksonCoreJsonParser:);
  methods[5].selector = @selector(withRequestPayloadWithComFasterxmlJacksonCoreUtilRequestPayload:);
  methods[6].selector = @selector(getProcessor);
  methods[7].selector = @selector(getRequestPayload);
  methods[8].selector = @selector(getRequestPayloadAsString);
  methods[9].selector = @selector(getMessage);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = ComFasterxmlJacksonCoreJsonParseException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "_processor_", "LComFasterxmlJacksonCoreJsonParser;", .constantValue.asLong = 0, 0x84, -1, -1, -1, -1 },
    { "_requestPayload_", "LComFasterxmlJacksonCoreUtilRequestPayload;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComFasterxmlJacksonCoreJsonParser;LNSString;", "LComFasterxmlJacksonCoreJsonParser;LNSString;LJavaLangThrowable;", "LComFasterxmlJacksonCoreJsonParser;LNSString;LComFasterxmlJacksonCoreJsonLocation;", "LComFasterxmlJacksonCoreJsonParser;LNSString;LComFasterxmlJacksonCoreJsonLocation;LJavaLangThrowable;", "withParser", "LComFasterxmlJacksonCoreJsonParser;", "withRequestPayload", "LComFasterxmlJacksonCoreUtilRequestPayload;" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreJsonParseException = { "JsonParseException", "com.fasterxml.jackson.core", ptrTable, methods, fields, 7, 0x1, 10, 3, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreJsonParseException;
}

@end

void ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_(ComFasterxmlJacksonCoreJsonParseException *self, ComFasterxmlJacksonCoreJsonParser *p, NSString *msg) {
  ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_(self, msg, (p == nil) ? nil : [((ComFasterxmlJacksonCoreJsonParser *) nil_chk(p)) getCurrentLocation]);
  JreStrongAssign(&self->_processor_, p);
}

ComFasterxmlJacksonCoreJsonParseException *new_ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_(ComFasterxmlJacksonCoreJsonParser *p, NSString *msg) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreJsonParseException, initWithComFasterxmlJacksonCoreJsonParser_withNSString_, p, msg)
}

ComFasterxmlJacksonCoreJsonParseException *create_ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_(ComFasterxmlJacksonCoreJsonParser *p, NSString *msg) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreJsonParseException, initWithComFasterxmlJacksonCoreJsonParser_withNSString_, p, msg)
}

void ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_withJavaLangThrowable_(ComFasterxmlJacksonCoreJsonParseException *self, ComFasterxmlJacksonCoreJsonParser *p, NSString *msg, JavaLangThrowable *root) {
  ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_(self, msg, (p == nil) ? nil : [((ComFasterxmlJacksonCoreJsonParser *) nil_chk(p)) getCurrentLocation], root);
  JreStrongAssign(&self->_processor_, p);
}

ComFasterxmlJacksonCoreJsonParseException *new_ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_withJavaLangThrowable_(ComFasterxmlJacksonCoreJsonParser *p, NSString *msg, JavaLangThrowable *root) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreJsonParseException, initWithComFasterxmlJacksonCoreJsonParser_withNSString_withJavaLangThrowable_, p, msg, root)
}

ComFasterxmlJacksonCoreJsonParseException *create_ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_withJavaLangThrowable_(ComFasterxmlJacksonCoreJsonParser *p, NSString *msg, JavaLangThrowable *root) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreJsonParseException, initWithComFasterxmlJacksonCoreJsonParser_withNSString_withJavaLangThrowable_, p, msg, root)
}

void ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_withComFasterxmlJacksonCoreJsonLocation_(ComFasterxmlJacksonCoreJsonParseException *self, ComFasterxmlJacksonCoreJsonParser *p, NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc) {
  ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_(self, msg, loc);
  JreStrongAssign(&self->_processor_, p);
}

ComFasterxmlJacksonCoreJsonParseException *new_ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_withComFasterxmlJacksonCoreJsonLocation_(ComFasterxmlJacksonCoreJsonParser *p, NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreJsonParseException, initWithComFasterxmlJacksonCoreJsonParser_withNSString_withComFasterxmlJacksonCoreJsonLocation_, p, msg, loc)
}

ComFasterxmlJacksonCoreJsonParseException *create_ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_withComFasterxmlJacksonCoreJsonLocation_(ComFasterxmlJacksonCoreJsonParser *p, NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreJsonParseException, initWithComFasterxmlJacksonCoreJsonParser_withNSString_withComFasterxmlJacksonCoreJsonLocation_, p, msg, loc)
}

void ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_(ComFasterxmlJacksonCoreJsonParseException *self, ComFasterxmlJacksonCoreJsonParser *p, NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc, JavaLangThrowable *root) {
  ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_(self, msg, loc, root);
  JreStrongAssign(&self->_processor_, p);
}

ComFasterxmlJacksonCoreJsonParseException *new_ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_(ComFasterxmlJacksonCoreJsonParser *p, NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc, JavaLangThrowable *root) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreJsonParseException, initWithComFasterxmlJacksonCoreJsonParser_withNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_, p, msg, loc, root)
}

ComFasterxmlJacksonCoreJsonParseException *create_ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_(ComFasterxmlJacksonCoreJsonParser *p, NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc, JavaLangThrowable *root) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreJsonParseException, initWithComFasterxmlJacksonCoreJsonParser_withNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_, p, msg, loc, root)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreJsonParseException)
