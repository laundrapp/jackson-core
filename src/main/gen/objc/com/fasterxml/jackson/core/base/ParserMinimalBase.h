//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/base/ParserMinimalBase.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreBaseParserMinimalBase")
#ifdef RESTRICT_ComFasterxmlJacksonCoreBaseParserMinimalBase
#define INCLUDE_ALL_ComFasterxmlJacksonCoreBaseParserMinimalBase 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreBaseParserMinimalBase 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreBaseParserMinimalBase

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreBaseParserMinimalBase_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreBaseParserMinimalBase || defined(INCLUDE_ComFasterxmlJacksonCoreBaseParserMinimalBase))
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_

#define RESTRICT_ComFasterxmlJacksonCoreJsonParser 1
#define INCLUDE_ComFasterxmlJacksonCoreJsonParser 1
#include "com/fasterxml/jackson/core/JsonParser.h"

@class ComFasterxmlJacksonCoreBase64Variant;
@class ComFasterxmlJacksonCoreJsonParseException;
@class ComFasterxmlJacksonCoreJsonToken;
@class ComFasterxmlJacksonCoreSymFieldNameMatcher;
@class ComFasterxmlJacksonCoreTokenStreamContext;
@class ComFasterxmlJacksonCoreTypeResolvedType;
@class ComFasterxmlJacksonCoreTypeTypeReference;
@class ComFasterxmlJacksonCoreUtilByteArrayBuilder;
@class IOSByteArray;
@class IOSCharArray;
@class IOSClass;
@class IOSIntArray;
@class JavaLangThrowable;
@class JavaMathBigDecimal;
@class JavaMathBigInteger;
@protocol ComFasterxmlJacksonCoreObjectReadContext;
@protocol ComFasterxmlJacksonCoreSerializableString;
@protocol ComFasterxmlJacksonCoreTreeNode;

/*!
 @brief Intermediate base class used by all Jackson <code>JsonParser</code>
  implementations, but does not add any additional fields that depend
  on particular method of obtaining input.
 <p>
  Note that 'minimal' here mostly refers to minimal number of fields
  (size) and functionality that is specific to certain types
  of parser implementations; but not necessarily to number of methods.
 */
@interface ComFasterxmlJacksonCoreBaseParserMinimalBase : ComFasterxmlJacksonCoreJsonParser {
 @public
  /*!
   @brief Context object provided by higher level functionality like
  databinding for two reasons: passing configuration information
  during construction, and to allow calling of some databind
  operations via parser instance.
   @since 3.0
   */
  id<ComFasterxmlJacksonCoreObjectReadContext> _objectReadContext_;
  /*!
   @brief Last token retrieved via <code>nextToken</code>, if any.
   Null before the first call to <code>nextToken()</code>,
  as well as if token has been explicitly cleared
   */
  ComFasterxmlJacksonCoreJsonToken *_currToken_;
  /*!
   @brief Last cleared token, if any: that is, value that was in
  effect when <code>clearCurrentToken</code> was called.
   */
  ComFasterxmlJacksonCoreJsonToken *_lastClearedToken_;
}

#pragma mark Public

- (void)clearCurrentToken;

- (void)close;

- (jint)currentFieldNameWithComFasterxmlJacksonCoreSymFieldNameMatcher:(ComFasterxmlJacksonCoreSymFieldNameMatcher *)matcher;

- (NSString *)currentName;

- (ComFasterxmlJacksonCoreJsonToken *)currentToken;

- (jint)currentTokenId;

- (void)finishToken;

- (IOSByteArray *)getBinaryValueWithComFasterxmlJacksonCoreBase64Variant:(ComFasterxmlJacksonCoreBase64Variant *)b64variant;

- (ComFasterxmlJacksonCoreJsonToken *)getLastClearedToken;

- (id<ComFasterxmlJacksonCoreObjectReadContext>)getObjectReadContext;

- (ComFasterxmlJacksonCoreTokenStreamContext *)getParsingContext;

- (NSString *)getText;

- (IOSCharArray *)getTextCharacters;

- (jint)getTextLength;

- (jint)getTextOffset;

- (jboolean)getValueAsBooleanWithBoolean:(jboolean)defaultValue;

- (jdouble)getValueAsDoubleWithDouble:(jdouble)defaultValue;

- (jint)getValueAsInt;

- (jint)getValueAsIntWithInt:(jint)defaultValue;

- (jlong)getValueAsLong;

- (jlong)getValueAsLongWithLong:(jlong)defaultValue;

- (NSString *)getValueAsString;

