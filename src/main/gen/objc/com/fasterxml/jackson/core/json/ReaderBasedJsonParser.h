//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/json/ReaderBasedJsonParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreJsonReaderBasedJsonParser")
#ifdef RESTRICT_ComFasterxmlJacksonCoreJsonReaderBasedJsonParser
#define INCLUDE_ALL_ComFasterxmlJacksonCoreJsonReaderBasedJsonParser 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreJsonReaderBasedJsonParser 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreJsonReaderBasedJsonParser

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreJsonReaderBasedJsonParser_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreJsonReaderBasedJsonParser || defined(INCLUDE_ComFasterxmlJacksonCoreJsonReaderBasedJsonParser))
#define ComFasterxmlJacksonCoreJsonReaderBasedJsonParser_

#define RESTRICT_ComFasterxmlJacksonCoreBaseParserBase 1
#define INCLUDE_ComFasterxmlJacksonCoreBaseParserBase 1
#include "com/fasterxml/jackson/core/base/ParserBase.h"

@class ComFasterxmlJacksonCoreBase64Variant;
@class ComFasterxmlJacksonCoreIoIOContext;
@class ComFasterxmlJacksonCoreJsonLocation;
@class ComFasterxmlJacksonCoreJsonToken;
@class ComFasterxmlJacksonCoreSymCharsToNameCanonicalizer;
@class IOSByteArray;
@class IOSCharArray;
@class IOSIntArray;
@class JavaIoOutputStream;
@class JavaIoReader;
@class JavaIoWriter;
@class JavaLangBoolean;
@protocol ComFasterxmlJacksonCoreObjectReadContext;
@protocol ComFasterxmlJacksonCoreSerializableString;

/*!
 @brief This is a concrete implementation of <code>JsonParser</code>, which is
  based on a <code>java.io.Reader</code> to handle low-level character
  conversion tasks.
 */
@interface ComFasterxmlJacksonCoreJsonReaderBasedJsonParser : ComFasterxmlJacksonCoreBaseParserBase {
 @public
  /*!
   @brief Reader that can be used for reading more content, if one
  buffer from input source, but in some cases pre-loaded buffer
  is handed to the parser.
   */
  JavaIoReader *_reader_;
  /*!
   @brief Current buffer from which data is read; generally data is read into
  buffer from input source.
   */
  IOSCharArray *_inputBuffer_;
  /*!
   @brief Flag that indicates whether the input buffer is recycable (and
  needs to be returned to recycler once we are done) or not.
   <p>
  If it is not, it also means that parser can NOT modify underlying
  buffer.
   */
  jboolean _bufferRecyclable_;
  ComFasterxmlJacksonCoreSymCharsToNameCanonicalizer *_symbols_;
  jint _hashSeed_;
  /*!
   @brief Flag that indicates that the current token has not yet
  been fully processed, and needs to be finished for
  some access (or skipped to obtain the next token)
   */
  jboolean _tokenIncomplete_;
  /*!
   @brief Value of <code>_inputPtr</code> at the time when the first character of
  name token was read.Used for calculating token location when requested;
  combined with <code>_currInputProcessed</code>, may be updated appropriately
  as needed.
   */
  jlong _nameStartOffset_;
  /*!
   @since 2.7
   */
  jint _nameStartRow_;
  /*!
   @since 2.7
   */
  jint _nameStartCol_;
}

#pragma mark Public

/*!
 @brief Method called when input comes as a <code>java.io.Reader</code>, and buffer allocation
  can be done using default mechanism.
 */
- (instancetype __nonnull)initWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                    withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                                   withInt:(jint)features
                                                          withJavaIoReader:(JavaIoReader *)r
                    withComFasterxmlJacksonCoreSymCharsToNameCanonicalizer:(ComFasterxmlJacksonCoreSymCharsToNameCanonicalizer *)st;

/*!
 @brief Method called when caller wants to provide input buffer directly,
  and it may or may not be recyclable use standard recycle context.
 */
- (instancetype __nonnull)initWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                    withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                                   withInt:(jint)features
                                                          withJavaIoReader:(JavaIoReader *)r
                    withComFasterxmlJacksonCoreSymCharsToNameCanonicalizer:(ComFasterxmlJacksonCoreSymCharsToNameCanonicalizer *)st
                                                             withCharArray:(IOSCharArray *)inputBuffer
                                                                   withInt:(jint)start
                                                                   withInt:(jint)end
                                                               withBoolean:(jboolean)bufferRecyclable;

- (void)finishToken;

- (IOSByteArray *)getBinaryValueWithComFasterxmlJacksonCoreBase64Variant:(ComFasterxmlJacksonCoreBase64Variant *)b64variant;

- (ComFasterxmlJacksonCoreJsonLocation *)getCurrentLocation;

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

- (JavaLangBoolean *)nextBooleanValue;

- (NSString *)nextFieldName;

