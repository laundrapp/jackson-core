//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/io/JsonEOFException.java
//

#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/JsonParseException.h"
#include "com/fasterxml/jackson/core/JsonParser.h"
#include "com/fasterxml/jackson/core/JsonToken.h"
#include "com/fasterxml/jackson/core/io/JsonEOFException.h"

inline jlong ComFasterxmlJacksonCoreIoJsonEOFException_get_serialVersionUID(void);
#define ComFasterxmlJacksonCoreIoJsonEOFException_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreIoJsonEOFException, serialVersionUID, jlong)

@implementation ComFasterxmlJacksonCoreIoJsonEOFException

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)p
                               withComFasterxmlJacksonCoreJsonToken:(ComFasterxmlJacksonCoreJsonToken *)token
                                                       withNSString:(NSString *)msg {
  ComFasterxmlJacksonCoreIoJsonEOFException_initWithComFasterxmlJacksonCoreJsonParser_withComFasterxmlJacksonCoreJsonToken_withNSString_(self, p, token, msg);
  return self;
}

- (ComFasterxmlJacksonCoreJsonToken *)getTokenBeingDecoded {
  return _token_;
}

- (void)dealloc {
  RELEASE_(_token_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonToken;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComFasterxmlJacksonCoreJsonParser:withComFasterxmlJacksonCoreJsonToken:withNSString:);
  methods[1].selector = @selector(getTokenBeingDecoded);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = ComFasterxmlJacksonCoreIoJsonEOFException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "_token_", "LComFasterxmlJacksonCoreJsonToken;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComFasterxmlJacksonCoreJsonParser;LComFasterxmlJacksonCoreJsonToken;LNSString;" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreIoJsonEOFException = { "JsonEOFException", "com.fasterxml.jackson.core.io", ptrTable, methods, fields, 7, 0x1, 2, 2, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreIoJsonEOFException;
}

@end

void ComFasterxmlJacksonCoreIoJsonEOFException_initWithComFasterxmlJacksonCoreJsonParser_withComFasterxmlJacksonCoreJsonToken_withNSString_(ComFasterxmlJacksonCoreIoJsonEOFException *self, ComFasterxmlJacksonCoreJsonParser *p, ComFasterxmlJacksonCoreJsonToken *token, NSString *msg) {
  ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_(self, p, msg);
  JreStrongAssign(&self->_token_, token);
}

ComFasterxmlJacksonCoreIoJsonEOFException *new_ComFasterxmlJacksonCoreIoJsonEOFException_initWithComFasterxmlJacksonCoreJsonParser_withComFasterxmlJacksonCoreJsonToken_withNSString_(ComFasterxmlJacksonCoreJsonParser *p, ComFasterxmlJacksonCoreJsonToken *token, NSString *msg) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreIoJsonEOFException, initWithComFasterxmlJacksonCoreJsonParser_withComFasterxmlJacksonCoreJsonToken_withNSString_, p, token, msg)
}

ComFasterxmlJacksonCoreIoJsonEOFException *create_ComFasterxmlJacksonCoreIoJsonEOFException_initWithComFasterxmlJacksonCoreJsonParser_withComFasterxmlJacksonCoreJsonToken_withNSString_(ComFasterxmlJacksonCoreJsonParser *p, ComFasterxmlJacksonCoreJsonToken *token, NSString *msg) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreIoJsonEOFException, initWithComFasterxmlJacksonCoreJsonParser_withComFasterxmlJacksonCoreJsonToken_withNSString_, p, token, msg)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreIoJsonEOFException)
