//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/io/JsonEOFException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreIoJsonEOFException")
#ifdef RESTRICT_ComFasterxmlJacksonCoreIoJsonEOFException
#define INCLUDE_ALL_ComFasterxmlJacksonCoreIoJsonEOFException 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreIoJsonEOFException 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreIoJsonEOFException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreIoJsonEOFException_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreIoJsonEOFException || defined(INCLUDE_ComFasterxmlJacksonCoreIoJsonEOFException))
#define ComFasterxmlJacksonCoreIoJsonEOFException_

#define RESTRICT_ComFasterxmlJacksonCoreJsonParseException 1
#define INCLUDE_ComFasterxmlJacksonCoreJsonParseException 1
#include "com/fasterxml/jackson/core/JsonParseException.h"

@class ComFasterxmlJacksonCoreJsonLocation;
@class ComFasterxmlJacksonCoreJsonParser;
@class ComFasterxmlJacksonCoreJsonToken;
@class JavaLangThrowable;

/*!
 @brief Specialized <code>JsonParseException</code> that is thrown when end-of-input
  is reached unexpectedly, either within token being decoded, or during
  skipping of intervening white-space that is not between root-level
  tokens (that is, is within JSON Object or JSON Array construct).
 @since 2.8
 */
@interface ComFasterxmlJacksonCoreIoJsonEOFException : ComFasterxmlJacksonCoreJsonParseException {
 @public
  /*!
   @brief Type of token that was being decoded, if parser had enough information
  to recognize type (such as starting double-quote for Strings)
   */
  ComFasterxmlJacksonCoreJsonToken *_token_;
}

#pragma mark Public

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)p
                               withComFasterxmlJacksonCoreJsonToken:(ComFasterxmlJacksonCoreJsonToken *)token
                                                       withNSString:(NSString *)msg;

/*!
 @brief Accessor for possibly available information about token that was being
  decoded while encountering end of input.
 */
- (ComFasterxmlJacksonCoreJsonToken *)getTokenBeingDecoded;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)arg0
                                                       withNSString:(NSString *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)arg0
                                                       withNSString:(NSString *)arg1
                            withComFasterxmlJacksonCoreJsonLocation:(ComFasterxmlJacksonCoreJsonLocation *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)arg0
                                                       withNSString:(NSString *)arg1
                            withComFasterxmlJacksonCoreJsonLocation:(ComFasterxmlJacksonCoreJsonLocation *)arg2
                                              withJavaLangThrowable:(JavaLangThrowable *)arg3 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)arg0
                                                       withNSString:(NSString *)arg1
                                              withJavaLangThrowable:(JavaLangThrowable *)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComFasterxmlJacksonCoreIoJsonEOFException)

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreIoJsonEOFException, _token_, ComFasterxmlJacksonCoreJsonToken *)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreIoJsonEOFException_initWithComFasterxmlJacksonCoreJsonParser_withComFasterxmlJacksonCoreJsonToken_withNSString_(ComFasterxmlJacksonCoreIoJsonEOFException *self, ComFasterxmlJacksonCoreJsonParser *p, ComFasterxmlJacksonCoreJsonToken *token, NSString *msg);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreIoJsonEOFException *new_ComFasterxmlJacksonCoreIoJsonEOFException_initWithComFasterxmlJacksonCoreJsonParser_withComFasterxmlJacksonCoreJsonToken_withNSString_(ComFasterxmlJacksonCoreJsonParser *p, ComFasterxmlJacksonCoreJsonToken *token, NSString *msg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreIoJsonEOFException *create_ComFasterxmlJacksonCoreIoJsonEOFException_initWithComFasterxmlJacksonCoreJsonParser_withComFasterxmlJacksonCoreJsonToken_withNSString_(ComFasterxmlJacksonCoreJsonParser *p, ComFasterxmlJacksonCoreJsonToken *token, NSString *msg);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreIoJsonEOFException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreIoJsonEOFException")
