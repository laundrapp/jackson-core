//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/Base64Variants.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreBase64Variants")
#ifdef RESTRICT_ComFasterxmlJacksonCoreBase64Variants
#define INCLUDE_ALL_ComFasterxmlJacksonCoreBase64Variants 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreBase64Variants 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreBase64Variants

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreBase64Variants_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreBase64Variants || defined(INCLUDE_ComFasterxmlJacksonCoreBase64Variants))
#define ComFasterxmlJacksonCoreBase64Variants_

@class ComFasterxmlJacksonCoreBase64Variant;

/*!
 @brief Container for commonly used Base64 variants:
 <ul>
  <li> <code>MIME</code>
  <li> <code>MIME_NO_LINEFEEDS</code>
  <li> <code>PEM</code>
  <li> <code>MODIFIED_FOR_URL</code>
  </ul>
 @author Tatu Saloranta
 */
@interface ComFasterxmlJacksonCoreBase64Variants : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

/*!
 @brief Method used to get the default variant ("MIME_NO_LINEFEEDS") for cases
  where caller does not explicitly specify the variant.
 We will prefer no-linefeed version because linefeeds in JSON values
  must be escaped, making linefeed-containing variants sub-optimal.
 */
+ (ComFasterxmlJacksonCoreBase64Variant *)getDefaultVariant;

+ (ComFasterxmlJacksonCoreBase64Variant *)valueOfWithNSString:(NSString *)name;

@end

J2OBJC_STATIC_INIT(ComFasterxmlJacksonCoreBase64Variants)

inline NSString *ComFasterxmlJacksonCoreBase64Variants_get_STD_BASE64_ALPHABET(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComFasterxmlJacksonCoreBase64Variants_STD_BASE64_ALPHABET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreBase64Variants, STD_BASE64_ALPHABET, NSString *)

/*!
 @brief This variant is what most people would think of "the standard"
  Base64 encoding.
 <p>
  See <a href="http://en.wikipedia.org/wiki/Base64">wikipedia Base64 entry</a> for details.
 <p>
  Note that although this can be thought of as the standard variant,
  it is <b>not</b> the default for Jackson: no-linefeeds alternative
  is because of JSON requirement of escaping all linefeeds.
 */
inline ComFasterxmlJacksonCoreBase64Variant *ComFasterxmlJacksonCoreBase64Variants_get_MIME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT ComFasterxmlJacksonCoreBase64Variant *ComFasterxmlJacksonCoreBase64Variants_MIME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreBase64Variants, MIME, ComFasterxmlJacksonCoreBase64Variant *)

/*!
 @brief Slightly non-standard modification of <code>MIME</code> which does not
  use linefeeds (max line length set to infinite).Useful when linefeeds
  wouldn't work well (possibly in attributes), or for minor space savings
  (save 1 linefeed per 76 data chars, ie. ~1.4% savings).
 */
inline ComFasterxmlJacksonCoreBase64Variant *ComFasterxmlJacksonCoreBase64Variants_get_MIME_NO_LINEFEEDS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT ComFasterxmlJacksonCoreBase64Variant *ComFasterxmlJacksonCoreBase64Variants_MIME_NO_LINEFEEDS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreBase64Variants, MIME_NO_LINEFEEDS, ComFasterxmlJacksonCoreBase64Variant *)

/*!
 @brief This variant is the one that predates <code>MIME</code>: it is otherwise
  identical, except that it mandates shorter line length.
 */
inline ComFasterxmlJacksonCoreBase64Variant *ComFasterxmlJacksonCoreBase64Variants_get_PEM(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT ComFasterxmlJacksonCoreBase64Variant *ComFasterxmlJacksonCoreBase64Variants_PEM;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreBase64Variants, PEM, ComFasterxmlJacksonCoreBase64Variant *)

/*!
 @brief This non-standard variant is usually used when encoded data needs to be
  passed via URLs (such as part of GET request).It differs from the
  base <code>MIME</code> variant in multiple ways.
 First, no padding is used: this also means that it generally can not
  be written in multiple separate but adjacent chunks (which would not
  be the usual use case in any case). Also, no linefeeds are used (max
  line length set to infinite). And finally, two characters (plus and
  slash) that would need quoting in URLs are replaced with more
  optimal alternatives (hyphen and underscore, respectively).
 */
inline ComFasterxmlJacksonCoreBase64Variant *ComFasterxmlJacksonCoreBase64Variants_get_MODIFIED_FOR_URL(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT ComFasterxmlJacksonCoreBase64Variant *ComFasterxmlJacksonCoreBase64Variants_MODIFIED_FOR_URL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreBase64Variants, MODIFIED_FOR_URL, ComFasterxmlJacksonCoreBase64Variant *)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreBase64Variants_init(ComFasterxmlJacksonCoreBase64Variants *self);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreBase64Variants *new_ComFasterxmlJacksonCoreBase64Variants_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreBase64Variants *create_ComFasterxmlJacksonCoreBase64Variants_init(void);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreBase64Variant *ComFasterxmlJacksonCoreBase64Variants_getDefaultVariant(void);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreBase64Variant *ComFasterxmlJacksonCoreBase64Variants_valueOfWithNSString_(NSString *name);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreBase64Variants)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreBase64Variants")
