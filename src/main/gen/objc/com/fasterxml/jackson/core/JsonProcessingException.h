//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/JsonProcessingException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreJsonProcessingException")
#ifdef RESTRICT_ComFasterxmlJacksonCoreJsonProcessingException
#define INCLUDE_ALL_ComFasterxmlJacksonCoreJsonProcessingException 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreJsonProcessingException 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreJsonProcessingException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreJsonProcessingException_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreJsonProcessingException || defined(INCLUDE_ComFasterxmlJacksonCoreJsonProcessingException))
#define ComFasterxmlJacksonCoreJsonProcessingException_

#define RESTRICT_JavaIoIOException 1
#define INCLUDE_JavaIoIOException 1
#include "java/io/IOException.h"

@class ComFasterxmlJacksonCoreJsonLocation;
@class JavaLangThrowable;

/*!
 @brief Intermediate base class for all problems encountered when
  processing (parsing, generating) JSON content
  that are not pure I/O problems.
 Regular <code>java.io.IOException</code>s will be passed through as is.
  Sub-class of <code>java.io.IOException</code> for convenience.
 */
@interface ComFasterxmlJacksonCoreJsonProcessingException : JavaIoIOException {
 @public
  ComFasterxmlJacksonCoreJsonLocation *_location_;
}

#pragma mark Public

/*!
 @brief Method that allows to remove context information from this exception's message.
 Useful when you are parsing security-sensitive data and don't want original data excerpts
  to be present in Jackson parser error messages.
 @since 2.9
 */
- (void)clearLocation;

- (ComFasterxmlJacksonCoreJsonLocation *)getLocation;

/*!
 @brief Default method overridden so that we can add location information
 */
- (NSString *)getMessage;

/*!
 @brief Method that allows accessing the original "message" argument,
  without additional decorations (like location information)
  that overridden <code>getMessage</code> adds.
 @since 2.1
 */
- (NSString *)getOriginalMessage;

/*!
 @brief Method that allows accessing underlying processor that triggered
  this exception; typically either <code>JsonParser</code> or <code>JsonGenerator</code>
  for exceptions that originate from streaming API.
 Note that it is possible that `null` may be returned if code throwing
  exception either has no access to processor; or has not been retrofitted
  to set it; this means that caller needs to take care to check for nulls.
  Subtypes override this method with co-variant return type, for more
  type-safe access.
 @return Originating processor, if available; null if not.
 @since 2.7
 */
- (id)getProcessor;

- (NSString *)description;

#pragma mark Protected

- (instancetype __nonnull)initWithNSString:(NSString *)msg;

- (instancetype __nonnull)initWithNSString:(NSString *)msg
   withComFasterxmlJacksonCoreJsonLocation:(ComFasterxmlJacksonCoreJsonLocation *)loc;

- (instancetype __nonnull)initWithNSString:(NSString *)msg
   withComFasterxmlJacksonCoreJsonLocation:(ComFasterxmlJacksonCoreJsonLocation *)loc
                     withJavaLangThrowable:(JavaLangThrowable *)rootCause;

- (instancetype __nonnull)initWithNSString:(NSString *)msg
                     withJavaLangThrowable:(JavaLangThrowable *)rootCause;

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)rootCause;

/*!
 @brief Accessor that sub-classes can override to append additional
  information right after the main message, but before
  source location information.
 */
- (NSString *)getMessageSuffix;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComFasterxmlJacksonCoreJsonProcessingException)

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreJsonProcessingException, _location_, ComFasterxmlJacksonCoreJsonLocation *)

inline jlong ComFasterxmlJacksonCoreJsonProcessingException_get_serialVersionUID(void);
#define ComFasterxmlJacksonCoreJsonProcessingException_serialVersionUID 123LL
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreJsonProcessingException, serialVersionUID, jlong)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_(ComFasterxmlJacksonCoreJsonProcessingException *self, NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc, JavaLangThrowable *rootCause);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonProcessingException *new_ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_(NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc, JavaLangThrowable *rootCause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonProcessingException *create_ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_withJavaLangThrowable_(NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc, JavaLangThrowable *rootCause);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_(ComFasterxmlJacksonCoreJsonProcessingException *self, NSString *msg);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonProcessingException *new_ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_(NSString *msg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonProcessingException *create_ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_(NSString *msg);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_(ComFasterxmlJacksonCoreJsonProcessingException *self, NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonProcessingException *new_ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_(NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonProcessingException *create_ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withComFasterxmlJacksonCoreJsonLocation_(NSString *msg, ComFasterxmlJacksonCoreJsonLocation *loc);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withJavaLangThrowable_(ComFasterxmlJacksonCoreJsonProcessingException *self, NSString *msg, JavaLangThrowable *rootCause);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonProcessingException *new_ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *rootCause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonProcessingException *create_ComFasterxmlJacksonCoreJsonProcessingException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *rootCause);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonProcessingException_initWithJavaLangThrowable_(ComFasterxmlJacksonCoreJsonProcessingException *self, JavaLangThrowable *rootCause);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonProcessingException *new_ComFasterxmlJacksonCoreJsonProcessingException_initWithJavaLangThrowable_(JavaLangThrowable *rootCause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonProcessingException *create_ComFasterxmlJacksonCoreJsonProcessingException_initWithJavaLangThrowable_(JavaLangThrowable *rootCause);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreJsonProcessingException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreJsonProcessingException")