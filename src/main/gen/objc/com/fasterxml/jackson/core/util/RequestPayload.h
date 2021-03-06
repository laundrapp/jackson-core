//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/util/RequestPayload.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreUtilRequestPayload")
#ifdef RESTRICT_ComFasterxmlJacksonCoreUtilRequestPayload
#define INCLUDE_ALL_ComFasterxmlJacksonCoreUtilRequestPayload 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreUtilRequestPayload 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreUtilRequestPayload

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreUtilRequestPayload_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreUtilRequestPayload || defined(INCLUDE_ComFasterxmlJacksonCoreUtilRequestPayload))
#define ComFasterxmlJacksonCoreUtilRequestPayload_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class IOSByteArray;
@protocol JavaLangCharSequence;

/*!
 @brief Container object used to contain optional information on content
  being parsed, passed to <code>com.fasterxml.jackson.core.JsonParseException</code> in case of
  exception being thrown; this may be useful for caller to display
  information on failure.
 @since 2.8
 */
@interface ComFasterxmlJacksonCoreUtilRequestPayload : NSObject < JavaIoSerializable > {
 @public
  IOSByteArray *_payloadAsBytes_;
  id<JavaLangCharSequence> _payloadAsText_;
  NSString *_charset_;
}

#pragma mark Public

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)bytes
                               withNSString:(NSString *)charset;

- (instancetype __nonnull)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)str;

/*!
 @brief Returns the raw request payload object i.e, either byte[] or String
 @return Object which is a raw request payload i.e, either byte[] or
          String
 */
- (id)getRawPayload;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComFasterxmlJacksonCoreUtilRequestPayload)

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreUtilRequestPayload, _payloadAsBytes_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreUtilRequestPayload, _payloadAsText_, id<JavaLangCharSequence>)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreUtilRequestPayload, _charset_, NSString *)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreUtilRequestPayload_initWithByteArray_withNSString_(ComFasterxmlJacksonCoreUtilRequestPayload *self, IOSByteArray *bytes, NSString *charset);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreUtilRequestPayload *new_ComFasterxmlJacksonCoreUtilRequestPayload_initWithByteArray_withNSString_(IOSByteArray *bytes, NSString *charset) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreUtilRequestPayload *create_ComFasterxmlJacksonCoreUtilRequestPayload_initWithByteArray_withNSString_(IOSByteArray *bytes, NSString *charset);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreUtilRequestPayload_initWithJavaLangCharSequence_(ComFasterxmlJacksonCoreUtilRequestPayload *self, id<JavaLangCharSequence> str);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreUtilRequestPayload *new_ComFasterxmlJacksonCoreUtilRequestPayload_initWithJavaLangCharSequence_(id<JavaLangCharSequence> str) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreUtilRequestPayload *create_ComFasterxmlJacksonCoreUtilRequestPayload_initWithJavaLangCharSequence_(id<JavaLangCharSequence> str);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreUtilRequestPayload)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreUtilRequestPayload")
