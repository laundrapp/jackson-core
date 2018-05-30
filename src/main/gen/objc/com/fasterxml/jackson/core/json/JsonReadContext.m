//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/json/JsonReadContext.java
//

#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/JsonLocation.h"
#include "com/fasterxml/jackson/core/JsonParseException.h"
#include "com/fasterxml/jackson/core/JsonParser.h"
#include "com/fasterxml/jackson/core/JsonStreamContext.h"
#include "com/fasterxml/jackson/core/json/DupDetector.h"
#include "com/fasterxml/jackson/core/json/JsonReadContext.h"

@interface ComFasterxmlJacksonCoreJsonJsonReadContext ()

- (void)_checkDupWithComFasterxmlJacksonCoreJsonDupDetector:(ComFasterxmlJacksonCoreJsonDupDetector *)dd
                                               withNSString:(NSString *)name;

@end

__attribute__((unused)) static void ComFasterxmlJacksonCoreJsonJsonReadContext__checkDupWithComFasterxmlJacksonCoreJsonDupDetector_withNSString_(ComFasterxmlJacksonCoreJsonJsonReadContext *self, ComFasterxmlJacksonCoreJsonDupDetector *dd, NSString *name);

@implementation ComFasterxmlJacksonCoreJsonJsonReadContext

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreJsonJsonReadContext:(ComFasterxmlJacksonCoreJsonJsonReadContext *)parent
                                  withComFasterxmlJacksonCoreJsonDupDetector:(ComFasterxmlJacksonCoreJsonDupDetector *)dups
                                                                     withInt:(jint)type
                                                                     withInt:(jint)lineNr
                                                                     withInt:(jint)colNr {
  ComFasterxmlJacksonCoreJsonJsonReadContext_initWithComFasterxmlJacksonCoreJsonJsonReadContext_withComFasterxmlJacksonCoreJsonDupDetector_withInt_withInt_withInt_(self, parent, dups, type, lineNr, colNr);
  return self;
}

- (void)resetWithInt:(jint)type
             withInt:(jint)lineNr
             withInt:(jint)colNr {
  _type_ = type;
  _index_ = -1;
  _lineNr_ = lineNr;
  _columnNr_ = colNr;
  JreStrongAssign(&_currentName_, nil);
  JreStrongAssign(&_currentValue_, nil);
  if (_dups_ != nil) {
    [_dups_ reset];
  }
}

- (ComFasterxmlJacksonCoreJsonJsonReadContext *)withDupDetectorWithComFasterxmlJacksonCoreJsonDupDetector:(ComFasterxmlJacksonCoreJsonDupDetector *)dups {
  JreStrongAssign(&_dups_, dups);
  return self;
}

- (id)getCurrentValue {
  return _currentValue_;
}

- (void)setCurrentValueWithId:(id)v {
  JreStrongAssign(&_currentValue_, v);
}

+ (ComFasterxmlJacksonCoreJsonJsonReadContext *)createRootContextWithInt:(jint)lineNr
                                                                 withInt:(jint)colNr
                              withComFasterxmlJacksonCoreJsonDupDetector:(ComFasterxmlJacksonCoreJsonDupDetector *)dups {
  return ComFasterxmlJacksonCoreJsonJsonReadContext_createRootContextWithInt_withInt_withComFasterxmlJacksonCoreJsonDupDetector_(lineNr, colNr, dups);
}

+ (ComFasterxmlJacksonCoreJsonJsonReadContext *)createRootContextWithComFasterxmlJacksonCoreJsonDupDetector:(ComFasterxmlJacksonCoreJsonDupDetector *)dups {
  return ComFasterxmlJacksonCoreJsonJsonReadContext_createRootContextWithComFasterxmlJacksonCoreJsonDupDetector_(dups);
}

