//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/JsonGenerationException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreJsonGenerationException")
#ifdef RESTRICT_ComFasterxmlJacksonCoreJsonGenerationException
#define INCLUDE_ALL_ComFasterxmlJacksonCoreJsonGenerationException 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreJsonGenerationException 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreJsonGenerationException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreJsonGenerationException_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreJsonGenerationException || defined(INCLUDE_ComFasterxmlJacksonCoreJsonGenerationException))
#define ComFasterxmlJacksonCoreJsonGenerationException_

#define RESTRICT_ComFasterxmlJacksonCoreJsonProcessingException 1
#define INCLUDE_ComFasterxmlJacksonCoreJsonProcessingException 1
#include "com/fasterxml/jackson/core/JsonProcessingException.h"

@class ComFasterxmlJacksonCoreJsonGenerator;
@class ComFasterxmlJacksonCoreJsonLocation;
@class JavaLangThrowable;

/*!
 @brief Exception type for exceptions during JSON writing, such as trying
  to output  content in wrong context (non-matching end-array or end-object,
  for example).
 */
@interface ComFasterxmlJacksonCoreJsonGenerationException : ComFasterxmlJacksonCoreJsonProcessingException {
 @public
  ComFasterxmlJacksonCoreJsonGenerator *_processor_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)msg;

/*!
 @since 2.7
 */
- (instancetype __nonnull)initWithNSString:(NSString *)msg
  withComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)g;

- (instancetype __nonnull)initWithNSString:(NSString *)msg
                     withJavaLangThrowable:(JavaLangThrowable *)rootCause;

/*!
 @since 2.7
 */
- (instancetype __nonnull)initWithNSString:(NSString *)msg
                     withJavaLangThrowable:(JavaLangThrowable *)rootCause
  withComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)g;

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)rootCause;

/*!
 @since 2.7
 */
- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)rootCause
           withComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)g;

- (ComFasterxmlJacksonCoreJsonGenerator *)getProcessor;

/*!
 @brief Fluent method that may be used to assign originating <code>JsonGenerator</code>,
  to be accessed using <code>getProcessor()</code>.
 @since 2.7
 */
- (ComFasterxmlJacksonCoreJsonGenerationException *)withGeneratorWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)g;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
   withComFasterxmlJacksonCoreJsonLocation:(ComFasterxmlJacksonCoreJsonLocation *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
   withComFasterxmlJacksonCoreJsonLocation:(ComFasterxmlJacksonCoreJsonLocation *)arg1
                     withJavaLangThrowable:(JavaLangThrowable *)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComFasterxmlJacksonCoreJsonGenerationException)

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreJsonGenerationException, _processor_, ComFasterxmlJacksonCoreJsonGenerator *)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonGenerationException_initWithJavaLangThrowable_(ComFasterxmlJacksonCoreJsonGenerationException *self, JavaLangThrowable *rootCause);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonGenerationException *new_ComFasterxmlJacksonCoreJsonGenerationException_initWithJavaLangThrowable_(JavaLangThrowable *rootCause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonGenerationException *create_ComFasterxmlJacksonCoreJsonGenerationException_initWithJavaLangThrowable_(JavaLangThrowable *rootCause);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonGenerationException_initWithNSString_(ComFasterxmlJacksonCoreJsonGenerationException *self, NSString *msg);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonGenerationException *new_ComFasterxmlJacksonCoreJsonGenerationException_initWithNSString_(NSString *msg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonGenerationException *create_ComFasterxmlJacksonCoreJsonGenerationException_initWithNSString_(NSString *msg);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonGenerationException_initWithNSString_withJavaLangThrowable_(ComFasterxmlJacksonCoreJsonGenerationException *self, NSString *msg, JavaLangThrowable *rootCause);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonGenerationException *new_ComFasterxmlJacksonCoreJsonGenerationException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *rootCause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonGenerationException *create_ComFasterxmlJacksonCoreJsonGenerationException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *rootCause);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonGenerationException_initWithJavaLangThrowable_withComFasterxmlJacksonCoreJsonGenerator_(ComFasterxmlJacksonCoreJsonGenerationException *self, JavaLangThrowable *rootCause, ComFasterxmlJacksonCoreJsonGenerator *g);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonGenerationException *new_ComFasterxmlJacksonCoreJsonGenerationException_initWithJavaLangThrowable_withComFasterxmlJacksonCoreJsonGenerator_(JavaLangThrowable *rootCause, ComFasterxmlJacksonCoreJsonGenerator *g) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonGenerationException *create_ComFasterxmlJacksonCoreJsonGenerationException_initWithJavaLangThrowable_withComFasterxmlJacksonCoreJsonGenerator_(JavaLangThrowable *rootCause, ComFasterxmlJacksonCoreJsonGenerator *g);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonGenerationException_initWithNSString_withComFasterxmlJacksonCoreJsonGenerator_(ComFasterxmlJacksonCoreJsonGenerationException *self, NSString *msg, ComFasterxmlJacksonCoreJsonGenerator *g);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonGenerationException *new_ComFasterxmlJacksonCoreJsonGenerationException_initWithNSString_withComFasterxmlJacksonCoreJsonGenerator_(NSString *msg, ComFasterxmlJacksonCoreJsonGenerator *g) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonGenerationException *create_ComFasterxmlJacksonCoreJsonGenerationException_initWithNSString_withComFasterxmlJacksonCoreJsonGenerator_(NSString *msg, ComFasterxmlJacksonCoreJsonGenerator *g);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonGenerationException_initWithNSString_withJavaLangThrowable_withComFasterxmlJacksonCoreJsonGenerator_(ComFasterxmlJacksonCoreJsonGenerationException *self, NSString *msg, JavaLangThrowable *rootCause, ComFasterxmlJacksonCoreJsonGenerator *g);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonGenerationException *new_ComFasterxmlJacksonCoreJsonGenerationException_initWithNSString_withJavaLangThrowable_withComFasterxmlJacksonCoreJsonGenerator_(NSString *msg, JavaLangThrowable *rootCause, ComFasterxmlJacksonCoreJsonGenerator *g) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonGenerationException *create_ComFasterxmlJacksonCoreJsonGenerationException_initWithNSString_withJavaLangThrowable_withComFasterxmlJacksonCoreJsonGenerator_(NSString *msg, JavaLangThrowable *rootCause, ComFasterxmlJacksonCoreJsonGenerator *g);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreJsonGenerationException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreJsonGenerationException")