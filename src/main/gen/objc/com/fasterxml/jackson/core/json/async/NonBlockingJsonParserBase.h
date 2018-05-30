//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase")
#ifdef RESTRICT_ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase
#define INCLUDE_ALL_ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase || defined(INCLUDE_ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase))
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_

#define RESTRICT_ComFasterxmlJacksonCoreBaseParserBase 1
#define INCLUDE_ComFasterxmlJacksonCoreBaseParserBase 1
#include "com/fasterxml/jackson/core/base/ParserBase.h"

@class ComFasterxmlJacksonCoreBase64Variant;
@class ComFasterxmlJacksonCoreIoIOContext;
@class ComFasterxmlJacksonCoreJsonLocation;
@class ComFasterxmlJacksonCoreJsonToken;
@class ComFasterxmlJacksonCoreObjectCodec;
@class ComFasterxmlJacksonCoreSymByteQuadsCanonicalizer;
@class IOSByteArray;
@class IOSCharArray;
@class IOSDoubleArray;
@class IOSIntArray;
@class IOSObjectArray;
@class JavaIoOutputStream;
@class JavaIoWriter;

/*!
 @brief Intermediate base class for non-blocking JSON parsers.
 */
@interface ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase : ComFasterxmlJacksonCoreBaseParserBase {
 @public
  /*!
   @brief Symbol table that contains field names encountered so far
   */
  ComFasterxmlJacksonCoreSymByteQuadsCanonicalizer *_symbols_;
  /*!
   @brief Temporary buffer used for name parsing.
   */
  IOSIntArray *_quadBuffer_;
  jint _quadLength_;
  jint _quad1_;
  jint _pending32_;
  jint _pendingBytes_;
  jint _quoted32_;
  jint _quotedDigits_;
  /*!
   @brief Current main decoding state within logical tree
   */
  jint _majorState_;
  /*!
   @brief Value of <code>_majorState</code> after completing a scalar value
   */
  jint _majorStateAfterValue_;
  /*!
   @brief Additional indicator within state; contextually relevant for just that state
   */
  jint _minorState_;
  /*!
   @brief Secondary minor state indicator used during decoding of escapes and/or
  multi-byte Unicode characters
   */
  jint _minorStateAfterSplit_;
  /*!
   @brief Flag that is sent when calling application indicates that there will
  be no more input to parse.
   */
  jboolean _endOfInput_;
  /*!
   @brief When tokenizing non-standard ("odd") tokens, this is the type to consider;
  also works as index to actual textual representation.
   */
  jint _nonStdTokenType_;
  /*!
   @brief Since we are fed content that may or may not start at zero offset, we need
  to keep track of the first byte within that buffer, to be able to calculate
  logical offset within input "stream"
   */
  jint _currBufferStart_;
  /*!
   @brief Alternate row tracker, used to keep track of position by `\r` marker
  (whereas <code>_currInputRow</code> tracks `\n`).Used to simplify
  tracking of linefeeds, assuming that input typically uses various
  linefeed combinations (`\r`, `\n` or `\r\n`) consistently, in which
  case we can simply choose max of two row candidates.
   */
  jint _currInputRowAlt_;
}

#pragma mark Public

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                             withInt:(jint)parserFeatures
                withComFasterxmlJacksonCoreSymByteQuadsCanonicalizer:(ComFasterxmlJacksonCoreSymByteQuadsCanonicalizer *)sym;

/*!
 @since 2.9
 */
- (jboolean)canParseAsync;

- (IOSByteArray *)getBinaryValueWithComFasterxmlJacksonCoreBase64Variant:(ComFasterxmlJacksonCoreBase64Variant *)b64variant;

- (ComFasterxmlJacksonCoreObjectCodec *)getCodec;

- (ComFasterxmlJacksonCoreJsonLocation *)getCurrentLocation;

- (id)getEmbeddedObject;

- (id)getInputSource;

/*!
 @brief Method for accessing textual representation of the current event;
  if no current event (before first call to <code>nextToken</code>, or
  after encountering end-of-input), returns null.
 Method can be called for any event.
 */
- (NSString *)getText;

- (jint)getTextWithJavaIoWriter:(JavaIoWriter *)writer;