- (ComFasterxmlJacksonCoreJsonJsonReadContext *)createChildArrayContextWithInt:(jint)lineNr
                                                                       withInt:(jint)colNr {
  ComFasterxmlJacksonCoreJsonJsonReadContext *ctxt = _child_;
  if (ctxt == nil) {
    JreStrongAssign(&_child_, ctxt = create_ComFasterxmlJacksonCoreJsonJsonReadContext_initWithComFasterxmlJacksonCoreJsonJsonReadContext_withComFasterxmlJacksonCoreJsonDupDetector_withInt_withInt_withInt_(self, (_dups_ == nil) ? nil : [((ComFasterxmlJacksonCoreJsonDupDetector *) nil_chk(_dups_)) child], ComFasterxmlJacksonCoreJsonStreamContext_TYPE_ARRAY, lineNr, colNr));
  }
  else {
    [ctxt resetWithInt:ComFasterxmlJacksonCoreJsonStreamContext_TYPE_ARRAY withInt:lineNr withInt:colNr];
  }
  return ctxt;
}

- (ComFasterxmlJacksonCoreJsonJsonReadContext *)createChildObjectContextWithInt:(jint)lineNr
                                                                        withInt:(jint)colNr {
  ComFasterxmlJacksonCoreJsonJsonReadContext *ctxt = _child_;
  if (ctxt == nil) {
    JreStrongAssign(&_child_, ctxt = create_ComFasterxmlJacksonCoreJsonJsonReadContext_initWithComFasterxmlJacksonCoreJsonJsonReadContext_withComFasterxmlJacksonCoreJsonDupDetector_withInt_withInt_withInt_(self, (_dups_ == nil) ? nil : [((ComFasterxmlJacksonCoreJsonDupDetector *) nil_chk(_dups_)) child], ComFasterxmlJacksonCoreJsonStreamContext_TYPE_OBJECT, lineNr, colNr));
    return ctxt;
  }
  [ctxt resetWithInt:ComFasterxmlJacksonCoreJsonStreamContext_TYPE_OBJECT withInt:lineNr withInt:colNr];
  return ctxt;
}

- (NSString *)getCurrentName {
  return _currentName_;
}

- (jboolean)hasCurrentName {
  return _currentName_ != nil;
}

- (ComFasterxmlJacksonCoreJsonJsonReadContext *)getParent {
  return _parent_;
}

- (ComFasterxmlJacksonCoreJsonLocation *)getStartLocationWithId:(id)srcRef {
  jlong totalChars = -1LL;
  return create_ComFasterxmlJacksonCoreJsonLocation_initWithId_withLong_withInt_withInt_(srcRef, totalChars, _lineNr_, _columnNr_);
}

- (ComFasterxmlJacksonCoreJsonJsonReadContext *)clearAndGetParent {
  JreStrongAssign(&_currentValue_, nil);
  return _parent_;
}

- (ComFasterxmlJacksonCoreJsonDupDetector *)getDupDetector {
  return _dups_;
}

- (jboolean)expectComma {
  jint ix = ++_index_;
  return (_type_ != ComFasterxmlJacksonCoreJsonStreamContext_TYPE_ROOT && ix > 0);
}

- (void)setCurrentNameWithNSString:(NSString *)name {
  JreStrongAssign(&_currentName_, name);
  if (_dups_ != nil) {
    ComFasterxmlJacksonCoreJsonJsonReadContext__checkDupWithComFasterxmlJacksonCoreJsonDupDetector_withNSString_(self, _dups_, name);
  }
}

- (void)_checkDupWithComFasterxmlJacksonCoreJsonDupDetector:(ComFasterxmlJacksonCoreJsonDupDetector *)dd
                                               withNSString:(NSString *)name {
  ComFasterxmlJacksonCoreJsonJsonReadContext__checkDupWithComFasterxmlJacksonCoreJsonDupDetector_withNSString_(self, dd, name);
}