- (jboolean)nextFieldNameWithComFasterxmlJacksonCoreSerializableString:(id<ComFasterxmlJacksonCoreSerializableString>)sstr;

- (jint)nextIntValueWithInt:(jint)defaultValue;

- (jlong)nextLongValueWithLong:(jlong)defaultValue;

- (NSString *)nextTextValue;

/*!
 @return Next token from the stream, if any found, or null
    to indicate end-of-input
 */
- (ComFasterxmlJacksonCoreJsonToken *)nextToken;

- (jint)readBinaryValueWithComFasterxmlJacksonCoreBase64Variant:(ComFasterxmlJacksonCoreBase64Variant *)b64variant
                                         withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (jint)releaseBufferedWithJavaIoWriter:(JavaIoWriter *)w;

#pragma mark Protected

- (void)_closeInput;

/*!
 @brief Efficient handling for incremental parsing of base64-encoded
  textual content.
 */
- (IOSByteArray *)_decodeBase64WithComFasterxmlJacksonCoreBase64Variant:(ComFasterxmlJacksonCoreBase64Variant *)b64variant;

- (jchar)_decodeEscaped;

- (void)_finishString;

- (void)_finishString2;

- (NSString *)_getText2WithComFasterxmlJacksonCoreJsonToken:(ComFasterxmlJacksonCoreJsonToken *)t;

- (ComFasterxmlJacksonCoreJsonToken *)_handleApos;

/*!
 @brief Method called if expected numeric value (due to leading sign) does not
  look like a number
 */
- (ComFasterxmlJacksonCoreJsonToken *)_handleInvalidNumberStartWithInt:(jint)ch
                                                           withBoolean:(jboolean)negative;

/*!
 @brief Method called when we see non-white space character other
  than double quote, when expecting a field name.
 In standard mode will just throw an expection; but
  in non-standard modes may be able to parse name.
 */
- (NSString *)_handleOddNameWithInt:(jint)i;

/*!
 @brief Method for handling cases where first non-space character
  of an expected value token is not legal for standard JSON content.
 */
- (ComFasterxmlJacksonCoreJsonToken *)_handleOddValueWithInt:(jint)i;

- (jboolean)_isNextTokenNameMaybeWithInt:(jint)i
                            withNSString:(NSString *)nameToMatch;

- (jboolean)_loadMore;

- (void)_loadMoreGuaranteed;

/*!
 @brief Helper method for checking whether input matches expected token
 */
- (void)_matchTokenWithNSString:(NSString *)matchStr
                        withInt:(jint)i;

- (NSString *)_parseAposName;

- (NSString *)_parseName;

- (ComFasterxmlJacksonCoreJsonToken *)_parseNegNumber;

/*!
 @brief Initial parsing method for number values.It needs to be able
  to parse enough input to be able to determine whether the
  value is to be considered a simple integer value, or a more
  generic decimal value: latter of which needs to be expressed
  as a floating point number.
 The basic rule is that if the number
  has no fractional or exponential part, it is an integer; otherwise
  a floating point number.
 <p>
  Because much of input has to be processed in any case, no partial
  parsing is done: all input text will be stored for further
  processing. However, actual numeric value conversion will be
  deferred, since it is usually the most complicated and costliest
  part of processing.
 */
- (ComFasterxmlJacksonCoreJsonToken *)_parsePosNumberWithInt:(jint)ch;

- (jint)_readBinaryWithComFasterxmlJacksonCoreBase64Variant:(ComFasterxmlJacksonCoreBase64Variant *)b64variant
                                     withJavaIoOutputStream:(JavaIoOutputStream *)outArg
                                              withByteArray:(IOSByteArray *)buffer;

/*!
 @brief Method called to release internal buffers owned by the base
  reader.This may be called along with <code>_closeInput</code> (for
  example, when explicitly closing this reader instance), or
  separately (if need be).
 */
- (void)_releaseBuffers;

- (void)_reportInvalidTokenWithNSString:(NSString *)matchedPart;

- (void)_reportInvalidTokenWithNSString:(NSString *)matchedPart
                           withNSString:(NSString *)msg;

/*!
 @brief We actually need to check the character value here
  (to see if we have \n following \r).
 */
- (void)_skipCR;

/*!
 @brief Method called to skim through rest of unparsed String value,
  if it is not needed.This can be done bit faster if contents
  need not be stored for future access.
 */
- (void)_skipString;

- (jchar)getNextCharWithNSString:(NSString *)eofMsg
withComFasterxmlJacksonCoreJsonToken:(ComFasterxmlJacksonCoreJsonToken *)forToken;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)arg0
                                    withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)arg1
                                                                   withInt:(jint)arg2 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(ComFasterxmlJacksonCoreJsonReaderBasedJsonParser)

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreJsonReaderBasedJsonParser, _reader_, JavaIoReader *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreJsonReaderBasedJsonParser, _inputBuffer_, IOSCharArray *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreJsonReaderBasedJsonParser, _symbols_, ComFasterxmlJacksonCoreSymCharsToNameCanonicalizer *)