- (IOSCharArray *)getTextCharacters;

- (jint)getTextLength;

- (jint)getTextOffset;

- (ComFasterxmlJacksonCoreJsonLocation *)getTokenLocation;

- (NSString *)getValueAsString;

- (NSString *)getValueAsStringWithNSString:(NSString *)defValue;

- (jboolean)hasTextCharacters;

- (jint)readBinaryValueWithComFasterxmlJacksonCoreBase64Variant:(ComFasterxmlJacksonCoreBase64Variant *)b64variant
                                         withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (jint)releaseBufferedWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (void)setCodecWithComFasterxmlJacksonCoreObjectCodec:(ComFasterxmlJacksonCoreObjectCodec *)c;

#pragma mark Protected

/*!
 @brief This is the main workhorse method used when we take a symbol
  table miss.It needs to demultiplex individual bytes, decode
  multi-byte chars (if any), and then construct Name instance
  and add it to the symbol table.
 */
- (NSString *)_addNameWithIntArray:(IOSIntArray *)quads
                           withInt:(jint)qlen
                           withInt:(jint)lastQuadBytes;

- (ComFasterxmlJacksonCoreJsonToken *)_closeArrayScope;

- (void)_closeInput;

- (ComFasterxmlJacksonCoreJsonToken *)_closeObjectScope;

/*!
 @brief Helper method called at point when all input has been exhausted and
  input feeder has indicated no more input will be forthcoming.
 */
- (ComFasterxmlJacksonCoreJsonToken *)_eofAsNextToken;

- (ComFasterxmlJacksonCoreJsonToken *)_fieldCompleteWithNSString:(NSString *)name;

- (NSString *)_findNameWithInt:(jint)q1
                       withInt:(jint)lastQuadBytes;

- (NSString *)_findNameWithInt:(jint)q1
                       withInt:(jint)q2
                       withInt:(jint)lastQuadBytes;

- (NSString *)_findNameWithInt:(jint)q1
                       withInt:(jint)q2
                       withInt:(jint)q3
                       withInt:(jint)lastQuadBytes;

- (NSString *)_getText2WithComFasterxmlJacksonCoreJsonToken:(ComFasterxmlJacksonCoreJsonToken *)t;

- (NSString *)_nonStdTokenWithInt:(jint)type;

/*!
 @brief Helper method needed to fix [jackson-core#148], masking of 0x00 character
 */
+ (jint)_padLastQuadWithInt:(jint)q
                    withInt:(jint)bytes;

- (void)_releaseBuffers;

- (void)_reportInvalidCharWithInt:(jint)c;

- (void)_reportInvalidInitialWithInt:(jint)mask;

- (void)_reportInvalidOtherWithInt:(jint)mask;

- (void)_reportInvalidOtherWithInt:(jint)mask
                           withInt:(jint)ptr;

- (ComFasterxmlJacksonCoreJsonToken *)_startArrayScope;

- (ComFasterxmlJacksonCoreJsonToken *)_startObjectScope;

- (void)_updateTokenLocation;

- (ComFasterxmlJacksonCoreJsonToken *)_valueCompleteWithComFasterxmlJacksonCoreJsonToken:(ComFasterxmlJacksonCoreJsonToken *)t;

- (ComFasterxmlJacksonCoreJsonToken *)_valueCompleteIntWithInt:(jint)value
                                                  withNSString:(NSString *)asText;

- (ComFasterxmlJacksonCoreJsonToken *)_valueNonStdNumberCompleteWithInt:(jint)type;

- (ComFasterxmlJacksonCoreSymByteQuadsCanonicalizer *)symbolTableForTests;

@end

J2OBJC_STATIC_INIT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase)

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, _symbols_, ComFasterxmlJacksonCoreSymByteQuadsCanonicalizer *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, _quadBuffer_, IOSIntArray *)

/*!
 @brief State right after parser has been constructed, before seeing the first byte
  to handle possible (but optional) BOM.
 */
inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MAJOR_INITIAL(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MAJOR_INITIAL 0
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MAJOR_INITIAL, jint)

/*!
 @brief State right after parser a root value has been
  finished, but next token has not yet been recognized.
 */
inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MAJOR_ROOT(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MAJOR_ROOT 1
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MAJOR_ROOT, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MAJOR_OBJECT_FIELD_FIRST(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MAJOR_OBJECT_FIELD_FIRST 2
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MAJOR_OBJECT_FIELD_FIRST, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MAJOR_OBJECT_FIELD_NEXT(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MAJOR_OBJECT_FIELD_NEXT 3
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MAJOR_OBJECT_FIELD_NEXT, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MAJOR_OBJECT_VALUE(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MAJOR_OBJECT_VALUE 4
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MAJOR_OBJECT_VALUE, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MAJOR_ARRAY_ELEMENT_FIRST(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MAJOR_ARRAY_ELEMENT_FIRST 5
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MAJOR_ARRAY_ELEMENT_FIRST, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MAJOR_ARRAY_ELEMENT_NEXT(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MAJOR_ARRAY_ELEMENT_NEXT 6
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MAJOR_ARRAY_ELEMENT_NEXT, jint)

/*!
 @brief State after non-blocking input source has indicated that no more input
  is forthcoming AND we have exhausted all the input
 */
inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MAJOR_CLOSED(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MAJOR_CLOSED 7
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MAJOR_CLOSED, jint)

/*!
 @brief State in which part of (UTF-8) BOM has been detected, but not yet completely.
 */
inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_ROOT_BOM(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_ROOT_BOM 1
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_ROOT_BOM, jint)

/*!
 @brief State between root-level value, waiting for at least one white-space
  character as separator
 */
inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_ROOT_NEED_SEPARATOR(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_ROOT_NEED_SEPARATOR 2
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_ROOT_NEED_SEPARATOR, jint)

/*!
 @brief State between root-level value, having processed at least one white-space
  character, and expecting either more, start of a value, or end of input
  stream.
 */
inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_ROOT_GOT_SEPARATOR(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_ROOT_GOT_SEPARATOR 3
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_ROOT_GOT_SEPARATOR, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_FIELD_LEADING_WS(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_FIELD_LEADING_WS 4
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_FIELD_LEADING_WS, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_FIELD_LEADING_COMMA(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_FIELD_LEADING_COMMA 5
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_FIELD_LEADING_COMMA, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_FIELD_NAME(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_FIELD_NAME 7
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_FIELD_NAME, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_FIELD_NAME_ESCAPE(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_FIELD_NAME_ESCAPE 8
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_FIELD_NAME_ESCAPE, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_FIELD_APOS_NAME(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_FIELD_APOS_NAME 9
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_FIELD_APOS_NAME, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_FIELD_UNQUOTED_NAME(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_FIELD_UNQUOTED_NAME 10
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_FIELD_UNQUOTED_NAME, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_VALUE_LEADING_WS(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_VALUE_LEADING_WS 12
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_VALUE_LEADING_WS, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_VALUE_EXPECTING_COMMA(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_VALUE_EXPECTING_COMMA 13
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_VALUE_EXPECTING_COMMA, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_VALUE_EXPECTING_COLON(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_VALUE_EXPECTING_COLON 14
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_VALUE_EXPECTING_COLON, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_VALUE_WS_AFTER_COMMA(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_VALUE_WS_AFTER_COMMA 15
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_VALUE_WS_AFTER_COMMA, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_VALUE_TOKEN_NULL(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_VALUE_TOKEN_NULL 16
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_VALUE_TOKEN_NULL, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_VALUE_TOKEN_TRUE(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_VALUE_TOKEN_TRUE 17
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_VALUE_TOKEN_TRUE, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_VALUE_TOKEN_FALSE(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_VALUE_TOKEN_FALSE 18
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_VALUE_TOKEN_FALSE, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_VALUE_TOKEN_NON_STD(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_VALUE_TOKEN_NON_STD 19
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_VALUE_TOKEN_NON_STD, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_NUMBER_MINUS(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_NUMBER_MINUS 23
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_NUMBER_MINUS, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_NUMBER_ZERO(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_NUMBER_ZERO 24
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_NUMBER_ZERO, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_NUMBER_MINUSZERO(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_NUMBER_MINUSZERO 25
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_NUMBER_MINUSZERO, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_NUMBER_INTEGER_DIGITS(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_NUMBER_INTEGER_DIGITS 26
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_NUMBER_INTEGER_DIGITS, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_NUMBER_FRACTION_DIGITS(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_NUMBER_FRACTION_DIGITS 30
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_NUMBER_FRACTION_DIGITS, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_NUMBER_EXPONENT_MARKER(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_NUMBER_EXPONENT_MARKER 31
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_NUMBER_EXPONENT_MARKER, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_NUMBER_EXPONENT_DIGITS(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_NUMBER_EXPONENT_DIGITS 32
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_NUMBER_EXPONENT_DIGITS, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_VALUE_STRING(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_VALUE_STRING 40
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_VALUE_STRING, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_VALUE_STRING_ESCAPE(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_VALUE_STRING_ESCAPE 41
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_VALUE_STRING_ESCAPE, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_VALUE_STRING_UTF8_2(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_VALUE_STRING_UTF8_2 42
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_VALUE_STRING_UTF8_2, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_VALUE_STRING_UTF8_3(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_VALUE_STRING_UTF8_3 43
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_VALUE_STRING_UTF8_3, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_VALUE_STRING_UTF8_4(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_VALUE_STRING_UTF8_4 44
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_VALUE_STRING_UTF8_4, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_VALUE_APOS_STRING(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_VALUE_APOS_STRING 45
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_VALUE_APOS_STRING, jint)

/*!
 @brief Special state at which point decoding of a non-quoted token has encountered
  a problem; that is, either not matching fully (like "truf" instead of "true",
  at "tru"), or not having trailing separator (or end of input), like "trueful".
 Attempt is made, then, to decode likely full input token to report suitable
  error.
 */
inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_VALUE_TOKEN_ERROR(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_VALUE_TOKEN_ERROR 50
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_VALUE_TOKEN_ERROR, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_COMMENT_LEADING_SLASH(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_COMMENT_LEADING_SLASH 51
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_COMMENT_LEADING_SLASH, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_COMMENT_CLOSING_ASTERISK(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_COMMENT_CLOSING_ASTERISK 52
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_COMMENT_CLOSING_ASTERISK, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_COMMENT_C(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_COMMENT_C 53
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_COMMENT_C, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_COMMENT_CPP(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_COMMENT_CPP 54
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_COMMENT_CPP, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_MINOR_COMMENT_YAML(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_MINOR_COMMENT_YAML 55
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, MINOR_COMMENT_YAML, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_NON_STD_TOKEN_NAN(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_NON_STD_TOKEN_NAN 0
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, NON_STD_TOKEN_NAN, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_NON_STD_TOKEN_INFINITY(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_NON_STD_TOKEN_INFINITY 1
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, NON_STD_TOKEN_INFINITY, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_NON_STD_TOKEN_PLUS_INFINITY(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_NON_STD_TOKEN_PLUS_INFINITY 2
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, NON_STD_TOKEN_PLUS_INFINITY, jint)

inline jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_NON_STD_TOKEN_MINUS_INFINITY(void);
#define ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_NON_STD_TOKEN_MINUS_INFINITY 3
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, NON_STD_TOKEN_MINUS_INFINITY, jint)

inline IOSObjectArray *ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_NON_STD_TOKENS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_NON_STD_TOKENS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, NON_STD_TOKENS, IOSObjectArray *)

inline IOSDoubleArray *ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_get_NON_STD_TOKEN_VALUES(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSDoubleArray *ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_NON_STD_TOKEN_VALUES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase, NON_STD_TOKEN_VALUES, IOSDoubleArray *)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase_initWithComFasterxmlJacksonCoreIoIOContext_withInt_withComFasterxmlJacksonCoreSymByteQuadsCanonicalizer_(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase *self, ComFasterxmlJacksonCoreIoIOContext *ctxt, jint parserFeatures, ComFasterxmlJacksonCoreSymByteQuadsCanonicalizer *sym);

FOUNDATION_EXPORT jint ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase__padLastQuadWithInt_withInt_(jint q, jint bytes);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreJsonAsyncNonBlockingJsonParserBase")