- (void)dealloc {
  RELEASE_(_parent_);
  RELEASE_(_dups_);
  RELEASE_(_child_);
  RELEASE_(_currentName_);
  RELEASE_(_currentValue_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 1, 2, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonJsonReadContext;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonJsonReadContext;", 0x9, 7, 8, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonJsonReadContext;", 0x9, 7, 4, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonJsonReadContext;", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonJsonReadContext;", 0x1, 11, 10, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonJsonReadContext;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonLocation;", 0x1, 12, 6, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonJsonReadContext;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonDupDetector;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 14, 15, -1, -1, -1 },
    { NULL, "V", 0x2, 16, 17, 15, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComFasterxmlJacksonCoreJsonJsonReadContext:withComFasterxmlJacksonCoreJsonDupDetector:withInt:withInt:withInt:);
  methods[1].selector = @selector(resetWithInt:withInt:withInt:);
  methods[2].selector = @selector(withDupDetectorWithComFasterxmlJacksonCoreJsonDupDetector:);
  methods[3].selector = @selector(getCurrentValue);
  methods[4].selector = @selector(setCurrentValueWithId:);
  methods[5].selector = @selector(createRootContextWithInt:withInt:withComFasterxmlJacksonCoreJsonDupDetector:);
  methods[6].selector = @selector(createRootContextWithComFasterxmlJacksonCoreJsonDupDetector:);
  methods[7].selector = @selector(createChildArrayContextWithInt:withInt:);
  methods[8].selector = @selector(createChildObjectContextWithInt:withInt:);
  methods[9].selector = @selector(getCurrentName);
  methods[10].selector = @selector(hasCurrentName);
  methods[11].selector = @selector(getParent);
  methods[12].selector = @selector(getStartLocationWithId:);
  methods[13].selector = @selector(clearAndGetParent);
  methods[14].selector = @selector(getDupDetector);
  methods[15].selector = @selector(expectComma);
  methods[16].selector = @selector(setCurrentNameWithNSString:);
  methods[17].selector = @selector(_checkDupWithComFasterxmlJacksonCoreJsonDupDetector:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_parent_", "LComFasterxmlJacksonCoreJsonJsonReadContext;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_dups_", "LComFasterxmlJacksonCoreJsonDupDetector;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_child_", "LComFasterxmlJacksonCoreJsonJsonReadContext;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_currentName_", "LNSString;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_currentValue_", "LNSObject;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_lineNr_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_columnNr_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComFasterxmlJacksonCoreJsonJsonReadContext;LComFasterxmlJacksonCoreJsonDupDetector;III", "reset", "III", "withDupDetector", "LComFasterxmlJacksonCoreJsonDupDetector;", "setCurrentValue", "LNSObject;", "createRootContext", "IILComFasterxmlJacksonCoreJsonDupDetector;", "createChildArrayContext", "II", "createChildObjectContext", "getStartLocation", "setCurrentName", "LNSString;", "LComFasterxmlJacksonCoreJsonProcessingException;", "_checkDup", "LComFasterxmlJacksonCoreJsonDupDetector;LNSString;" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreJsonJsonReadContext = { "JsonReadContext", "com.fasterxml.jackson.core.json", ptrTable, methods, fields, 7, 0x11, 18, 7, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreJsonJsonReadContext;
}

@end

void ComFasterxmlJacksonCoreJsonJsonReadContext_initWithComFasterxmlJacksonCoreJsonJsonReadContext_withComFasterxmlJacksonCoreJsonDupDetector_withInt_withInt_withInt_(ComFasterxmlJacksonCoreJsonJsonReadContext *self, ComFasterxmlJacksonCoreJsonJsonReadContext *parent, ComFasterxmlJacksonCoreJsonDupDetector *dups, jint type, jint lineNr, jint colNr) {
  ComFasterxmlJacksonCoreJsonStreamContext_init(self);
  JreStrongAssign(&self->_parent_, parent);
  JreStrongAssign(&self->_dups_, dups);
  self->_type_ = type;
  self->_lineNr_ = lineNr;
  self->_columnNr_ = colNr;
  self->_index_ = -1;
}

ComFasterxmlJacksonCoreJsonJsonReadContext *new_ComFasterxmlJacksonCoreJsonJsonReadContext_initWithComFasterxmlJacksonCoreJsonJsonReadContext_withComFasterxmlJacksonCoreJsonDupDetector_withInt_withInt_withInt_(ComFasterxmlJacksonCoreJsonJsonReadContext *parent, ComFasterxmlJacksonCoreJsonDupDetector *dups, jint type, jint lineNr, jint colNr) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreJsonJsonReadContext, initWithComFasterxmlJacksonCoreJsonJsonReadContext_withComFasterxmlJacksonCoreJsonDupDetector_withInt_withInt_withInt_, parent, dups, type, lineNr, colNr)
}