inline jint ComFasterxmlJacksonCoreJsonReaderBasedJsonParser_get_FEAT_MASK_TRAILING_COMMA(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint ComFasterxmlJacksonCoreJsonReaderBasedJsonParser_FEAT_MASK_TRAILING_COMMA;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(ComFasterxmlJacksonCoreJsonReaderBasedJsonParser, FEAT_MASK_TRAILING_COMMA, jint)

inline IOSIntArray *ComFasterxmlJacksonCoreJsonReaderBasedJsonParser_get__icLatin1(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *ComFasterxmlJacksonCoreJsonReaderBasedJsonParser__icLatin1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreJsonReaderBasedJsonParser, _icLatin1, IOSIntArray *)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonReaderBasedJsonParser_initWithComFasterxmlJacksonCoreObjectReadContext_withComFasterxmlJacksonCoreIoIOContext_withInt_withJavaIoReader_withComFasterxmlJacksonCoreSymCharsToNameCanonicalizer_withCharArray_withInt_withInt_withBoolean_(ComFasterxmlJacksonCoreJsonReaderBasedJsonParser *self, id<ComFasterxmlJacksonCoreObjectReadContext> readCtxt, ComFasterxmlJacksonCoreIoIOContext *ctxt, jint features, JavaIoReader *r, ComFasterxmlJacksonCoreSymCharsToNameCanonicalizer *st, IOSCharArray *inputBuffer, jint start, jint end, jboolean bufferRecyclable);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonReaderBasedJsonParser *new_ComFasterxmlJacksonCoreJsonReaderBasedJsonParser_initWithComFasterxmlJacksonCoreObjectReadContext_withComFasterxmlJacksonCoreIoIOContext_withInt_withJavaIoReader_withComFasterxmlJacksonCoreSymCharsToNameCanonicalizer_withCharArray_withInt_withInt_withBoolean_(id<ComFasterxmlJacksonCoreObjectReadContext> readCtxt, ComFasterxmlJacksonCoreIoIOContext *ctxt, jint features, JavaIoReader *r, ComFasterxmlJacksonCoreSymCharsToNameCanonicalizer *st, IOSCharArray *inputBuffer, jint start, jint end, jboolean bufferRecyclable) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonReaderBasedJsonParser *create_ComFasterxmlJacksonCoreJsonReaderBasedJsonParser_initWithComFasterxmlJacksonCoreObjectReadContext_withComFasterxmlJacksonCoreIoIOContext_withInt_withJavaIoReader_withComFasterxmlJacksonCoreSymCharsToNameCanonicalizer_withCharArray_withInt_withInt_withBoolean_(id<ComFasterxmlJacksonCoreObjectReadContext> readCtxt, ComFasterxmlJacksonCoreIoIOContext *ctxt, jint features, JavaIoReader *r, ComFasterxmlJacksonCoreSymCharsToNameCanonicalizer *st, IOSCharArray *inputBuffer, jint start, jint end, jboolean bufferRecyclable);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonReaderBasedJsonParser_initWithComFasterxmlJacksonCoreObjectReadContext_withComFasterxmlJacksonCoreIoIOContext_withInt_withJavaIoReader_withComFasterxmlJacksonCoreSymCharsToNameCanonicalizer_(ComFasterxmlJacksonCoreJsonReaderBasedJsonParser *self, id<ComFasterxmlJacksonCoreObjectReadContext> readCtxt, ComFasterxmlJacksonCoreIoIOContext *ctxt, jint features, JavaIoReader *r, ComFasterxmlJacksonCoreSymCharsToNameCanonicalizer *st);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonReaderBasedJsonParser *new_ComFasterxmlJacksonCoreJsonReaderBasedJsonParser_initWithComFasterxmlJacksonCoreObjectReadContext_withComFasterxmlJacksonCoreIoIOContext_withInt_withJavaIoReader_withComFasterxmlJacksonCoreSymCharsToNameCanonicalizer_(id<ComFasterxmlJacksonCoreObjectReadContext> readCtxt, ComFasterxmlJacksonCoreIoIOContext *ctxt, jint features, JavaIoReader *r, ComFasterxmlJacksonCoreSymCharsToNameCanonicalizer *st) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonReaderBasedJsonParser *create_ComFasterxmlJacksonCoreJsonReaderBasedJsonParser_initWithComFasterxmlJacksonCoreObjectReadContext_withComFasterxmlJacksonCoreIoIOContext_withInt_withJavaIoReader_withComFasterxmlJacksonCoreSymCharsToNameCanonicalizer_(id<ComFasterxmlJacksonCoreObjectReadContext> readCtxt, ComFasterxmlJacksonCoreIoIOContext *ctxt, jint features, JavaIoReader *r, ComFasterxmlJacksonCoreSymCharsToNameCanonicalizer *st);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreJsonReaderBasedJsonParser)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreJsonReaderBasedJsonParser")
