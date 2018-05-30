//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper")
#ifdef RESTRICT_ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper
#define INCLUDE_ALL_ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper || defined(INCLUDE_ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper))
#define ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper_

@class ComFasterxmlJacksonCoreFormatMatchStrength;
@class ComFasterxmlJacksonCoreIoIOContext;
@class ComFasterxmlJacksonCoreJsonEncoding;
@class ComFasterxmlJacksonCoreJsonParser;
@class ComFasterxmlJacksonCoreObjectCodec;
@class ComFasterxmlJacksonCoreSymByteQuadsCanonicalizer;
@class ComFasterxmlJacksonCoreSymCharsToNameCanonicalizer;
@class IOSByteArray;
@class JavaIoInputStream;
@class JavaIoReader;
@protocol ComFasterxmlJacksonCoreFormatInputAccessor;
@protocol JavaIoDataInput;

/*!
 @brief This class is used to determine the encoding of byte stream
  that is to contain JSON content.Rules are fairly simple, and
  defined in JSON specification (RFC-4627 or newer), except
  for BOM handling, which is a property of underlying
  streams.
 */
@interface ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                       withByteArray:(IOSByteArray *)inputBuffer
                                                             withInt:(jint)inputStart
                                                             withInt:(jint)inputLen;

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                               withJavaIoInputStream:(JavaIoInputStream *)inArg;

- (ComFasterxmlJacksonCoreJsonParser *)constructParserWithInt:(jint)parserFeatures
                       withComFasterxmlJacksonCoreObjectCodec:(ComFasterxmlJacksonCoreObjectCodec *)codec
         withComFasterxmlJacksonCoreSymByteQuadsCanonicalizer:(ComFasterxmlJacksonCoreSymByteQuadsCanonicalizer *)rootByteSymbols
       withComFasterxmlJacksonCoreSymCharsToNameCanonicalizer:(ComFasterxmlJacksonCoreSymCharsToNameCanonicalizer *)rootCharSymbols
                                                      withInt:(jint)factoryFeatures;

- (JavaIoReader *)constructReader;

/*!
 @brief Method that should be called after constructing an instace.
 It will figure out encoding that content uses, to allow
  for instantiating a proper scanner object.
 */
- (ComFasterxmlJacksonCoreJsonEncoding *)detectEncoding;

/*!
 @brief Current implementation is not as thorough as other functionality
  (<code>com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper</code>); 
  supports UTF-8, for example.But it should work, for now, and can
  be improved as necessary.
 */
+ (ComFasterxmlJacksonCoreFormatMatchStrength *)hasJSONFormatWithComFasterxmlJacksonCoreFormatInputAccessor:(id<ComFasterxmlJacksonCoreFormatInputAccessor>)acc;

/*!
 @brief Helper method that may be called to see if given <code>DataInput</code>
  has BOM marker, and if so, to skip it.
 @throw IOException
 @since 2.8
 */
+ (jint)skipUTF8BOMWithJavaIoDataInput:(id<JavaIoDataInput>)input;

#pragma mark Protected

- (jboolean)ensureLoadedWithInt:(jint)minimum;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper)

inline jbyte ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper_get_UTF8_BOM_1(void);
#define ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper_UTF8_BOM_1 -17
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper, UTF8_BOM_1, jbyte)

inline jbyte ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper_get_UTF8_BOM_2(void);
#define ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper_UTF8_BOM_2 -69
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper, UTF8_BOM_2, jbyte)

inline jbyte ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper_get_UTF8_BOM_3(void);
#define ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper_UTF8_BOM_3 -65
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper, UTF8_BOM_3, jbyte)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper_initWithComFasterxmlJacksonCoreIoIOContext_withJavaIoInputStream_(ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper *self, ComFasterxmlJacksonCoreIoIOContext *ctxt, JavaIoInputStream *inArg);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper *new_ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper_initWithComFasterxmlJacksonCoreIoIOContext_withJavaIoInputStream_(ComFasterxmlJacksonCoreIoIOContext *ctxt, JavaIoInputStream *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper *create_ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper_initWithComFasterxmlJacksonCoreIoIOContext_withJavaIoInputStream_(ComFasterxmlJacksonCoreIoIOContext *ctxt, JavaIoInputStream *inArg);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper_initWithComFasterxmlJacksonCoreIoIOContext_withByteArray_withInt_withInt_(ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper *self, ComFasterxmlJacksonCoreIoIOContext *ctxt, IOSByteArray *inputBuffer, jint inputStart, jint inputLen);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper *new_ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper_initWithComFasterxmlJacksonCoreIoIOContext_withByteArray_withInt_withInt_(ComFasterxmlJacksonCoreIoIOContext *ctxt, IOSByteArray *inputBuffer, jint inputStart, jint inputLen) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper *create_ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper_initWithComFasterxmlJacksonCoreIoIOContext_withByteArray_withInt_withInt_(ComFasterxmlJacksonCoreIoIOContext *ctxt, IOSByteArray *inputBuffer, jint inputStart, jint inputLen);

FOUNDATION_EXPORT jint ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper_skipUTF8BOMWithJavaIoDataInput_(id<JavaIoDataInput> input);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreFormatMatchStrength *ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper_hasJSONFormatWithComFasterxmlJacksonCoreFormatInputAccessor_(id<ComFasterxmlJacksonCoreFormatInputAccessor> acc);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreJsonByteSourceJsonBootstrapper")