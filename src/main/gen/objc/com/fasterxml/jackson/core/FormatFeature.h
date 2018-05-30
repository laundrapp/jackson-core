//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/FormatFeature.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreFormatFeature")
#ifdef RESTRICT_ComFasterxmlJacksonCoreFormatFeature
#define INCLUDE_ALL_ComFasterxmlJacksonCoreFormatFeature 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreFormatFeature 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreFormatFeature

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreFormatFeature_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreFormatFeature || defined(INCLUDE_ComFasterxmlJacksonCoreFormatFeature))
#define ComFasterxmlJacksonCoreFormatFeature_

/*!
 @brief Marker interface that is to be implemented by data format - specific features.
 Interface used since Java Enums can not extend classes or other Enums, but
  they can implement interfaces; and as such we may be able to use limited
  amount of generic functionality.
 <p>
  Note that this type is only implemented by non-JSON formats:
  types <code>JsonParser.Feature</code> and <code>JsonGenerator.Feature</code> do NOT
  implement it. This is to make it easier to avoid ambiguity with method
  calls.
 @since 2.6 (to be fully used in 2.7 and beyond)
 */
@protocol ComFasterxmlJacksonCoreFormatFeature < JavaObject >

/*!
 @brief Accessor for checking whether this feature is enabled by default.
 */
- (jboolean)enabledByDefault;

/*!
 @brief Returns bit mask for this feature instance; must be a single bit,
  that is of form <code>(1 &lt;&lt; N)</code>
 */
- (jint)getMask;

/*!
 @brief Convenience method for checking whether feature is enabled in given bitmask
 */
- (jboolean)enabledInWithInt:(jint)flags;

@end

J2OBJC_EMPTY_STATIC_INIT(ComFasterxmlJacksonCoreFormatFeature)

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreFormatFeature)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreFormatFeature")
