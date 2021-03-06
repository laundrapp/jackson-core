//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/io/JsonStringEncoder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreIoJsonStringEncoder")
#ifdef RESTRICT_ComFasterxmlJacksonCoreIoJsonStringEncoder
#define INCLUDE_ALL_ComFasterxmlJacksonCoreIoJsonStringEncoder 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreIoJsonStringEncoder 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreIoJsonStringEncoder

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreIoJsonStringEncoder_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreIoJsonStringEncoder || defined(INCLUDE_ComFasterxmlJacksonCoreIoJsonStringEncoder))
#define ComFasterxmlJacksonCoreIoJsonStringEncoder_

@class ComFasterxmlJacksonCoreUtilByteArrayBuilder;
@class ComFasterxmlJacksonCoreUtilTextBuffer;
@class IOSByteArray;
@class IOSCharArray;
@class JavaLangStringBuilder;
@protocol JavaLangCharSequence;

/*!
 @brief Helper class used for efficient encoding of JSON String values (including
  JSON field names) into Strings or UTF-8 byte arrays.
 <p>
  Note that methods in here are somewhat optimized, but not ridiculously so.
  Reason is that conversion method results are expected to be cached so that
  these methods will not be hot spots during normal operation.
 <p>
  NOTE: starting with 2.9.3, access to most functionality should go through 
 <code>BufferRecyclers</code> and NOT directly through this class.
 */
@interface ComFasterxmlJacksonCoreIoJsonStringEncoder : NSObject {
 @public
  /*!
   @brief Lazily constructed text buffer used to produce JSON encoded Strings
  as characters (without UTF-8 encoding)
   */
  ComFasterxmlJacksonCoreUtilTextBuffer *_text_;
  /*!
   @brief Lazily-constructed builder used for UTF-8 encoding of text values
  (quoted and unquoted)
   */
  ComFasterxmlJacksonCoreUtilByteArrayBuilder *_bytes_;
  /*!
   @brief Temporary buffer used for composing quote/escape sequences
   */
  IOSCharArray *_qbuf_;
}

#pragma mark Public

- (instancetype __nonnull)init;

/*!
 @brief Will encode given String as UTF-8 (without any quoting), return
  resulting byte array.
 */
- (IOSByteArray *)encodeAsUTF8WithNSString:(NSString *)text;

/*!
 @brief Factory method for getting an instance; this is either recycled per-thread instance,
  or a newly constructed one.
 */
+ (ComFasterxmlJacksonCoreIoJsonStringEncoder *)getInstance;

/*!
 @brief Method that will quote text contents using JSON standard quoting,
  and append results to a supplied <code>StringBuilder</code>.
 Use this variant if you have e.g. a <code>StringBuilder</code> and want to avoid superfluous copying of it.
 */
- (void)quoteAsStringWithJavaLangCharSequence:(id<JavaLangCharSequence>)input
                    withJavaLangStringBuilder:(JavaLangStringBuilder *)output;

/*!
 @brief Method that will quote text contents using JSON standard quoting,
  and return results as a character array
 */
- (IOSCharArray *)quoteAsStringWithNSString:(NSString *)input;

/*!
 @brief Will quote given JSON String value using standard quoting, encode
  results as UTF-8, and return result as a byte array.
 */
- (IOSByteArray *)quoteAsUTF8WithNSString:(NSString *)text;

@end

J2OBJC_STATIC_INIT(ComFasterxmlJacksonCoreIoJsonStringEncoder)

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreIoJsonStringEncoder, _text_, ComFasterxmlJacksonCoreUtilTextBuffer *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreIoJsonStringEncoder, _bytes_, ComFasterxmlJacksonCoreUtilByteArrayBuilder *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreIoJsonStringEncoder, _qbuf_, IOSCharArray *)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreIoJsonStringEncoder_init(ComFasterxmlJacksonCoreIoJsonStringEncoder *self);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreIoJsonStringEncoder *new_ComFasterxmlJacksonCoreIoJsonStringEncoder_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreIoJsonStringEncoder *create_ComFasterxmlJacksonCoreIoJsonStringEncoder_init(void);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreIoJsonStringEncoder *ComFasterxmlJacksonCoreIoJsonStringEncoder_getInstance(void);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreIoJsonStringEncoder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreIoJsonStringEncoder")
