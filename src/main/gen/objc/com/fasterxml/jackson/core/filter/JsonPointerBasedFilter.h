//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/filter/JsonPointerBasedFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter")
#ifdef RESTRICT_ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter
#define INCLUDE_ALL_ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter || defined(INCLUDE_ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter))
#define ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter_

#define RESTRICT_ComFasterxmlJacksonCoreFilterTokenFilter 1
#define INCLUDE_ComFasterxmlJacksonCoreFilterTokenFilter 1
#include "com/fasterxml/jackson/core/filter/TokenFilter.h"

@class ComFasterxmlJacksonCoreJsonPointer;

/*!
 @brief Simple <code>TokenFilter</code> implementation that takes a single 
 <code>JsonPointer</code> and matches a single value accordingly.
 Instances are immutable and fully thread-safe, shareable,
  and efficient to use.
 @since 2.6
 */
@interface ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter : ComFasterxmlJacksonCoreFilterTokenFilter {
 @public
  ComFasterxmlJacksonCoreJsonPointer *_pathToMatch_;
}

#pragma mark Public

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreJsonPointer:(ComFasterxmlJacksonCoreJsonPointer *)match;

- (instancetype __nonnull)initWithNSString:(NSString *)ptrExpr;

- (ComFasterxmlJacksonCoreFilterTokenFilter *)filterStartArray;

- (ComFasterxmlJacksonCoreFilterTokenFilter *)filterStartObject;

- (ComFasterxmlJacksonCoreFilterTokenFilter *)includeElementWithInt:(jint)index;

- (ComFasterxmlJacksonCoreFilterTokenFilter *)includePropertyWithNSString:(NSString *)name;

- (NSString *)description;

#pragma mark Protected

- (jboolean)_includeScalar;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter)

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter, _pathToMatch_, ComFasterxmlJacksonCoreJsonPointer *)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter_initWithNSString_(ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter *self, NSString *ptrExpr);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter *new_ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter_initWithNSString_(NSString *ptrExpr) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter *create_ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter_initWithNSString_(NSString *ptrExpr);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter_initWithComFasterxmlJacksonCoreJsonPointer_(ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter *self, ComFasterxmlJacksonCoreJsonPointer *match);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter *new_ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter_initWithComFasterxmlJacksonCoreJsonPointer_(ComFasterxmlJacksonCoreJsonPointer *match) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter *create_ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter_initWithComFasterxmlJacksonCoreJsonPointer_(ComFasterxmlJacksonCoreJsonPointer *match);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreFilterJsonPointerBasedFilter")
