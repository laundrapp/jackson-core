//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/util/DefaultIndenter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/JsonGenerator.h"
#include "com/fasterxml/jackson/core/util/DefaultIndenter.h"
#include "com/fasterxml/jackson/core/util/DefaultPrettyPrinter.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"

@interface ComFasterxmlJacksonCoreUtilDefaultIndenter () {
 @public
  IOSCharArray *indents_;
  jint charsPerLevel_;
  NSString *eol_;
}

@end

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreUtilDefaultIndenter, indents_, IOSCharArray *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreUtilDefaultIndenter, eol_, NSString *)

inline jlong ComFasterxmlJacksonCoreUtilDefaultIndenter_get_serialVersionUID(void);
#define ComFasterxmlJacksonCoreUtilDefaultIndenter_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreUtilDefaultIndenter, serialVersionUID, jlong)

/*!
 @brief We expect to rarely get indentation deeper than this number of levels,
  and try not to pre-generate more indentations than needed.
 */
inline jint ComFasterxmlJacksonCoreUtilDefaultIndenter_get_INDENT_LEVELS(void);
#define ComFasterxmlJacksonCoreUtilDefaultIndenter_INDENT_LEVELS 16
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreUtilDefaultIndenter, INDENT_LEVELS, jint)

J2OBJC_INITIALIZED_DEFN(ComFasterxmlJacksonCoreUtilDefaultIndenter)

NSString *ComFasterxmlJacksonCoreUtilDefaultIndenter_SYS_LF;
ComFasterxmlJacksonCoreUtilDefaultIndenter *ComFasterxmlJacksonCoreUtilDefaultIndenter_SYSTEM_LINEFEED_INSTANCE;

@implementation ComFasterxmlJacksonCoreUtilDefaultIndenter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  ComFasterxmlJacksonCoreUtilDefaultIndenter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype __nonnull)initWithNSString:(NSString *)indent
                              withNSString:(NSString *)eol {
  ComFasterxmlJacksonCoreUtilDefaultIndenter_initWithNSString_withNSString_(self, indent, eol);
  return self;
}

- (ComFasterxmlJacksonCoreUtilDefaultIndenter *)withLinefeedWithNSString:(NSString *)lf {
  if ([((NSString *) nil_chk(lf)) isEqual:eol_]) {
    return self;
  }
  return create_ComFasterxmlJacksonCoreUtilDefaultIndenter_initWithNSString_withNSString_([self getIndent], lf);
}

- (ComFasterxmlJacksonCoreUtilDefaultIndenter *)withIndentWithNSString:(NSString *)indent {
  if ([((NSString *) nil_chk(indent)) isEqual:[self getIndent]]) {
    return self;
  }
  return create_ComFasterxmlJacksonCoreUtilDefaultIndenter_initWithNSString_withNSString_(indent, eol_);
}

- (jboolean)isInline {
  return false;
}

- (void)writeIndentationWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)jg
                                                         withInt:(jint)level {
  [((ComFasterxmlJacksonCoreJsonGenerator *) nil_chk(jg)) writeRawWithNSString:eol_];
  if (level > 0) {
    level *= charsPerLevel_;
    while (level > ((IOSCharArray *) nil_chk(indents_))->size_) {
      [jg writeRawWithCharArray:indents_ withInt:0 withInt:indents_->size_];
      level -= indents_->size_;
    }
    [jg writeRawWithCharArray:indents_ withInt:0 withInt:level];
  }
}

- (NSString *)getEol {
  return eol_;
}

- (NSString *)getIndent {
  return [NSString java_stringWithCharacters:indents_ offset:0 length:charsPerLevel_];
}

- (void)dealloc {
  RELEASE_(indents_);
  RELEASE_(eol_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreUtilDefaultIndenter;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreUtilDefaultIndenter;", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 6, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:withNSString:);
  methods[2].selector = @selector(withLinefeedWithNSString:);
  methods[3].selector = @selector(withIndentWithNSString:);
  methods[4].selector = @selector(isInline);
  methods[5].selector = @selector(writeIndentationWithComFasterxmlJacksonCoreJsonGenerator:withInt:);
  methods[6].selector = @selector(getEol);
  methods[7].selector = @selector(getIndent);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = ComFasterxmlJacksonCoreUtilDefaultIndenter_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "SYS_LF", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 7, -1, -1 },
    { "SYSTEM_LINEFEED_INSTANCE", "LComFasterxmlJacksonCoreUtilDefaultIndenter;", .constantValue.asLong = 0, 0x19, -1, 8, -1, -1 },
    { "INDENT_LEVELS", "I", .constantValue.asInt = ComFasterxmlJacksonCoreUtilDefaultIndenter_INDENT_LEVELS, 0x1a, -1, -1, -1, -1 },
    { "indents_", "[C", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "charsPerLevel_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "eol_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;", "withLinefeed", "LNSString;", "withIndent", "writeIndentation", "LComFasterxmlJacksonCoreJsonGenerator;I", "LJavaIoIOException;", &ComFasterxmlJacksonCoreUtilDefaultIndenter_SYS_LF, &ComFasterxmlJacksonCoreUtilDefaultIndenter_SYSTEM_LINEFEED_INSTANCE };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreUtilDefaultIndenter = { "DefaultIndenter", "com.fasterxml.jackson.core.util", ptrTable, methods, fields, 7, 0x1, 8, 7, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreUtilDefaultIndenter;
}

+ (void)initialize {
  if (self == [ComFasterxmlJacksonCoreUtilDefaultIndenter class]) {
    {
      NSString *lf;
      @try {
        lf = JavaLangSystem_getPropertyWithNSString_(@"line.separator");
      }
      @catch (JavaLangThrowable *t) {
        lf = @"\n";
      }
      JreStrongAssign(&ComFasterxmlJacksonCoreUtilDefaultIndenter_SYS_LF, lf);
    }
    JreStrongAssignAndConsume(&ComFasterxmlJacksonCoreUtilDefaultIndenter_SYSTEM_LINEFEED_INSTANCE, new_ComFasterxmlJacksonCoreUtilDefaultIndenter_initWithNSString_withNSString_(@"  ", ComFasterxmlJacksonCoreUtilDefaultIndenter_SYS_LF));
    J2OBJC_SET_INITIALIZED(ComFasterxmlJacksonCoreUtilDefaultIndenter)
  }
}

@end

void ComFasterxmlJacksonCoreUtilDefaultIndenter_init(ComFasterxmlJacksonCoreUtilDefaultIndenter *self) {
  ComFasterxmlJacksonCoreUtilDefaultIndenter_initWithNSString_withNSString_(self, @"  ", ComFasterxmlJacksonCoreUtilDefaultIndenter_SYS_LF);
}

ComFasterxmlJacksonCoreUtilDefaultIndenter *new_ComFasterxmlJacksonCoreUtilDefaultIndenter_init() {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreUtilDefaultIndenter, init)
}

ComFasterxmlJacksonCoreUtilDefaultIndenter *create_ComFasterxmlJacksonCoreUtilDefaultIndenter_init() {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreUtilDefaultIndenter, init)
}

void ComFasterxmlJacksonCoreUtilDefaultIndenter_initWithNSString_withNSString_(ComFasterxmlJacksonCoreUtilDefaultIndenter *self, NSString *indent, NSString *eol) {
  ComFasterxmlJacksonCoreUtilDefaultPrettyPrinter_NopIndenter_init(self);
  self->charsPerLevel_ = [((NSString *) nil_chk(indent)) java_length];
  JreStrongAssignAndConsume(&self->indents_, [IOSCharArray newArrayWithLength:[indent java_length] * ComFasterxmlJacksonCoreUtilDefaultIndenter_INDENT_LEVELS]);
  jint offset = 0;
  for (jint i = 0; i < ComFasterxmlJacksonCoreUtilDefaultIndenter_INDENT_LEVELS; i++) {
    [indent java_getChars:0 sourceEnd:[indent java_length] destination:self->indents_ destinationBegin:offset];
    offset += [indent java_length];
  }
  JreStrongAssign(&self->eol_, eol);
}

ComFasterxmlJacksonCoreUtilDefaultIndenter *new_ComFasterxmlJacksonCoreUtilDefaultIndenter_initWithNSString_withNSString_(NSString *indent, NSString *eol) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreUtilDefaultIndenter, initWithNSString_withNSString_, indent, eol)
}

ComFasterxmlJacksonCoreUtilDefaultIndenter *create_ComFasterxmlJacksonCoreUtilDefaultIndenter_initWithNSString_withNSString_(NSString *indent, NSString *eol) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreUtilDefaultIndenter, initWithNSString_withNSString_, indent, eol)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreUtilDefaultIndenter)