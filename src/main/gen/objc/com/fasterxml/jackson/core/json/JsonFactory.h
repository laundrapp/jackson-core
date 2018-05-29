//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/json/JsonFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreJsonJsonFactory")
#ifdef RESTRICT_ComFasterxmlJacksonCoreJsonJsonFactory
#define INCLUDE_ALL_ComFasterxmlJacksonCoreJsonJsonFactory 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreJsonJsonFactory 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreJsonJsonFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreJsonJsonFactory_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreJsonJsonFactory || defined(INCLUDE_ComFasterxmlJacksonCoreJsonJsonFactory))
#define ComFasterxmlJacksonCoreJsonJsonFactory_

#define RESTRICT_ComFasterxmlJacksonCoreBaseTextualTSFactory 1
#define INCLUDE_ComFasterxmlJacksonCoreBaseTextualTSFactory 1
#include "com/fasterxml/jackson/core/base/TextualTSFactory.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class ComFasterxmlJacksonCoreBaseDecorableTSFactory_DecorableTSFBuilder;
@class ComFasterxmlJacksonCoreIoCharacterEscapes;
@class ComFasterxmlJacksonCoreIoIOContext;
@class ComFasterxmlJacksonCoreJsonGenerator;
@class ComFasterxmlJacksonCoreJsonJsonFactoryBuilder;
@class ComFasterxmlJacksonCoreJsonParser;
@class ComFasterxmlJacksonCoreSymByteQuadsCanonicalizer;
@class ComFasterxmlJacksonCoreSymCharsToNameCanonicalizer;
@class ComFasterxmlJacksonCoreSymFieldNameMatcher;
@class ComFasterxmlJacksonCoreTokenStreamFactory;
@class ComFasterxmlJacksonCoreVersion;
@class IOSByteArray;
@class IOSCharArray;
@class IOSClass;
@class JavaIoInputStream;
@class JavaIoOutputStream;
@class JavaIoReader;
@class JavaIoWriter;
@protocol ComFasterxmlJacksonCoreFormatSchema;
@protocol ComFasterxmlJacksonCoreObjectReadContext;
@protocol ComFasterxmlJacksonCoreObjectWriteContext;
@protocol ComFasterxmlJacksonCoreSerializableString;
@protocol JavaIoDataInput;
@protocol JavaUtilList;

/*!
 @brief JSON-backed <code>TokenStreamFactory</code> implementation that will create
  token readers ("parsers") and writers ("generators") for handling
  JSON-encoded content.
 <p>
  Note that this class used to reside at main <code>com.fasterxml.jackson.core</code>
  in 2.x, but moved here to denote its changed role as implementation, not base
  class for factories.
 */
@interface ComFasterxmlJacksonCoreJsonJsonFactory : ComFasterxmlJacksonCoreBaseTextualTSFactory < JavaIoSerializable > {
 @public
  /*!
   @brief Definition of custom character escapes to use for generators created
  by this factory, if any.If null, standard data format specific
  escapes are used.
   */
  ComFasterxmlJacksonCoreIoCharacterEscapes *_characterEscapes_;
  /*!
   @brief Separator used between root-level values, if any; null indicates
  "do not add separator".
   Default separator is a single space character.
   */
  id<ComFasterxmlJacksonCoreSerializableString> _rootValueSeparator_;
  /*!
   @brief Each factory comes equipped with a shared root symbol table.
   It should not be linked back to the original blueprint, to
  avoid contents from leaking between factories.
   */
  ComFasterxmlJacksonCoreSymCharsToNameCanonicalizer *_rootCharSymbols_;
  /*!
   @brief Alternative to the basic symbol table, some stream-based
  parsers use different name canonicalization method.
   */
  ComFasterxmlJacksonCoreSymByteQuadsCanonicalizer *_byteSymbolCanonicalizer_;
}

#pragma mark Public

/*!
 @brief Default constructor used to create factory instances.
 Creation of a factory instance is a light-weight operation,
  but it is still a good idea to reuse limited number of
  factory instances (and quite often just a single instance):
  factories are used as context for storing some reused
  processing objects (such as symbol tables parsers use)
  and this reuse only works within context of a single
  factory instance.
 */
- (instancetype __nonnull)init;

/*!
 @brief Main factory method to use for constructing <code>JsonFactory</code> instances with
  different configuration.
 */
+ (ComFasterxmlJacksonCoreJsonJsonFactoryBuilder *)builder;

- (jboolean)canParseAsync;

/*!
 @brief Method that can be used to quickly check whether given schema
  is something that parsers and/or generators constructed by this
  factory could use.Note that this means possible use, at the level
  of data format (i.e. schema is for same data format as parsers and
  generators this factory constructs); individual schema instances
  may have further usage restrictions.
 */
- (jboolean)canUseSchemaWithComFasterxmlJacksonCoreFormatSchema:(id<ComFasterxmlJacksonCoreFormatSchema>)schema;

- (ComFasterxmlJacksonCoreSymFieldNameMatcher *)constructCIFieldNameMatcherWithJavaUtilList:(id<JavaUtilList>)matches
                                                                                withBoolean:(jboolean)alreadyInterned;

- (ComFasterxmlJacksonCoreSymFieldNameMatcher *)constructFieldNameMatcherWithJavaUtilList:(id<JavaUtilList>)matches
                                                                              withBoolean:(jboolean)alreadyInterned;

/*!
 @brief Method for constructing a new <code>JsonFactory</code> that has
  the same settings as this instance, but is otherwise
  independent (i.e.nothing is actually shared, symbol tables
  are separate).
 */
- (ComFasterxmlJacksonCoreJsonJsonFactory *)copy__ OBJC_METHOD_FAMILY_NONE;

- (ComFasterxmlJacksonCoreJsonParser *)createNonBlockingByteArrayParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt;

/*!
 @brief Method for accessing custom escapes factory uses for <code>JsonGenerator</code>s
  it creates.
 */
- (ComFasterxmlJacksonCoreIoCharacterEscapes *)getCharacterEscapes;

- (jint)getFormatGeneratorFeatures;

/*!
 @brief Method that returns short textual id identifying format
  this factory supports.
 <p>
  Note: sub-classes should override this method; default
  implementation will return null for all sub-classes
 */
- (NSString *)getFormatName;

- (jint)getFormatParserFeatures;

- (IOSClass *)getFormatReadFeatureType;

- (IOSClass *)getFormatWriteFeatureType;

- (NSString *)getRootValueSeparator;

- (ComFasterxmlJacksonCoreJsonJsonFactoryBuilder *)rebuild;

- (ComFasterxmlJacksonCoreTokenStreamFactory *)snapshot;

- (ComFasterxmlJacksonCoreVersion *)version__;

#pragma mark Protected

/*!
 @brief Copy constructor.
 */
- (instancetype __nonnull)initWithComFasterxmlJacksonCoreJsonJsonFactory:(ComFasterxmlJacksonCoreJsonJsonFactory *)src;

/*!
 @brief Constructors used by <code>JsonFactoryBuilder</code> for instantiation.
 @since 3.0
 */
- (instancetype __nonnull)initWithComFasterxmlJacksonCoreJsonJsonFactoryBuilder:(ComFasterxmlJacksonCoreJsonJsonFactoryBuilder *)b;

- (ComFasterxmlJacksonCoreJsonGenerator *)_createGeneratorWithComFasterxmlJacksonCoreObjectWriteContext:(id<ComFasterxmlJacksonCoreObjectWriteContext>)writeCtxt
                                                                 withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ioCtxt
                                                                                       withJavaIoWriter:(JavaIoWriter *)outArg;

- (ComFasterxmlJacksonCoreJsonParser *)_createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                          withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ioCtxt
                                                                                   withByteArray:(IOSByteArray *)data
                                                                                         withInt:(jint)offset
                                                                                         withInt:(jint)len;

- (ComFasterxmlJacksonCoreJsonParser *)_createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                          withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ioCtxt
                                                                                   withCharArray:(IOSCharArray *)data
                                                                                         withInt:(jint)offset
                                                                                         withInt:(jint)len
                                                                                     withBoolean:(jboolean)recyclable;

- (ComFasterxmlJacksonCoreJsonParser *)_createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                          withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ioCtxt
                                                                             withJavaIoDataInput:(id<JavaIoDataInput>)input;

- (ComFasterxmlJacksonCoreJsonParser *)_createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                          withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ioCtxt
                                                                           withJavaIoInputStream:(JavaIoInputStream *)inArg;

- (ComFasterxmlJacksonCoreJsonParser *)_createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                          withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ioCtxt
                                                                                withJavaIoReader:(JavaIoReader *)r;

- (ComFasterxmlJacksonCoreJsonGenerator *)_createUTF8GeneratorWithComFasterxmlJacksonCoreObjectWriteContext:(id<ComFasterxmlJacksonCoreObjectWriteContext>)writeCtxt
                                                                     withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ioCtxt
                                                                                     withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

/*!
 @brief Method that we need to override to actually make restoration go
  through constructors etc.
 Also: must be overridden by sub-classes as well.
 */
- (id)readResolve;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreBaseDecorableTSFactory_DecorableTSFBuilder:(ComFasterxmlJacksonCoreBaseDecorableTSFactory_DecorableTSFBuilder *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreBaseTextualTSFactory:(ComFasterxmlJacksonCoreBaseTextualTSFactory *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(ComFasterxmlJacksonCoreJsonJsonFactory)

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreJsonJsonFactory, _characterEscapes_, ComFasterxmlJacksonCoreIoCharacterEscapes *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreJsonJsonFactory, _rootValueSeparator_, id<ComFasterxmlJacksonCoreSerializableString>)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreJsonJsonFactory, _rootCharSymbols_, ComFasterxmlJacksonCoreSymCharsToNameCanonicalizer *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreJsonJsonFactory, _byteSymbolCanonicalizer_, ComFasterxmlJacksonCoreSymByteQuadsCanonicalizer *)

/*!
 @brief Name used to identify JSON format
  (and returned by <code>getFormatName()</code>
 */
inline NSString *ComFasterxmlJacksonCoreJsonJsonFactory_get_FORMAT_NAME_JSON(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComFasterxmlJacksonCoreJsonJsonFactory_FORMAT_NAME_JSON;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreJsonJsonFactory, FORMAT_NAME_JSON, NSString *)

inline id<ComFasterxmlJacksonCoreSerializableString> ComFasterxmlJacksonCoreJsonJsonFactory_get_DEFAULT_ROOT_VALUE_SEPARATOR(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id<ComFasterxmlJacksonCoreSerializableString> ComFasterxmlJacksonCoreJsonJsonFactory_DEFAULT_ROOT_VALUE_SEPARATOR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreJsonJsonFactory, DEFAULT_ROOT_VALUE_SEPARATOR, id<ComFasterxmlJacksonCoreSerializableString>)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonJsonFactory_init(ComFasterxmlJacksonCoreJsonJsonFactory *self);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonJsonFactory *new_ComFasterxmlJacksonCoreJsonJsonFactory_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonJsonFactory *create_ComFasterxmlJacksonCoreJsonJsonFactory_init(void);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonJsonFactory_initWithComFasterxmlJacksonCoreJsonJsonFactory_(ComFasterxmlJacksonCoreJsonJsonFactory *self, ComFasterxmlJacksonCoreJsonJsonFactory *src);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonJsonFactory *new_ComFasterxmlJacksonCoreJsonJsonFactory_initWithComFasterxmlJacksonCoreJsonJsonFactory_(ComFasterxmlJacksonCoreJsonJsonFactory *src) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonJsonFactory *create_ComFasterxmlJacksonCoreJsonJsonFactory_initWithComFasterxmlJacksonCoreJsonJsonFactory_(ComFasterxmlJacksonCoreJsonJsonFactory *src);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonJsonFactory_initWithComFasterxmlJacksonCoreJsonJsonFactoryBuilder_(ComFasterxmlJacksonCoreJsonJsonFactory *self, ComFasterxmlJacksonCoreJsonJsonFactoryBuilder *b);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonJsonFactory *new_ComFasterxmlJacksonCoreJsonJsonFactory_initWithComFasterxmlJacksonCoreJsonJsonFactoryBuilder_(ComFasterxmlJacksonCoreJsonJsonFactoryBuilder *b) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonJsonFactory *create_ComFasterxmlJacksonCoreJsonJsonFactory_initWithComFasterxmlJacksonCoreJsonJsonFactoryBuilder_(ComFasterxmlJacksonCoreJsonJsonFactoryBuilder *b);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonJsonFactoryBuilder *ComFasterxmlJacksonCoreJsonJsonFactory_builder(void);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreJsonJsonFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreJsonJsonFactory")