ComFasterxmlJacksonCoreJsonJsonReadContext *create_ComFasterxmlJacksonCoreJsonJsonReadContext_initWithComFasterxmlJacksonCoreJsonJsonReadContext_withComFasterxmlJacksonCoreJsonDupDetector_withInt_withInt_withInt_(ComFasterxmlJacksonCoreJsonJsonReadContext *parent, ComFasterxmlJacksonCoreJsonDupDetector *dups, jint type, jint lineNr, jint colNr) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreJsonJsonReadContext, initWithComFasterxmlJacksonCoreJsonJsonReadContext_withComFasterxmlJacksonCoreJsonDupDetector_withInt_withInt_withInt_, parent, dups, type, lineNr, colNr)
}

ComFasterxmlJacksonCoreJsonJsonReadContext *ComFasterxmlJacksonCoreJsonJsonReadContext_createRootContextWithInt_withInt_withComFasterxmlJacksonCoreJsonDupDetector_(jint lineNr, jint colNr, ComFasterxmlJacksonCoreJsonDupDetector *dups) {
  ComFasterxmlJacksonCoreJsonJsonReadContext_initialize();
  return create_ComFasterxmlJacksonCoreJsonJsonReadContext_initWithComFasterxmlJacksonCoreJsonJsonReadContext_withComFasterxmlJacksonCoreJsonDupDetector_withInt_withInt_withInt_(nil, dups, ComFasterxmlJacksonCoreJsonStreamContext_TYPE_ROOT, lineNr, colNr);
}

ComFasterxmlJacksonCoreJsonJsonReadContext *ComFasterxmlJacksonCoreJsonJsonReadContext_createRootContextWithComFasterxmlJacksonCoreJsonDupDetector_(ComFasterxmlJacksonCoreJsonDupDetector *dups) {
  ComFasterxmlJacksonCoreJsonJsonReadContext_initialize();
  return create_ComFasterxmlJacksonCoreJsonJsonReadContext_initWithComFasterxmlJacksonCoreJsonJsonReadContext_withComFasterxmlJacksonCoreJsonDupDetector_withInt_withInt_withInt_(nil, dups, ComFasterxmlJacksonCoreJsonStreamContext_TYPE_ROOT, 1, 0);
}

void ComFasterxmlJacksonCoreJsonJsonReadContext__checkDupWithComFasterxmlJacksonCoreJsonDupDetector_withNSString_(ComFasterxmlJacksonCoreJsonJsonReadContext *self, ComFasterxmlJacksonCoreJsonDupDetector *dd, NSString *name) {
  if ([((ComFasterxmlJacksonCoreJsonDupDetector *) nil_chk(dd)) isDupWithNSString:name]) {
    id src = [dd getSource];
    @throw create_ComFasterxmlJacksonCoreJsonParseException_initWithComFasterxmlJacksonCoreJsonParser_withNSString_((([src isKindOfClass:[ComFasterxmlJacksonCoreJsonParser class]]) ? ((ComFasterxmlJacksonCoreJsonParser *) cast_chk(src, [ComFasterxmlJacksonCoreJsonParser class])) : nil), JreStrcat("$$C", @"Duplicate field '", name, '\''));
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreJsonJsonReadContext)