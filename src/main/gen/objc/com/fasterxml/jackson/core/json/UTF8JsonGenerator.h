//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/json/UTF8JsonGenerator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreJsonUTF8JsonGenerator")
#ifdef RESTRICT_ComFasterxmlJacksonCoreJsonUTF8JsonGenerator
#define INCLUDE_ALL_ComFasterxmlJacksonCoreJsonUTF8JsonGenerator 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreJsonUTF8JsonGenerator 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreJsonUTF8JsonGenerator

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreJsonUTF8JsonGenerator_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreJsonUTF8JsonGenerator || defined(INCLUDE_ComFasterxmlJacksonCoreJsonUTF8JsonGenerator))
#define ComFasterxmlJacksonCoreJsonUTF8JsonGenerator_

#define RESTRICT_ComFasterxmlJacksonCoreJsonJsonGeneratorImpl 1
#define INCLUDE_ComFasterxmlJacksonCoreJsonJsonGeneratorImpl 1
#include "com/fasterxml/jackson/core/json/JsonGeneratorImpl.h"

@class ComFasterxmlJacksonCoreBase64Variant;
@class ComFasterxmlJacksonCoreIoCharacterEscapes;
@class ComFasterxmlJacksonCoreIoIOContext;
@class IOSByteArray;
@class IOSCharArray;
@class JavaIoInputStream;
@class JavaIoOutputStream;
@class JavaIoReader;
@class JavaMathBigDecimal;
@class JavaMathBigInteger;
@protocol ComFasterxmlJacksonCoreObjectWriteContext;
@protocol ComFasterxmlJacksonCorePrettyPrinter;
@protocol ComFasterxmlJacksonCoreSerializableString;

@interface ComFasterxmlJacksonCoreJsonUTF8JsonGenerator : ComFasterxmlJacksonCoreJsonJsonGeneratorImpl {
 @public
  /*!
   @brief Underlying output stream used for writing JSON content.
   */
  JavaIoOutputStream *_outputStream_;
  /*!
   @brief Character used for quoting JSON Object property names
  and String values.
   @since 2.8
   */
  jbyte _quoteChar_;
  /*!
   @brief Intermediate buffer in which contents are buffered before
  being written using <code>_outputStream</code>.
   */
  IOSByteArray *_outputBuffer_;
  /*!
   @brief Pointer to the position right beyond the last character to output
  (end marker; may be past the buffer)
   */
  jint _outputTail_;
  /*!
   @brief End marker of the output buffer; one past the last valid position
  within the buffer.
   */
  jint _outputEnd_;
  /*!
   @brief Maximum number of <code>char</code>s that we know will always fit
  in the output buffer after escaping
   */
  jint _outputMaxContiguous_;
  /*!
   @brief Intermediate buffer in which characters of a String are copied
  before being encoded.
   */
  IOSCharArray *_charBuffer_;
  /*!
   @brief Length of <code>_charBuffer</code>
   */
  jint _charBufferLength_;
  /*!
   @brief 6 character temporary buffer allocated if needed, for constructing
  escape sequences
   */
  IOSByteArray *_entityBuffer_;
  /*!
   @brief Flag that indicates whether the output buffer is recycable (and
  needs to be returned to recycler once we are done) or not.
   */
  jboolean _bufferRecyclable_;
}

#pragma mark Public

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreObjectWriteContext:(id<ComFasterxmlJacksonCoreObjectWriteContext>)writeCtxt
                                     withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ioCtxt
                                                                    withInt:(jint)features
                                                     withJavaIoOutputStream:(JavaIoOutputStream *)outArg
                              withComFasterxmlJacksonCoreSerializableString:(id<ComFasterxmlJacksonCoreSerializableString>)rootValueSep
                              withComFasterxmlJacksonCoreIoCharacterEscapes:(ComFasterxmlJacksonCoreIoCharacterEscapes *)charEsc
                                   withComFasterxmlJacksonCorePrettyPrinter:(id<ComFasterxmlJacksonCorePrettyPrinter>)pp;

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreObjectWriteContext:(id<ComFasterxmlJacksonCoreObjectWriteContext>)writeCtxt
                                     withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ioCtxt
                                                                    withInt:(jint)features
                                                     withJavaIoOutputStream:(JavaIoOutputStream *)outArg
                              withComFasterxmlJacksonCoreSerializableString:(id<ComFasterxmlJacksonCoreSerializableString>)rootValueSep
                              withComFasterxmlJacksonCoreIoCharacterEscapes:(ComFasterxmlJacksonCoreIoCharacterEscapes *)charEsc
                                   withComFasterxmlJacksonCorePrettyPrinter:(id<ComFasterxmlJacksonCorePrettyPrinter>)pp
                                                              withByteArray:(IOSByteArray *)outputBuffer
                                                                    withInt:(jint)outputOffset
                                                                withBoolean:(jboolean)bufferRecyclable;

- (void)close;

- (void)flush;

- (jint)getOutputBuffered;

- (id)getOutputTarget;

- (void)writeBinaryWithComFasterxmlJacksonCoreBase64Variant:(ComFasterxmlJacksonCoreBase64Variant *)b64variant
                                              withByteArray:(IOSByteArray *)data
                                                    withInt:(jint)offset
                                                    withInt:(jint)len;

- (jint)writeBinaryWithComFasterxmlJacksonCoreBase64Variant:(ComFasterxmlJacksonCoreBase64Variant *)b64variant
                                      withJavaIoInputStream:(JavaIoInputStream *)data
                                                    withInt:(jint)dataLength;

- (void)writeBooleanWithBoolean:(jboolean)state;

- (void)writeEndArray;

- (void)writeEndObject;

- (void)writeFieldNameWithComFasterxmlJacksonCoreSerializableString:(id<ComFasterxmlJacksonCoreSerializableString>)name;

- (void)writeFieldNameWithNSString:(NSString *)name;

- (void)writeNull;

- (void)writeNumberWithJavaMathBigDecimal:(JavaMathBigDecimal *)value;

- (void)writeNumberWithJavaMathBigInteger:(JavaMathBigInteger *)value;

- (void)writeNumberWithDouble:(jdouble)d;

- (void)writeNumberWithFloat:(jfloat)f;

- (void)writeNumberWithInt:(jint)i;

- (void)writeNumberWithLong:(jlong)l;

- (void)writeNumberWithShort:(jshort)s;

- (void)writeNumberWithNSString:(NSString *)encodedValue;

- (void)writeRawWithChar:(jchar)ch;

- (void)writeRawWithCharArray:(IOSCharArray *)cbuf
                      withInt:(jint)offset
                      withInt:(jint)len;

- (void)writeRawWithComFasterxmlJacksonCoreSerializableString:(id<ComFasterxmlJacksonCoreSerializableString>)text;

- (void)writeRawWithNSString:(NSString *)text;

- (void)writeRawWithNSString:(NSString *)text
                     withInt:(jint)offset
                     withInt:(jint)len;

- (void)writeRawUTF8StringWithByteArray:(IOSByteArray *)text
                                withInt:(jint)offset
                                withInt:(jint)length;

- (void)writeRawValueWithComFasterxmlJacksonCoreSerializableString:(id<ComFasterxmlJacksonCoreSerializableString>)text;

- (void)writeStartArray;

- (void)writeStartArrayWithInt:(jint)len;

- (void)writeStartArrayWithId:(id)forValue
                      withInt:(jint)len;

- (void)writeStartObject;

- (void)writeStartObjectWithId:(id)forValue;

- (void)writeStringWithCharArray:(IOSCharArray *)text
                         withInt:(jint)offset
                         withInt:(jint)len;

- (void)writeStringWithJavaIoReader:(JavaIoReader *)reader
                            withInt:(jint)len;

- (void)writeStringWithComFasterxmlJacksonCoreSerializableString:(id<ComFasterxmlJacksonCoreSerializableString>)text;

- (void)writeStringWithNSString:(NSString *)text;

- (void)writeUTF8StringWithByteArray:(IOSByteArray *)text
                             withInt:(jint)offset
                             withInt:(jint)len;

#pragma mark Protected

- (void)_flushBuffer;

- (void)_outputSurrogatesWithInt:(jint)surr1
                         withInt:(jint)surr2;

- (void)_releaseBuffers;

- (void)_verifyValueWriteWithNSString:(NSString *)typeMsg;

- (void)_writeBinaryWithComFasterxmlJacksonCoreBase64Variant:(ComFasterxmlJacksonCoreBase64Variant *)b64variant
                                               withByteArray:(IOSByteArray *)input
                                                     withInt:(jint)inputPtr
                                                     withInt:(jint)inputEnd;

- (jint)_writeBinaryWithComFasterxmlJacksonCoreBase64Variant:(ComFasterxmlJacksonCoreBase64Variant *)b64variant
                                       withJavaIoInputStream:(JavaIoInputStream *)data
                                               withByteArray:(IOSByteArray *)readBuffer;

- (jint)_writeBinaryWithComFasterxmlJacksonCoreBase64Variant:(ComFasterxmlJacksonCoreBase64Variant *)b64variant
                                       withJavaIoInputStream:(JavaIoInputStream *)data
                                               withByteArray:(IOSByteArray *)readBuffer
                                                     withInt:(jint)bytesLeft;

- (void)_writePPFieldNameWithComFasterxmlJacksonCoreSerializableString:(id<ComFasterxmlJacksonCoreSerializableString>)name;

/*!
 @brief Specialized version of <code>_writeFieldName</code>, off-lined
  to keep the "fast path" as simple (and hopefully fast) as possible.
 */
- (void)_writePPFieldNameWithNSString:(NSString *)name;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreObjectWriteContext:(id<ComFasterxmlJacksonCoreObjectWriteContext>)arg0
                                     withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)arg1
                                                                    withInt:(jint)arg2
                              withComFasterxmlJacksonCoreSerializableString:(id<ComFasterxmlJacksonCoreSerializableString>)arg3
                              withComFasterxmlJacksonCoreIoCharacterEscapes:(ComFasterxmlJacksonCoreIoCharacterEscapes *)arg4
                                   withComFasterxmlJacksonCorePrettyPrinter:(id<ComFasterxmlJacksonCorePrettyPrinter>)arg5 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(ComFasterxmlJacksonCoreJsonUTF8JsonGenerator)

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreJsonUTF8JsonGenerator, _outputStream_, JavaIoOutputStream *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreJsonUTF8JsonGenerator, _outputBuffer_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreJsonUTF8JsonGenerator, _charBuffer_, IOSCharArray *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreJsonUTF8JsonGenerator, _entityBuffer_, IOSByteArray *)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonUTF8JsonGenerator_initWithComFasterxmlJacksonCoreObjectWriteContext_withComFasterxmlJacksonCoreIoIOContext_withInt_withJavaIoOutputStream_withComFasterxmlJacksonCoreSerializableString_withComFasterxmlJacksonCoreIoCharacterEscapes_withComFasterxmlJacksonCorePrettyPrinter_(ComFasterxmlJacksonCoreJsonUTF8JsonGenerator *self, id<ComFasterxmlJacksonCoreObjectWriteContext> writeCtxt, ComFasterxmlJacksonCoreIoIOContext *ioCtxt, jint features, JavaIoOutputStream *outArg, id<ComFasterxmlJacksonCoreSerializableString> rootValueSep, ComFasterxmlJacksonCoreIoCharacterEscapes *charEsc, id<ComFasterxmlJacksonCorePrettyPrinter> pp);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonUTF8JsonGenerator *new_ComFasterxmlJacksonCoreJsonUTF8JsonGenerator_initWithComFasterxmlJacksonCoreObjectWriteContext_withComFasterxmlJacksonCoreIoIOContext_withInt_withJavaIoOutputStream_withComFasterxmlJacksonCoreSerializableString_withComFasterxmlJacksonCoreIoCharacterEscapes_withComFasterxmlJacksonCorePrettyPrinter_(id<ComFasterxmlJacksonCoreObjectWriteContext> writeCtxt, ComFasterxmlJacksonCoreIoIOContext *ioCtxt, jint features, JavaIoOutputStream *outArg, id<ComFasterxmlJacksonCoreSerializableString> rootValueSep, ComFasterxmlJacksonCoreIoCharacterEscapes *charEsc, id<ComFasterxmlJacksonCorePrettyPrinter> pp) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonUTF8JsonGenerator *create_ComFasterxmlJacksonCoreJsonUTF8JsonGenerator_initWithComFasterxmlJacksonCoreObjectWriteContext_withComFasterxmlJacksonCoreIoIOContext_withInt_withJavaIoOutputStream_withComFasterxmlJacksonCoreSerializableString_withComFasterxmlJacksonCoreIoCharacterEscapes_withComFasterxmlJacksonCorePrettyPrinter_(id<ComFasterxmlJacksonCoreObjectWriteContext> writeCtxt, ComFasterxmlJacksonCoreIoIOContext *ioCtxt, jint features, JavaIoOutputStream *outArg, id<ComFasterxmlJacksonCoreSerializableString> rootValueSep, ComFasterxmlJacksonCoreIoCharacterEscapes *charEsc, id<ComFasterxmlJacksonCorePrettyPrinter> pp);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonUTF8JsonGenerator_initWithComFasterxmlJacksonCoreObjectWriteContext_withComFasterxmlJacksonCoreIoIOContext_withInt_withJavaIoOutputStream_withComFasterxmlJacksonCoreSerializableString_withComFasterxmlJacksonCoreIoCharacterEscapes_withComFasterxmlJacksonCorePrettyPrinter_withByteArray_withInt_withBoolean_(ComFasterxmlJacksonCoreJsonUTF8JsonGenerator *self, id<ComFasterxmlJacksonCoreObjectWriteContext> writeCtxt, ComFasterxmlJacksonCoreIoIOContext *ioCtxt, jint features, JavaIoOutputStream *outArg, id<ComFasterxmlJacksonCoreSerializableString> rootValueSep, ComFasterxmlJacksonCoreIoCharacterEscapes *charEsc, id<ComFasterxmlJacksonCorePrettyPrinter> pp, IOSByteArray *outputBuffer, jint outputOffset, jboolean bufferRecyclable);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonUTF8JsonGenerator *new_ComFasterxmlJacksonCoreJsonUTF8JsonGenerator_initWithComFasterxmlJacksonCoreObjectWriteContext_withComFasterxmlJacksonCoreIoIOContext_withInt_withJavaIoOutputStream_withComFasterxmlJacksonCoreSerializableString_withComFasterxmlJacksonCoreIoCharacterEscapes_withComFasterxmlJacksonCorePrettyPrinter_withByteArray_withInt_withBoolean_(id<ComFasterxmlJacksonCoreObjectWriteContext> writeCtxt, ComFasterxmlJacksonCoreIoIOContext *ioCtxt, jint features, JavaIoOutputStream *outArg, id<ComFasterxmlJacksonCoreSerializableString> rootValueSep, ComFasterxmlJacksonCoreIoCharacterEscapes *charEsc, id<ComFasterxmlJacksonCorePrettyPrinter> pp, IOSByteArray *outputBuffer, jint outputOffset, jboolean bufferRecyclable) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonUTF8JsonGenerator *create_ComFasterxmlJacksonCoreJsonUTF8JsonGenerator_initWithComFasterxmlJacksonCoreObjectWriteContext_withComFasterxmlJacksonCoreIoIOContext_withInt_withJavaIoOutputStream_withComFasterxmlJacksonCoreSerializableString_withComFasterxmlJacksonCoreIoCharacterEscapes_withComFasterxmlJacksonCorePrettyPrinter_withByteArray_withInt_withBoolean_(id<ComFasterxmlJacksonCoreObjectWriteContext> writeCtxt, ComFasterxmlJacksonCoreIoIOContext *ioCtxt, jint features, JavaIoOutputStream *outArg, id<ComFasterxmlJacksonCoreSerializableString> rootValueSep, ComFasterxmlJacksonCoreIoCharacterEscapes *charEsc, id<ComFasterxmlJacksonCorePrettyPrinter> pp, IOSByteArray *outputBuffer, jint outputOffset, jboolean bufferRecyclable);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreJsonUTF8JsonGenerator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreJsonUTF8JsonGenerator")
