//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/ObjectWriteContext.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreObjectWriteContext")
#ifdef RESTRICT_ComFasterxmlJacksonCoreObjectWriteContext
#define INCLUDE_ALL_ComFasterxmlJacksonCoreObjectWriteContext 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreObjectWriteContext 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreObjectWriteContext
#ifdef INCLUDE_ComFasterxmlJacksonCoreObjectWriteContext_Base
#define INCLUDE_ComFasterxmlJacksonCoreObjectWriteContext 1
#endif

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreObjectWriteContext_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreObjectWriteContext || defined(INCLUDE_ComFasterxmlJacksonCoreObjectWriteContext))
#define ComFasterxmlJacksonCoreObjectWriteContext_

@class ComFasterxmlJacksonCoreIoCharacterEscapes;
@class ComFasterxmlJacksonCoreJsonEncoding;
@class ComFasterxmlJacksonCoreJsonGenerator;
@class ComFasterxmlJacksonCoreTokenStreamFactory;
@class JavaIoOutputStream;
@class JavaIoWriter;
@protocol ComFasterxmlJacksonCoreFormatSchema;
@protocol ComFasterxmlJacksonCorePrettyPrinter;
@protocol ComFasterxmlJacksonCoreSerializableString;
@protocol ComFasterxmlJacksonCoreTreeArrayTreeNode;
@protocol ComFasterxmlJacksonCoreTreeNode;
@protocol ComFasterxmlJacksonCoreTreeObjectTreeNode;

/*!
 @brief Defines API for accessing configuration and state exposed by
  higher level databind
  functionality during write (Object to token stream serialization) process.
 Access is mostly needed during construction of 
 <code>JsonGenerator</code> instances by <code>TokenStreamFactory</code>.
 @since 3.0
 */
@protocol ComFasterxmlJacksonCoreObjectWriteContext < JavaObject >

- (id<ComFasterxmlJacksonCoreFormatSchema>)getSchema;

- (ComFasterxmlJacksonCoreIoCharacterEscapes *)getCharacterEscapes;

- (id<ComFasterxmlJacksonCorePrettyPrinter>)getPrettyPrinter;

- (id<ComFasterxmlJacksonCoreSerializableString>)getRootValueSeparatorWithComFasterxmlJacksonCoreSerializableString:(id<ComFasterxmlJacksonCoreSerializableString>)defaultSeparator;

- (jint)getGeneratorFeaturesWithInt:(jint)defaults;

- (jint)getFormatWriteFeaturesWithInt:(jint)defaults;

- (ComFasterxmlJacksonCoreTokenStreamFactory *)getGeneratorFactory;

- (ComFasterxmlJacksonCoreJsonGenerator *)createGeneratorWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (ComFasterxmlJacksonCoreJsonGenerator *)createGeneratorWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                                        withComFasterxmlJacksonCoreJsonEncoding:(ComFasterxmlJacksonCoreJsonEncoding *)enc;

- (ComFasterxmlJacksonCoreJsonGenerator *)createGeneratorWithJavaIoWriter:(JavaIoWriter *)w;

/*!
 @brief Method for construct Array nodes for Tree Model instances.
 */
- (id<ComFasterxmlJacksonCoreTreeArrayTreeNode>)createArrayNode;

/*!
 @brief Method for construct Object nodes for Tree Model instances.
 */
- (id<ComFasterxmlJacksonCoreTreeObjectTreeNode>)createObjectNode;

/*!
 @brief Method that may be called to serialize given value, using specified
  token stream generator.
 */
- (void)writeValueWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)g
                                                    withId:(id)value;

- (void)writeTreeWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)g
                      withComFasterxmlJacksonCoreTreeNode:(id<ComFasterxmlJacksonCoreTreeNode>)value;

@end

@interface ComFasterxmlJacksonCoreObjectWriteContext : NSObject

+ (id<ComFasterxmlJacksonCoreObjectWriteContext>)empty;

@end

J2OBJC_EMPTY_STATIC_INIT(ComFasterxmlJacksonCoreObjectWriteContext)

FOUNDATION_EXPORT id<ComFasterxmlJacksonCoreObjectWriteContext> ComFasterxmlJacksonCoreObjectWriteContext_empty(void);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonGenerator *ComFasterxmlJacksonCoreObjectWriteContext_createGeneratorWithJavaIoOutputStream_(id<ComFasterxmlJacksonCoreObjectWriteContext> self, JavaIoOutputStream *outArg);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonGenerator *ComFasterxmlJacksonCoreObjectWriteContext_createGeneratorWithJavaIoOutputStream_withComFasterxmlJacksonCoreJsonEncoding_(id<ComFasterxmlJacksonCoreObjectWriteContext> self, JavaIoOutputStream *outArg, ComFasterxmlJacksonCoreJsonEncoding *enc);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonGenerator *ComFasterxmlJacksonCoreObjectWriteContext_createGeneratorWithJavaIoWriter_(id<ComFasterxmlJacksonCoreObjectWriteContext> self, JavaIoWriter *w);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreObjectWriteContext)

#endif

#if !defined (ComFasterxmlJacksonCoreObjectWriteContext_Base_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreObjectWriteContext || defined(INCLUDE_ComFasterxmlJacksonCoreObjectWriteContext_Base))
#define ComFasterxmlJacksonCoreObjectWriteContext_Base_

@class ComFasterxmlJacksonCoreIoCharacterEscapes;
@class ComFasterxmlJacksonCoreJsonEncoding;
@class ComFasterxmlJacksonCoreJsonGenerator;
@class ComFasterxmlJacksonCoreTokenStreamFactory;
@class JavaIoOutputStream;
@class JavaIoWriter;
@protocol ComFasterxmlJacksonCoreFormatSchema;
@protocol ComFasterxmlJacksonCorePrettyPrinter;
@protocol ComFasterxmlJacksonCoreSerializableString;
@protocol ComFasterxmlJacksonCoreTreeArrayTreeNode;
@protocol ComFasterxmlJacksonCoreTreeNode;
@protocol ComFasterxmlJacksonCoreTreeObjectTreeNode;

/*!
 @brief Default no-op implementation.
 */
@interface ComFasterxmlJacksonCoreObjectWriteContext_Base : NSObject < ComFasterxmlJacksonCoreObjectWriteContext >

#pragma mark Public

- (instancetype __nonnull)init;

- (id<ComFasterxmlJacksonCoreTreeArrayTreeNode>)createArrayNode;

- (id<ComFasterxmlJacksonCoreTreeObjectTreeNode>)createObjectNode;

- (ComFasterxmlJacksonCoreIoCharacterEscapes *)getCharacterEscapes;

- (jint)getFormatWriteFeaturesWithInt:(jint)defaults;

- (ComFasterxmlJacksonCoreTokenStreamFactory *)getGeneratorFactory;

- (jint)getGeneratorFeaturesWithInt:(jint)defaults;

- (id<ComFasterxmlJacksonCorePrettyPrinter>)getPrettyPrinter;

- (id<ComFasterxmlJacksonCoreSerializableString>)getRootValueSeparatorWithComFasterxmlJacksonCoreSerializableString:(id<ComFasterxmlJacksonCoreSerializableString>)defaultSeparator;

- (id<ComFasterxmlJacksonCoreFormatSchema>)getSchema;

- (void)writeTreeWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)g
                      withComFasterxmlJacksonCoreTreeNode:(id<ComFasterxmlJacksonCoreTreeNode>)value;

- (void)writeValueWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)g
                                                    withId:(id)value;

#pragma mark Protected

- (id)_reportUnsupportedOperation;

@end

J2OBJC_STATIC_INIT(ComFasterxmlJacksonCoreObjectWriteContext_Base)

inline ComFasterxmlJacksonCoreObjectWriteContext_Base *ComFasterxmlJacksonCoreObjectWriteContext_Base_get_EMPTY_CONTEXT(void);
inline ComFasterxmlJacksonCoreObjectWriteContext_Base *ComFasterxmlJacksonCoreObjectWriteContext_Base_set_EMPTY_CONTEXT(ComFasterxmlJacksonCoreObjectWriteContext_Base *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT ComFasterxmlJacksonCoreObjectWriteContext_Base *ComFasterxmlJacksonCoreObjectWriteContext_Base_EMPTY_CONTEXT;
J2OBJC_STATIC_FIELD_OBJ(ComFasterxmlJacksonCoreObjectWriteContext_Base, EMPTY_CONTEXT, ComFasterxmlJacksonCoreObjectWriteContext_Base *)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreObjectWriteContext_Base_init(ComFasterxmlJacksonCoreObjectWriteContext_Base *self);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreObjectWriteContext_Base *new_ComFasterxmlJacksonCoreObjectWriteContext_Base_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreObjectWriteContext_Base *create_ComFasterxmlJacksonCoreObjectWriteContext_Base_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreObjectWriteContext_Base)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreObjectWriteContext")
