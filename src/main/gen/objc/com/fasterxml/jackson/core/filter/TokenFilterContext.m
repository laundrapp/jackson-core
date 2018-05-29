//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/filter/TokenFilterContext.java
//

#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/JsonGenerator.h"
#include "com/fasterxml/jackson/core/JsonToken.h"
#include "com/fasterxml/jackson/core/TokenStreamContext.h"
#include "com/fasterxml/jackson/core/filter/TokenFilter.h"
#include "com/fasterxml/jackson/core/filter/TokenFilterContext.h"
#include "java/lang/StringBuilder.h"

@interface ComFasterxmlJacksonCoreFilterTokenFilterContext ()

- (void)_writePathWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)gen;

@end

__attribute__((unused)) static void ComFasterxmlJacksonCoreFilterTokenFilterContext__writePathWithComFasterxmlJacksonCoreJsonGenerator_(ComFasterxmlJacksonCoreFilterTokenFilterContext *self, ComFasterxmlJacksonCoreJsonGenerator *gen);

@implementation ComFasterxmlJacksonCoreFilterTokenFilterContext

- (instancetype __nonnull)initWithInt:(jint)type
withComFasterxmlJacksonCoreFilterTokenFilterContext:(ComFasterxmlJacksonCoreFilterTokenFilterContext *)parent
withComFasterxmlJacksonCoreFilterTokenFilter:(ComFasterxmlJacksonCoreFilterTokenFilter *)filter
                          withBoolean:(jboolean)startHandled {
  ComFasterxmlJacksonCoreFilterTokenFilterContext_initWithInt_withComFasterxmlJacksonCoreFilterTokenFilterContext_withComFasterxmlJacksonCoreFilterTokenFilter_withBoolean_(self, type, parent, filter, startHandled);
  return self;
}

- (ComFasterxmlJacksonCoreFilterTokenFilterContext *)resetWithInt:(jint)type
                     withComFasterxmlJacksonCoreFilterTokenFilter:(ComFasterxmlJacksonCoreFilterTokenFilter *)filter
                                                      withBoolean:(jboolean)startWritten {
  _type_ = type;
  JreStrongAssign(&_filter_, filter);
  _index_ = -1;
  JreStrongAssign(&_currentName_, nil);
  _startHandled_ = startWritten;
  _needToHandleName_ = false;
  return self;
}

+ (ComFasterxmlJacksonCoreFilterTokenFilterContext *)createRootContextWithComFasterxmlJacksonCoreFilterTokenFilter:(ComFasterxmlJacksonCoreFilterTokenFilter *)filter {
  return ComFasterxmlJacksonCoreFilterTokenFilterContext_createRootContextWithComFasterxmlJacksonCoreFilterTokenFilter_(filter);
}

- (ComFasterxmlJacksonCoreFilterTokenFilterContext *)createChildArrayContextWithComFasterxmlJacksonCoreFilterTokenFilter:(ComFasterxmlJacksonCoreFilterTokenFilter *)filter
                                                                                                             withBoolean:(jboolean)writeStart {
  ComFasterxmlJacksonCoreFilterTokenFilterContext *ctxt = _child_;
  if (ctxt == nil) {
    JreStrongAssign(&_child_, ctxt = create_ComFasterxmlJacksonCoreFilterTokenFilterContext_initWithInt_withComFasterxmlJacksonCoreFilterTokenFilterContext_withComFasterxmlJacksonCoreFilterTokenFilter_withBoolean_(ComFasterxmlJacksonCoreTokenStreamContext_TYPE_ARRAY, self, filter, writeStart));
    return ctxt;
  }
  return [ctxt resetWithInt:ComFasterxmlJacksonCoreTokenStreamContext_TYPE_ARRAY withComFasterxmlJacksonCoreFilterTokenFilter:filter withBoolean:writeStart];
}

- (ComFasterxmlJacksonCoreFilterTokenFilterContext *)createChildObjectContextWithComFasterxmlJacksonCoreFilterTokenFilter:(ComFasterxmlJacksonCoreFilterTokenFilter *)filter
                                                                                                              withBoolean:(jboolean)writeStart {
  ComFasterxmlJacksonCoreFilterTokenFilterContext *ctxt = _child_;
  if (ctxt == nil) {
    JreStrongAssign(&_child_, ctxt = create_ComFasterxmlJacksonCoreFilterTokenFilterContext_initWithInt_withComFasterxmlJacksonCoreFilterTokenFilterContext_withComFasterxmlJacksonCoreFilterTokenFilter_withBoolean_(ComFasterxmlJacksonCoreTokenStreamContext_TYPE_OBJECT, self, filter, writeStart));
    return ctxt;
  }
  return [ctxt resetWithInt:ComFasterxmlJacksonCoreTokenStreamContext_TYPE_OBJECT withComFasterxmlJacksonCoreFilterTokenFilter:filter withBoolean:writeStart];
}