- (NSString *)getValueAsStringWithNSString:(NSString *)defaultValue;

- (jboolean)hasCurrentToken;

- (jboolean)hasTextCharacters;

- (jboolean)hasTokenWithComFasterxmlJacksonCoreJsonToken:(ComFasterxmlJacksonCoreJsonToken *)t;

- (jboolean)hasTokenIdWithInt:(jint)id_;

- (jboolean)isClosed;

- (jboolean)isExpectedStartArrayToken;

- (jboolean)isExpectedStartObjectToken;

- (NSString *)nextFieldName;

- (jint)nextFieldNameWithComFasterxmlJacksonCoreSymFieldNameMatcher:(ComFasterxmlJacksonCoreSymFieldNameMatcher *)matcher;

- (jboolean)nextFieldNameWithComFasterxmlJacksonCoreSerializableString:(id<ComFasterxmlJacksonCoreSerializableString>)str;

- (ComFasterxmlJacksonCoreJsonToken *)nextToken;

- (ComFasterxmlJacksonCoreJsonToken *)nextValue;

- (void)overrideCurrentNameWithNSString:(NSString *)name;

- (id)readValueAsWithIOSClass:(IOSClass *)valueType;

- (id)readValueAsWithComFasterxmlJacksonCoreTypeResolvedType:(ComFasterxmlJacksonCoreTypeResolvedType *)type;

- (id)readValueAsWithComFasterxmlJacksonCoreTypeTypeReference:(ComFasterxmlJacksonCoreTypeTypeReference *)valueTypeRef;

- (id<ComFasterxmlJacksonCoreTreeNode>)readValueAsTree;

- (ComFasterxmlJacksonCoreJsonParser *)skipChildren;

#pragma mark Protected

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt;

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                                   withInt:(jint)features;

+ (NSString *)_asciiWithByteArray:(IOSByteArray *)b;

+ (IOSByteArray *)_asciiBytesWithNSString:(NSString *)str;

- (ComFasterxmlJacksonCoreJsonParseException *)_constructErrorWithNSString:(NSString *)msg
                                                     withJavaLangThrowable:(JavaLangThrowable *)t;

/*!
 @brief Helper method that can be used for base64 decoding in cases where
  encoded content has already been read as a String.
 */
- (void)_decodeBase64WithNSString:(NSString *)str
withComFasterxmlJacksonCoreUtilByteArrayBuilder:(ComFasterxmlJacksonCoreUtilByteArrayBuilder *)builder
withComFasterxmlJacksonCoreBase64Variant:(ComFasterxmlJacksonCoreBase64Variant *)b64variant;

+ (NSString *)_getCharDescWithInt:(jint)ch;

/*!
 @brief Method sub-classes need to implement
 */
- (void)_handleEOF;

- (jchar)_handleUnrecognizedCharacterEscapeWithChar:(jchar)ch;

/*!
 @brief Helper method used to determine whether we are currently pointing to
  a String value of "null" (NOT a null token); and, if so, that parser
  is to recognize and return it similar to if it was real null token.
 */
- (jboolean)_hasTextualNullWithNSString:(NSString *)value;

- (void)_reportErrorWithNSString:(NSString *)msg;

- (void)_reportErrorWithNSString:(NSString *)msg
                          withId:(id)arg;

- (void)_reportErrorWithNSString:(NSString *)msg
                          withId:(id)arg1
                          withId:(id)arg2;

- (void)_reportInvalidEOF;

- (void)_reportInvalidEOFWithNSString:(NSString *)msg
 withComFasterxmlJacksonCoreJsonToken:(ComFasterxmlJacksonCoreJsonToken *)currToken;

- (void)_reportInvalidEOFInValueWithComFasterxmlJacksonCoreJsonToken:(ComFasterxmlJacksonCoreJsonToken *)type;

- (void)_reportMissingRootWSWithInt:(jint)ch;

- (void)_reportUnexpectedCharWithInt:(jint)ch
                        withNSString:(NSString *)comment;

- (void)_throwInternal;

- (void)_throwInvalidSpaceWithInt:(jint)i;

/*!
 @brief Method called to report a problem with unquoted control character.
 Note: starting with version 1.4, it is possible to suppress
  exception by enabling <code>Feature.ALLOW_UNQUOTED_CONTROL_CHARS</code>.
 */
- (void)_throwUnquotedSpaceWithInt:(jint)i
                      withNSString:(NSString *)ctxtDesc;

- (void)_wrapErrorWithNSString:(NSString *)msg
         withJavaLangThrowable:(JavaLangThrowable *)t;

- (void)reportInvalidNumberWithNSString:(NSString *)msg;

- (void)reportOverflowInt;

- (void)reportOverflowLong;

- (void)reportUnexpectedNumberCharWithInt:(jint)ch
                             withNSString:(NSString *)comment;

@end

J2OBJC_STATIC_INIT(ComFasterxmlJacksonCoreBaseParserMinimalBase)

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreBaseParserMinimalBase, _objectReadContext_, id<ComFasterxmlJacksonCoreObjectReadContext>)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreBaseParserMinimalBase, _currToken_, ComFasterxmlJacksonCoreJsonToken *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreBaseParserMinimalBase, _lastClearedToken_, ComFasterxmlJacksonCoreJsonToken *)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_TAB(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_TAB 9
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_TAB, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_LF(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_LF 10
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_LF, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_CR(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_CR 13
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_CR, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_SPACE(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_SPACE 32
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_SPACE, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_LBRACKET(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_LBRACKET 91
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_LBRACKET, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_RBRACKET(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_RBRACKET 93
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_RBRACKET, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_LCURLY(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_LCURLY 123
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_LCURLY, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_RCURLY(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_RCURLY 125
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_RCURLY, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_QUOTE(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_QUOTE 34
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_QUOTE, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_APOS(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_APOS 39
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_APOS, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_BACKSLASH(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_BACKSLASH 92
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_BACKSLASH, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_SLASH(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_SLASH 47
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_SLASH, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_ASTERISK(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_ASTERISK 42
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_ASTERISK, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_COLON(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_COLON 58
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_COLON, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_COMMA(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_COMMA 44
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_COMMA, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_HASH(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_HASH 35
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_HASH, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_0(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_0 48
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_0, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_9(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_9 57
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_9, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_MINUS(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_MINUS 45
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_MINUS, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_PLUS(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_PLUS 43
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_PLUS, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_PERIOD(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_PERIOD 46
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_PERIOD, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_e(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_e 101
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_e, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_INT_E(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_INT_E 69
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, INT_E, jint)

inline jchar ComFasterxmlJacksonCoreBaseParserMinimalBase_get_CHAR_NULL(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_CHAR_NULL 0x0000
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, CHAR_NULL, jchar)

inline IOSByteArray *ComFasterxmlJacksonCoreBaseParserMinimalBase_get_NO_BYTES(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSByteArray *ComFasterxmlJacksonCoreBaseParserMinimalBase_NO_BYTES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreBaseParserMinimalBase, NO_BYTES, IOSByteArray *)

inline IOSIntArray *ComFasterxmlJacksonCoreBaseParserMinimalBase_get_NO_INTS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *ComFasterxmlJacksonCoreBaseParserMinimalBase_NO_INTS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreBaseParserMinimalBase, NO_INTS, IOSIntArray *)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_NR_UNKNOWN(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_NR_UNKNOWN 0
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, NR_UNKNOWN, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_NR_INT(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_NR_INT 1
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, NR_INT, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_NR_LONG(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_NR_LONG 2
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, NR_LONG, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_NR_BIGINT(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_NR_BIGINT 4
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, NR_BIGINT, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_NR_DOUBLE(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_NR_DOUBLE 8
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, NR_DOUBLE, jint)

inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_NR_BIGDECIMAL(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_NR_BIGDECIMAL 16
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, NR_BIGDECIMAL, jint)

/*!
 @brief NOTE!
 Not used by JSON implementation but used by many of binary codecs
 */
inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_NR_FLOAT(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_NR_FLOAT 32
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, NR_FLOAT, jint)

inline JavaMathBigInteger *ComFasterxmlJacksonCoreBaseParserMinimalBase_get_BI_MIN_INT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaMathBigInteger *ComFasterxmlJacksonCoreBaseParserMinimalBase_BI_MIN_INT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreBaseParserMinimalBase, BI_MIN_INT, JavaMathBigInteger *)

inline JavaMathBigInteger *ComFasterxmlJacksonCoreBaseParserMinimalBase_get_BI_MAX_INT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaMathBigInteger *ComFasterxmlJacksonCoreBaseParserMinimalBase_BI_MAX_INT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreBaseParserMinimalBase, BI_MAX_INT, JavaMathBigInteger *)

inline JavaMathBigInteger *ComFasterxmlJacksonCoreBaseParserMinimalBase_get_BI_MIN_LONG(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaMathBigInteger *ComFasterxmlJacksonCoreBaseParserMinimalBase_BI_MIN_LONG;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreBaseParserMinimalBase, BI_MIN_LONG, JavaMathBigInteger *)

inline JavaMathBigInteger *ComFasterxmlJacksonCoreBaseParserMinimalBase_get_BI_MAX_LONG(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaMathBigInteger *ComFasterxmlJacksonCoreBaseParserMinimalBase_BI_MAX_LONG;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreBaseParserMinimalBase, BI_MAX_LONG, JavaMathBigInteger *)

inline JavaMathBigDecimal *ComFasterxmlJacksonCoreBaseParserMinimalBase_get_BD_MIN_LONG(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaMathBigDecimal *ComFasterxmlJacksonCoreBaseParserMinimalBase_BD_MIN_LONG;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreBaseParserMinimalBase, BD_MIN_LONG, JavaMathBigDecimal *)

inline JavaMathBigDecimal *ComFasterxmlJacksonCoreBaseParserMinimalBase_get_BD_MAX_LONG(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaMathBigDecimal *ComFasterxmlJacksonCoreBaseParserMinimalBase_BD_MAX_LONG;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreBaseParserMinimalBase, BD_MAX_LONG, JavaMathBigDecimal *)

inline JavaMathBigDecimal *ComFasterxmlJacksonCoreBaseParserMinimalBase_get_BD_MIN_INT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaMathBigDecimal *ComFasterxmlJacksonCoreBaseParserMinimalBase_BD_MIN_INT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreBaseParserMinimalBase, BD_MIN_INT, JavaMathBigDecimal *)

inline JavaMathBigDecimal *ComFasterxmlJacksonCoreBaseParserMinimalBase_get_BD_MAX_INT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaMathBigDecimal *ComFasterxmlJacksonCoreBaseParserMinimalBase_BD_MAX_INT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreBaseParserMinimalBase, BD_MAX_INT, JavaMathBigDecimal *)

inline jlong ComFasterxmlJacksonCoreBaseParserMinimalBase_get_MIN_INT_L(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_MIN_INT_L -2147483648LL
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, MIN_INT_L, jlong)

inline jlong ComFasterxmlJacksonCoreBaseParserMinimalBase_get_MAX_INT_L(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_MAX_INT_L 2147483647LL
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, MAX_INT_L, jlong)

inline jdouble ComFasterxmlJacksonCoreBaseParserMinimalBase_get_MIN_LONG_D(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_MIN_LONG_D -9.223372036854776E18
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, MIN_LONG_D, jdouble)

inline jdouble ComFasterxmlJacksonCoreBaseParserMinimalBase_get_MAX_LONG_D(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_MAX_LONG_D 9.223372036854776E18
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, MAX_LONG_D, jdouble)

inline jdouble ComFasterxmlJacksonCoreBaseParserMinimalBase_get_MIN_INT_D(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_MIN_INT_D -2.147483648E9
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, MIN_INT_D, jdouble)

inline jdouble ComFasterxmlJacksonCoreBaseParserMinimalBase_get_MAX_INT_D(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_MAX_INT_D 2.147483647E9
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, MAX_INT_D, jdouble)

/*!
 @brief Maximum number of characters to include in token reported
  as part of error messages.
 */
inline jint ComFasterxmlJacksonCoreBaseParserMinimalBase_get_MAX_ERROR_TOKEN_LENGTH(void);
#define ComFasterxmlJacksonCoreBaseParserMinimalBase_MAX_ERROR_TOKEN_LENGTH 256
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreBaseParserMinimalBase, MAX_ERROR_TOKEN_LENGTH, jint)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreBaseParserMinimalBase_initWithComFasterxmlJacksonCoreObjectReadContext_(ComFasterxmlJacksonCoreBaseParserMinimalBase *self, id<ComFasterxmlJacksonCoreObjectReadContext> readCtxt);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreBaseParserMinimalBase_initWithComFasterxmlJacksonCoreObjectReadContext_withInt_(ComFasterxmlJacksonCoreBaseParserMinimalBase *self, id<ComFasterxmlJacksonCoreObjectReadContext> readCtxt, jint features);

FOUNDATION_EXPORT NSString *ComFasterxmlJacksonCoreBaseParserMinimalBase__getCharDescWithInt_(jint ch);

FOUNDATION_EXPORT IOSByteArray *ComFasterxmlJacksonCoreBaseParserMinimalBase__asciiBytesWithNSString_(NSString *str);

FOUNDATION_EXPORT NSString *ComFasterxmlJacksonCoreBaseParserMinimalBase__asciiWithByteArray_(IOSByteArray *b);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreBaseParserMinimalBase)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreBaseParserMinimalBase")
