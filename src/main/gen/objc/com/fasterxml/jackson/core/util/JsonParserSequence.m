//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/util/JsonParserSequence.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/JsonParser.h"
#include "com/fasterxml/jackson/core/JsonToken.h"
#include "com/fasterxml/jackson/core/SerializableString.h"
#include "com/fasterxml/jackson/core/sym/FieldNameMatcher.h"
#include "com/fasterxml/jackson/core/util/JsonParserDelegate.h"
#include "com/fasterxml/jackson/core/util/JsonParserSequence.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@implementation ComFasterxmlJacksonCoreUtilJsonParserSequence

- (instancetype __nonnull)initWithBoolean:(jboolean)checkForExistingToken
withComFasterxmlJacksonCoreJsonParserArray:(IOSObjectArray *)parsers {
  ComFasterxmlJacksonCoreUtilJsonParserSequence_initWithBoolean_withComFasterxmlJacksonCoreJsonParserArray_(self, checkForExistingToken, parsers);
  return self;
}

+ (ComFasterxmlJacksonCoreUtilJsonParserSequence *)createFlattenedWithBoolean:(jboolean)checkForExistingToken
                                        withComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)first
                                        withComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)second {
  return ComFasterxmlJacksonCoreUtilJsonParserSequence_createFlattenedWithBoolean_withComFasterxmlJacksonCoreJsonParser_withComFasterxmlJacksonCoreJsonParser_(checkForExistingToken, first, second);
}

- (void)addFlattenedActiveParsersWithJavaUtilList:(id<JavaUtilList>)listToAddIn {
  for (jint i = _nextParserIndex_ - 1, len = ((IOSObjectArray *) nil_chk(_parsers_))->size_; i < len; ++i) {
    ComFasterxmlJacksonCoreJsonParser *p = IOSObjectArray_Get(_parsers_, i);
    if ([p isKindOfClass:[ComFasterxmlJacksonCoreUtilJsonParserSequence class]]) {
      [((ComFasterxmlJacksonCoreUtilJsonParserSequence *) nil_chk(((ComFasterxmlJacksonCoreUtilJsonParserSequence *) cast_chk(p, [ComFasterxmlJacksonCoreUtilJsonParserSequence class])))) addFlattenedActiveParsersWithJavaUtilList:listToAddIn];
    }
    else {
      [((id<JavaUtilList>) nil_chk(listToAddIn)) addWithId:p];
    }
  }
}

- (void)close {
  do {
    [((ComFasterxmlJacksonCoreJsonParser *) nil_chk(delegate_)) close];
  }
  while ([self switchToNext]);
}

- (ComFasterxmlJacksonCoreJsonToken *)nextToken {
  if (delegate_ == nil) {
    return nil;
  }
  if (_hasToken_) {
    _hasToken_ = false;
    return [delegate_ currentToken];
  }
  ComFasterxmlJacksonCoreJsonToken *t = [delegate_ nextToken];
  if (t == nil) {
    return [self switchAndReturnNext];
  }
  return t;
}

- (ComFasterxmlJacksonCoreJsonParser *)skipChildren {
  if (([((ComFasterxmlJacksonCoreJsonParser *) nil_chk(delegate_)) currentToken] != JreLoadEnum(ComFasterxmlJacksonCoreJsonToken, START_OBJECT)) && ([((ComFasterxmlJacksonCoreJsonParser *) nil_chk(delegate_)) currentToken] != JreLoadEnum(ComFasterxmlJacksonCoreJsonToken, START_ARRAY))) {
    return self;
  }
  jint open = 1;
  while (true) {
    ComFasterxmlJacksonCoreJsonToken *t = [self nextToken];
    if (t == nil) {
      return self;
    }
    if ([t isStructStart]) {
      ++open;
    }
    else if ([t isStructEnd]) {
      if (--open == 0) {
        return self;
      }
    }
  }
}

- (NSString *)nextFieldName {
  return ([self nextToken] == JreLoadEnum(ComFasterxmlJacksonCoreJsonToken, FIELD_NAME)) ? [self currentName] : nil;
}

- (jboolean)nextFieldNameWithComFasterxmlJacksonCoreSerializableString:(id<ComFasterxmlJacksonCoreSerializableString>)str {
  return ([self nextToken] == JreLoadEnum(ComFasterxmlJacksonCoreJsonToken, FIELD_NAME)) && [((NSString *) nil_chk([((id<ComFasterxmlJacksonCoreSerializableString>) nil_chk(str)) getValue])) isEqual:[self currentName]];
}

- (jint)nextFieldNameWithComFasterxmlJacksonCoreSymFieldNameMatcher:(ComFasterxmlJacksonCoreSymFieldNameMatcher *)matcher {
  NSString *str = [self nextFieldName];
  if (str != nil) {
    return [((ComFasterxmlJacksonCoreSymFieldNameMatcher *) nil_chk(matcher)) matchNameWithNSString:str];
  }
  if ([self hasTokenWithComFasterxmlJacksonCoreJsonToken:JreLoadEnum(ComFasterxmlJacksonCoreJsonToken, END_OBJECT)]) {
    return ComFasterxmlJacksonCoreSymFieldNameMatcher_MATCH_END_OBJECT;
  }
  return ComFasterxmlJacksonCoreSymFieldNameMatcher_MATCH_ODD_TOKEN;
}

- (jint)containedParsersCount {
  return ((IOSObjectArray *) nil_chk(_parsers_))->size_;
}

- (jboolean)switchToNext {
  if (_nextParserIndex_ < ((IOSObjectArray *) nil_chk(_parsers_))->size_) {
    JreStrongAssign(&delegate_, IOSObjectArray_Get(_parsers_, _nextParserIndex_++));
    return true;
  }
  return false;
}

- (ComFasterxmlJacksonCoreJsonToken *)switchAndReturnNext {
  while (_nextParserIndex_ < ((IOSObjectArray *) nil_chk(_parsers_))->size_) {
    JreStrongAssign(&delegate_, IOSObjectArray_Get(_parsers_, _nextParserIndex_++));
    if (_checkForExistingToken_ && [((ComFasterxmlJacksonCoreJsonParser *) nil_chk(delegate_)) hasCurrentToken]) {
      return [((ComFasterxmlJacksonCoreJsonParser *) nil_chk(delegate_)) currentToken];
    }
    ComFasterxmlJacksonCoreJsonToken *t = [((ComFasterxmlJacksonCoreJsonParser *) nil_chk(delegate_)) nextToken];
    if (t != nil) {
      return t;
    }
  }
  return nil;
}

- (void)dealloc {
  RELEASE_(_parsers_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreUtilJsonParserSequence;", 0x9, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 3, 4, -1, 5, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 6, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonToken;", 0x1, -1, -1, 6, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x1, -1, -1, 6, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, 6, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 8, 6, -1, -1, -1 },
    { NULL, "I", 0x1, 7, 9, 6, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonToken;", 0x4, -1, -1, 6, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithBoolean:withComFasterxmlJacksonCoreJsonParserArray:);
  methods[1].selector = @selector(createFlattenedWithBoolean:withComFasterxmlJacksonCoreJsonParser:withComFasterxmlJacksonCoreJsonParser:);
  methods[2].selector = @selector(addFlattenedActiveParsersWithJavaUtilList:);
  methods[3].selector = @selector(close);
  methods[4].selector = @selector(nextToken);
  methods[5].selector = @selector(skipChildren);
  methods[6].selector = @selector(nextFieldName);
  methods[7].selector = @selector(nextFieldNameWithComFasterxmlJacksonCoreSerializableString:);
  methods[8].selector = @selector(nextFieldNameWithComFasterxmlJacksonCoreSymFieldNameMatcher:);
  methods[9].selector = @selector(containedParsersCount);
  methods[10].selector = @selector(switchToNext);
  methods[11].selector = @selector(switchAndReturnNext);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_parsers_", "[LComFasterxmlJacksonCoreJsonParser;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_checkForExistingToken_", "Z", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_nextParserIndex_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_hasToken_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "Z[LComFasterxmlJacksonCoreJsonParser;", "createFlattened", "ZLComFasterxmlJacksonCoreJsonParser;LComFasterxmlJacksonCoreJsonParser;", "addFlattenedActiveParsers", "LJavaUtilList;", "(Ljava/util/List<Lcom/fasterxml/jackson/core/JsonParser;>;)V", "LJavaIoIOException;", "nextFieldName", "LComFasterxmlJacksonCoreSerializableString;", "LComFasterxmlJacksonCoreSymFieldNameMatcher;" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreUtilJsonParserSequence = { "JsonParserSequence", "com.fasterxml.jackson.core.util", ptrTable, methods, fields, 7, 0x1, 12, 4, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreUtilJsonParserSequence;
}

@end

void ComFasterxmlJacksonCoreUtilJsonParserSequence_initWithBoolean_withComFasterxmlJacksonCoreJsonParserArray_(ComFasterxmlJacksonCoreUtilJsonParserSequence *self, jboolean checkForExistingToken, IOSObjectArray *parsers) {
  ComFasterxmlJacksonCoreUtilJsonParserDelegate_initWithComFasterxmlJacksonCoreJsonParser_(self, IOSObjectArray_Get(nil_chk(parsers), 0));
  self->_checkForExistingToken_ = checkForExistingToken;
  self->_hasToken_ = (checkForExistingToken && [((ComFasterxmlJacksonCoreJsonParser *) nil_chk(self->delegate_)) hasCurrentToken]);
  JreStrongAssign(&self->_parsers_, parsers);
  self->_nextParserIndex_ = 1;
}

ComFasterxmlJacksonCoreUtilJsonParserSequence *new_ComFasterxmlJacksonCoreUtilJsonParserSequence_initWithBoolean_withComFasterxmlJacksonCoreJsonParserArray_(jboolean checkForExistingToken, IOSObjectArray *parsers) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreUtilJsonParserSequence, initWithBoolean_withComFasterxmlJacksonCoreJsonParserArray_, checkForExistingToken, parsers)
}

ComFasterxmlJacksonCoreUtilJsonParserSequence *create_ComFasterxmlJacksonCoreUtilJsonParserSequence_initWithBoolean_withComFasterxmlJacksonCoreJsonParserArray_(jboolean checkForExistingToken, IOSObjectArray *parsers) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreUtilJsonParserSequence, initWithBoolean_withComFasterxmlJacksonCoreJsonParserArray_, checkForExistingToken, parsers)
}

ComFasterxmlJacksonCoreUtilJsonParserSequence *ComFasterxmlJacksonCoreUtilJsonParserSequence_createFlattenedWithBoolean_withComFasterxmlJacksonCoreJsonParser_withComFasterxmlJacksonCoreJsonParser_(jboolean checkForExistingToken, ComFasterxmlJacksonCoreJsonParser *first, ComFasterxmlJacksonCoreJsonParser *second) {
  ComFasterxmlJacksonCoreUtilJsonParserSequence_initialize();
  if (!([first isKindOfClass:[ComFasterxmlJacksonCoreUtilJsonParserSequence class]] || [second isKindOfClass:[ComFasterxmlJacksonCoreUtilJsonParserSequence class]])) {
    return create_ComFasterxmlJacksonCoreUtilJsonParserSequence_initWithBoolean_withComFasterxmlJacksonCoreJsonParserArray_(checkForExistingToken, [IOSObjectArray arrayWithObjects:(id[]){ first, second } count:2 type:ComFasterxmlJacksonCoreJsonParser_class_()]);
  }
  JavaUtilArrayList *p = create_JavaUtilArrayList_init();
  if ([first isKindOfClass:[ComFasterxmlJacksonCoreUtilJsonParserSequence class]]) {
    [((ComFasterxmlJacksonCoreUtilJsonParserSequence *) nil_chk(((ComFasterxmlJacksonCoreUtilJsonParserSequence *) cast_chk(first, [ComFasterxmlJacksonCoreUtilJsonParserSequence class])))) addFlattenedActiveParsersWithJavaUtilList:p];
  }
  else {
    [p addWithId:first];
  }
  if ([second isKindOfClass:[ComFasterxmlJacksonCoreUtilJsonParserSequence class]]) {
    [((ComFasterxmlJacksonCoreUtilJsonParserSequence *) nil_chk(((ComFasterxmlJacksonCoreUtilJsonParserSequence *) cast_chk(second, [ComFasterxmlJacksonCoreUtilJsonParserSequence class])))) addFlattenedActiveParsersWithJavaUtilList:p];
  }
  else {
    [p addWithId:second];
  }
  return create_ComFasterxmlJacksonCoreUtilJsonParserSequence_initWithBoolean_withComFasterxmlJacksonCoreJsonParserArray_(checkForExistingToken, [p toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[p size] type:ComFasterxmlJacksonCoreJsonParser_class_()]]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreUtilJsonParserSequence)