- (ComFasterxmlJacksonCoreFilterTokenFilter *)setFieldNameWithNSString:(NSString *)name {
  JreStrongAssign(&_currentName_, name);
  _needToHandleName_ = true;
  return _filter_;
}

- (ComFasterxmlJacksonCoreFilterTokenFilter *)checkValueWithComFasterxmlJacksonCoreFilterTokenFilter:(ComFasterxmlJacksonCoreFilterTokenFilter *)filter {
  if (_type_ == ComFasterxmlJacksonCoreTokenStreamContext_TYPE_OBJECT) {
    return filter;
  }
  jint ix = ++_index_;
  if (_type_ == ComFasterxmlJacksonCoreTokenStreamContext_TYPE_ARRAY) {
    return [((ComFasterxmlJacksonCoreFilterTokenFilter *) nil_chk(filter)) includeElementWithInt:ix];
  }
  return [((ComFasterxmlJacksonCoreFilterTokenFilter *) nil_chk(filter)) includeRootValueWithInt:ix];
}

- (void)writePathWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)gen {
  if ((_filter_ == nil) || (_filter_ == JreLoadStatic(ComFasterxmlJacksonCoreFilterTokenFilter, INCLUDE_ALL))) {
    return;
  }
  if (_parent_ != nil) {
    ComFasterxmlJacksonCoreFilterTokenFilterContext__writePathWithComFasterxmlJacksonCoreJsonGenerator_(_parent_, gen);
  }
  if (_startHandled_) {
    if (_needToHandleName_) {
      [((ComFasterxmlJacksonCoreJsonGenerator *) nil_chk(gen)) writeFieldNameWithNSString:_currentName_];
    }
  }
  else {
    _startHandled_ = true;
    if (_type_ == ComFasterxmlJacksonCoreTokenStreamContext_TYPE_OBJECT) {
      [((ComFasterxmlJacksonCoreJsonGenerator *) nil_chk(gen)) writeStartObject];
      [gen writeFieldNameWithNSString:_currentName_];
    }
    else if (_type_ == ComFasterxmlJacksonCoreTokenStreamContext_TYPE_ARRAY) {
      [((ComFasterxmlJacksonCoreJsonGenerator *) nil_chk(gen)) writeStartArray];
    }
  }
}

- (void)writeImmediatePathWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)gen {
  if ((_filter_ == nil) || (_filter_ == JreLoadStatic(ComFasterxmlJacksonCoreFilterTokenFilter, INCLUDE_ALL))) {
    return;
  }
  if (_startHandled_) {
    if (_needToHandleName_) {
      [((ComFasterxmlJacksonCoreJsonGenerator *) nil_chk(gen)) writeFieldNameWithNSString:_currentName_];
    }
  }
  else {
    _startHandled_ = true;
    if (_type_ == ComFasterxmlJacksonCoreTokenStreamContext_TYPE_OBJECT) {
      [((ComFasterxmlJacksonCoreJsonGenerator *) nil_chk(gen)) writeStartObject];
      if (_needToHandleName_) {
        [gen writeFieldNameWithNSString:_currentName_];
      }
    }
    else if (_type_ == ComFasterxmlJacksonCoreTokenStreamContext_TYPE_ARRAY) {
      [((ComFasterxmlJacksonCoreJsonGenerator *) nil_chk(gen)) writeStartArray];
    }
  }
}

- (void)_writePathWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)gen {
  ComFasterxmlJacksonCoreFilterTokenFilterContext__writePathWithComFasterxmlJacksonCoreJsonGenerator_(self, gen);
}

- (ComFasterxmlJacksonCoreFilterTokenFilterContext *)closeArrayWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)gen {
  if (_startHandled_) {
    [((ComFasterxmlJacksonCoreJsonGenerator *) nil_chk(gen)) writeEndArray];
  }
  if ((_filter_ != nil) && (_filter_ != JreLoadStatic(ComFasterxmlJacksonCoreFilterTokenFilter, INCLUDE_ALL))) {
    [((ComFasterxmlJacksonCoreFilterTokenFilter *) nil_chk(_filter_)) filterFinishArray];
  }
  return _parent_;
}

- (ComFasterxmlJacksonCoreFilterTokenFilterContext *)closeObjectWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)gen {
  if (_startHandled_) {
    [((ComFasterxmlJacksonCoreJsonGenerator *) nil_chk(gen)) writeEndObject];
  }
  if ((_filter_ != nil) && (_filter_ != JreLoadStatic(ComFasterxmlJacksonCoreFilterTokenFilter, INCLUDE_ALL))) {
    [((ComFasterxmlJacksonCoreFilterTokenFilter *) nil_chk(_filter_)) filterFinishObject];
  }
  return _parent_;
}

- (void)skipParentChecks {
  JreStrongAssign(&_filter_, nil);
  for (ComFasterxmlJacksonCoreFilterTokenFilterContext *ctxt = _parent_; ctxt != nil; ctxt = ctxt->_parent_) {
    JreStrongAssign(&((ComFasterxmlJacksonCoreFilterTokenFilterContext *) nil_chk(_parent_))->_filter_, nil);
  }
}

- (id)getCurrentValue {
  return nil;
}

- (void)setCurrentValueWithId:(id)v {
}

- (ComFasterxmlJacksonCoreFilterTokenFilterContext *)getParent {
  return _parent_;
}

- (NSString *)currentName {
  return _currentName_;
}

- (jboolean)hasCurrentName {
  return _currentName_ != nil;
}

- (ComFasterxmlJacksonCoreFilterTokenFilter *)getFilter {
  return _filter_;
}

- (jboolean)isStartHandled {
  return _startHandled_;
}

- (ComFasterxmlJacksonCoreJsonToken *)nextTokenToRead {
  if (!_startHandled_) {
    _startHandled_ = true;
    if (_type_ == ComFasterxmlJacksonCoreTokenStreamContext_TYPE_OBJECT) {
      return JreLoadEnum(ComFasterxmlJacksonCoreJsonToken, START_OBJECT);
    }
    return JreLoadEnum(ComFasterxmlJacksonCoreJsonToken, START_ARRAY);
  }
  if (_needToHandleName_ && (_type_ == ComFasterxmlJacksonCoreTokenStreamContext_TYPE_OBJECT)) {
    _needToHandleName_ = false;
    return JreLoadEnum(ComFasterxmlJacksonCoreJsonToken, FIELD_NAME);
  }
  return nil;
}

- (ComFasterxmlJacksonCoreFilterTokenFilterContext *)findChildOfWithComFasterxmlJacksonCoreFilterTokenFilterContext:(ComFasterxmlJacksonCoreFilterTokenFilterContext *)parent {
  if (_parent_ == parent) {
    return self;
  }
  ComFasterxmlJacksonCoreFilterTokenFilterContext *curr = _parent_;
  while (curr != nil) {
    ComFasterxmlJacksonCoreFilterTokenFilterContext *p = curr->_parent_;
    if (p == parent) {
      return curr;
    }
    curr = p;
  }
  return nil;
}

- (void)appendDescWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb {
  if (_parent_ != nil) {
    [_parent_ appendDescWithJavaLangStringBuilder:sb];
  }
  if (_type_ == ComFasterxmlJacksonCoreTokenStreamContext_TYPE_OBJECT) {
    [((JavaLangStringBuilder *) nil_chk(sb)) appendWithChar:'{'];
    if (_currentName_ != nil) {
      [sb appendWithChar:'"'];
      [sb appendWithNSString:_currentName_];
      [sb appendWithChar:'"'];
    }
    else {
      [sb appendWithChar:'?'];
    }
    [sb appendWithChar:'}'];
  }
  else if (_type_ == ComFasterxmlJacksonCoreTokenStreamContext_TYPE_ARRAY) {
    [((JavaLangStringBuilder *) nil_chk(sb)) appendWithChar:'['];
    [sb appendWithInt:[self getCurrentIndex]];
    [sb appendWithChar:']'];
  }
  else {
    [((JavaLangStringBuilder *) nil_chk(sb)) appendWithNSString:@"/"];
  }
}

- (NSString *)description {
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_initWithInt_(64);
  [self appendDescWithJavaLangStringBuilder:sb];
  return [sb description];
}

- (void)dealloc {
  RELEASE_(_parent_);
  RELEASE_(_child_);
  RELEASE_(_currentName_);
  RELEASE_(_filter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreFilterTokenFilterContext;", 0x4, 1, 2, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreFilterTokenFilterContext;", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreFilterTokenFilterContext;", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreFilterTokenFilterContext;", 0x1, 7, 6, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreFilterTokenFilter;", 0x1, 8, 9, 10, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreFilterTokenFilter;", 0x1, 11, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, 14, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 13, 14, -1, -1, -1 },
    { NULL, "V", 0x2, 16, 13, 14, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreFilterTokenFilterContext;", 0x1, 17, 13, 14, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreFilterTokenFilterContext;", 0x1, 18, 13, 14, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 19, 20, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreFilterTokenFilterContext;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreFilterTokenFilter;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonToken;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreFilterTokenFilterContext;", 0x1, 21, 22, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 23, 24, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 25, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:withComFasterxmlJacksonCoreFilterTokenFilterContext:withComFasterxmlJacksonCoreFilterTokenFilter:withBoolean:);
  methods[1].selector = @selector(resetWithInt:withComFasterxmlJacksonCoreFilterTokenFilter:withBoolean:);
  methods[2].selector = @selector(createRootContextWithComFasterxmlJacksonCoreFilterTokenFilter:);
  methods[3].selector = @selector(createChildArrayContextWithComFasterxmlJacksonCoreFilterTokenFilter:withBoolean:);
  methods[4].selector = @selector(createChildObjectContextWithComFasterxmlJacksonCoreFilterTokenFilter:withBoolean:);
  methods[5].selector = @selector(setFieldNameWithNSString:);
  methods[6].selector = @selector(checkValueWithComFasterxmlJacksonCoreFilterTokenFilter:);
  methods[7].selector = @selector(writePathWithComFasterxmlJacksonCoreJsonGenerator:);
  methods[8].selector = @selector(writeImmediatePathWithComFasterxmlJacksonCoreJsonGenerator:);
  methods[9].selector = @selector(_writePathWithComFasterxmlJacksonCoreJsonGenerator:);
  methods[10].selector = @selector(closeArrayWithComFasterxmlJacksonCoreJsonGenerator:);
  methods[11].selector = @selector(closeObjectWithComFasterxmlJacksonCoreJsonGenerator:);
  methods[12].selector = @selector(skipParentChecks);
  methods[13].selector = @selector(getCurrentValue);
  methods[14].selector = @selector(setCurrentValueWithId:);
  methods[15].selector = @selector(getParent);
  methods[16].selector = @selector(currentName);
  methods[17].selector = @selector(hasCurrentName);
  methods[18].selector = @selector(getFilter);
  methods[19].selector = @selector(isStartHandled);
  methods[20].selector = @selector(nextTokenToRead);
  methods[21].selector = @selector(findChildOfWithComFasterxmlJacksonCoreFilterTokenFilterContext:);
  methods[22].selector = @selector(appendDescWithJavaLangStringBuilder:);
  methods[23].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_parent_", "LComFasterxmlJacksonCoreFilterTokenFilterContext;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_child_", "LComFasterxmlJacksonCoreFilterTokenFilterContext;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_currentName_", "LNSString;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_filter_", "LComFasterxmlJacksonCoreFilterTokenFilter;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_startHandled_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_needToHandleName_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "ILComFasterxmlJacksonCoreFilterTokenFilterContext;LComFasterxmlJacksonCoreFilterTokenFilter;Z", "reset", "ILComFasterxmlJacksonCoreFilterTokenFilter;Z", "createRootContext", "LComFasterxmlJacksonCoreFilterTokenFilter;", "createChildArrayContext", "LComFasterxmlJacksonCoreFilterTokenFilter;Z", "createChildObjectContext", "setFieldName", "LNSString;", "LComFasterxmlJacksonCoreJsonProcessingException;", "checkValue", "writePath", "LComFasterxmlJacksonCoreJsonGenerator;", "LJavaIoIOException;", "writeImmediatePath", "_writePath", "closeArray", "closeObject", "setCurrentValue", "LNSObject;", "findChildOf", "LComFasterxmlJacksonCoreFilterTokenFilterContext;", "appendDesc", "LJavaLangStringBuilder;", "toString" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreFilterTokenFilterContext = { "TokenFilterContext", "com.fasterxml.jackson.core.filter", ptrTable, methods, fields, 7, 0x1, 24, 6, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreFilterTokenFilterContext;
}

@end

void ComFasterxmlJacksonCoreFilterTokenFilterContext_initWithInt_withComFasterxmlJacksonCoreFilterTokenFilterContext_withComFasterxmlJacksonCoreFilterTokenFilter_withBoolean_(ComFasterxmlJacksonCoreFilterTokenFilterContext *self, jint type, ComFasterxmlJacksonCoreFilterTokenFilterContext *parent, ComFasterxmlJacksonCoreFilterTokenFilter *filter, jboolean startHandled) {
  ComFasterxmlJacksonCoreTokenStreamContext_init(self);
  self->_type_ = type;
  JreStrongAssign(&self->_parent_, parent);
  JreStrongAssign(&self->_filter_, filter);
  self->_index_ = -1;
  self->_startHandled_ = startHandled;
  self->_needToHandleName_ = false;
}

ComFasterxmlJacksonCoreFilterTokenFilterContext *new_ComFasterxmlJacksonCoreFilterTokenFilterContext_initWithInt_withComFasterxmlJacksonCoreFilterTokenFilterContext_withComFasterxmlJacksonCoreFilterTokenFilter_withBoolean_(jint type, ComFasterxmlJacksonCoreFilterTokenFilterContext *parent, ComFasterxmlJacksonCoreFilterTokenFilter *filter, jboolean startHandled) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreFilterTokenFilterContext, initWithInt_withComFasterxmlJacksonCoreFilterTokenFilterContext_withComFasterxmlJacksonCoreFilterTokenFilter_withBoolean_, type, parent, filter, startHandled)
}

ComFasterxmlJacksonCoreFilterTokenFilterContext *create_ComFasterxmlJacksonCoreFilterTokenFilterContext_initWithInt_withComFasterxmlJacksonCoreFilterTokenFilterContext_withComFasterxmlJacksonCoreFilterTokenFilter_withBoolean_(jint type, ComFasterxmlJacksonCoreFilterTokenFilterContext *parent, ComFasterxmlJacksonCoreFilterTokenFilter *filter, jboolean startHandled) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreFilterTokenFilterContext, initWithInt_withComFasterxmlJacksonCoreFilterTokenFilterContext_withComFasterxmlJacksonCoreFilterTokenFilter_withBoolean_, type, parent, filter, startHandled)
}

ComFasterxmlJacksonCoreFilterTokenFilterContext *ComFasterxmlJacksonCoreFilterTokenFilterContext_createRootContextWithComFasterxmlJacksonCoreFilterTokenFilter_(ComFasterxmlJacksonCoreFilterTokenFilter *filter) {
  ComFasterxmlJacksonCoreFilterTokenFilterContext_initialize();
  return create_ComFasterxmlJacksonCoreFilterTokenFilterContext_initWithInt_withComFasterxmlJacksonCoreFilterTokenFilterContext_withComFasterxmlJacksonCoreFilterTokenFilter_withBoolean_(ComFasterxmlJacksonCoreTokenStreamContext_TYPE_ROOT, nil, filter, true);
}

void ComFasterxmlJacksonCoreFilterTokenFilterContext__writePathWithComFasterxmlJacksonCoreJsonGenerator_(ComFasterxmlJacksonCoreFilterTokenFilterContext *self, ComFasterxmlJacksonCoreJsonGenerator *gen) {
  if ((self->_filter_ == nil) || (self->_filter_ == JreLoadStatic(ComFasterxmlJacksonCoreFilterTokenFilter, INCLUDE_ALL))) {
    return;
  }
  if (self->_parent_ != nil) {
    ComFasterxmlJacksonCoreFilterTokenFilterContext__writePathWithComFasterxmlJacksonCoreJsonGenerator_(self->_parent_, gen);
  }
  if (self->_startHandled_) {
    if (self->_needToHandleName_) {
      self->_needToHandleName_ = false;
      [((ComFasterxmlJacksonCoreJsonGenerator *) nil_chk(gen)) writeFieldNameWithNSString:self->_currentName_];
    }
  }
  else {
    self->_startHandled_ = true;
    if (self->_type_ == ComFasterxmlJacksonCoreTokenStreamContext_TYPE_OBJECT) {
      [((ComFasterxmlJacksonCoreJsonGenerator *) nil_chk(gen)) writeStartObject];
      if (self->_needToHandleName_) {
        self->_needToHandleName_ = false;
        [gen writeFieldNameWithNSString:self->_currentName_];
      }
    }
    else if (self->_type_ == ComFasterxmlJacksonCoreTokenStreamContext_TYPE_ARRAY) {
      [((ComFasterxmlJacksonCoreJsonGenerator *) nil_chk(gen)) writeStartArray];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreFilterTokenFilterContext)
