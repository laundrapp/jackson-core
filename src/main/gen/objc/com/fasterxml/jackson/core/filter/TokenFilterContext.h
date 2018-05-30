//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/filter/TokenFilterContext.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreFilterTokenFilterContext")
#ifdef RESTRICT_ComFasterxmlJacksonCoreFilterTokenFilterContext
#define INCLUDE_ALL_ComFasterxmlJacksonCoreFilterTokenFilterContext 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreFilterTokenFilterContext 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreFilterTokenFilterContext

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreFilterTokenFilterContext_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreFilterTokenFilterContext || defined(INCLUDE_ComFasterxmlJacksonCoreFilterTokenFilterContext))
#define ComFasterxmlJacksonCoreFilterTokenFilterContext_

#define RESTRICT_ComFasterxmlJacksonCoreJsonStreamContext 1
#define INCLUDE_ComFasterxmlJacksonCoreJsonStreamContext 1
#include "com/fasterxml/jackson/core/JsonStreamContext.h"

@class ComFasterxmlJacksonCoreFilterTokenFilter;
@class ComFasterxmlJacksonCoreJsonGenerator;
@class ComFasterxmlJacksonCoreJsonToken;
@class JavaLangStringBuilder;

/*!
 @brief Alternative variant of <code>JsonStreamContext</code>, used when filtering
  content being read or written (based on <code>TokenFilter</code>).
 @since 2.6
 */
@interface ComFasterxmlJacksonCoreFilterTokenFilterContext : ComFasterxmlJacksonCoreJsonStreamContext {
 @public
  /*!
   @brief Parent context for this context; null for root context.
   */
  ComFasterxmlJacksonCoreFilterTokenFilterContext *_parent_;
  ComFasterxmlJacksonCoreFilterTokenFilterContext *_child_;
  /*!
   @brief Name of the field of which value is to be parsed; only
  used for OBJECT contexts
   */
  NSString *_currentName_;
  /*!
   @brief Filter to use for items in this state (for properties of Objects,
  elements of Arrays, and root-level values of root context)
   */
  ComFasterxmlJacksonCoreFilterTokenFilter *_filter_;
  /*!
   @brief Flag that indicates that start token has been read/written,
  so that matching close token needs to be read/written as well
  when context is getting closed.
   */
  jboolean _startHandled_;
  /*!
   @brief Flag that indicates that the current name of this context
  still needs to be read/written, if path from root down to
  included leaf is to be exposed.
   */
  jboolean _needToHandleName_;
}

#pragma mark Public

/*!
 @brief Method called to check whether value is to be included at current output
  position, either as Object property, Array element, or root value.
 */
- (ComFasterxmlJacksonCoreFilterTokenFilter *)checkValueWithComFasterxmlJacksonCoreFilterTokenFilter:(ComFasterxmlJacksonCoreFilterTokenFilter *)filter;

- (ComFasterxmlJacksonCoreFilterTokenFilterContext *)closeArrayWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)gen;

- (ComFasterxmlJacksonCoreFilterTokenFilterContext *)closeObjectWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)gen;

- (ComFasterxmlJacksonCoreFilterTokenFilterContext *)createChildArrayContextWithComFasterxmlJacksonCoreFilterTokenFilter:(ComFasterxmlJacksonCoreFilterTokenFilter *)filter
                                                                                                             withBoolean:(jboolean)writeStart;

- (ComFasterxmlJacksonCoreFilterTokenFilterContext *)createChildObjectContextWithComFasterxmlJacksonCoreFilterTokenFilter:(ComFasterxmlJacksonCoreFilterTokenFilter *)filter
                                                                                                              withBoolean:(jboolean)writeStart;

+ (ComFasterxmlJacksonCoreFilterTokenFilterContext *)createRootContextWithComFasterxmlJacksonCoreFilterTokenFilter:(ComFasterxmlJacksonCoreFilterTokenFilter *)filter;

- (ComFasterxmlJacksonCoreFilterTokenFilterContext *)findChildOfWithComFasterxmlJacksonCoreFilterTokenFilterContext:(ComFasterxmlJacksonCoreFilterTokenFilterContext *)parent;

- (NSString *)getCurrentName;

- (id)getCurrentValue;

- (ComFasterxmlJacksonCoreFilterTokenFilter *)getFilter;

- (ComFasterxmlJacksonCoreFilterTokenFilterContext *)getParent;

- (jboolean)hasCurrentName;

- (jboolean)isStartHandled;

- (ComFasterxmlJacksonCoreJsonToken *)nextTokenToRead;

- (void)setCurrentValueWithId:(id)v;

- (ComFasterxmlJacksonCoreFilterTokenFilter *)setFieldNameWithNSString:(NSString *)name;

- (void)skipParentChecks;

/*!
 @brief Overridden to provide developer writeable "JsonPath" representation
  of the context.
 */
- (NSString *)description;

/*!
 @brief Variant of <code>writePath(JsonGenerator)</code> called when all we
  need is immediately surrounding Object.Method typically called
  when including a single property but not including full path
  to root.
 */
- (void)writeImmediatePathWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)gen;

/*!
 @brief Method called to ensure that parent path from root is written up to
  and including this node.
 */
- (void)writePathWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)gen;

#pragma mark Protected

- (instancetype __nonnull)initWithInt:(jint)type
withComFasterxmlJacksonCoreFilterTokenFilterContext:(ComFasterxmlJacksonCoreFilterTokenFilterContext *)parent
withComFasterxmlJacksonCoreFilterTokenFilter:(ComFasterxmlJacksonCoreFilterTokenFilter *)filter
                          withBoolean:(jboolean)startHandled;

- (void)appendDescWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb;

- (ComFasterxmlJacksonCoreFilterTokenFilterContext *)resetWithInt:(jint)type
                     withComFasterxmlJacksonCoreFilterTokenFilter:(ComFasterxmlJacksonCoreFilterTokenFilter *)filter
                                                      withBoolean:(jboolean)startWritten;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreJsonStreamContext:(ComFasterxmlJacksonCoreJsonStreamContext *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithInt:(jint)arg0
                              withInt:(jint)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComFasterxmlJacksonCoreFilterTokenFilterContext)

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreFilterTokenFilterContext, _parent_, ComFasterxmlJacksonCoreFilterTokenFilterContext *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreFilterTokenFilterContext, _child_, ComFasterxmlJacksonCoreFilterTokenFilterContext *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreFilterTokenFilterContext, _currentName_, NSString *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreFilterTokenFilterContext, _filter_, ComFasterxmlJacksonCoreFilterTokenFilter *)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreFilterTokenFilterContext_initWithInt_withComFasterxmlJacksonCoreFilterTokenFilterContext_withComFasterxmlJacksonCoreFilterTokenFilter_withBoolean_(ComFasterxmlJacksonCoreFilterTokenFilterContext *self, jint type, ComFasterxmlJacksonCoreFilterTokenFilterContext *parent, ComFasterxmlJacksonCoreFilterTokenFilter *filter, jboolean startHandled);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreFilterTokenFilterContext *new_ComFasterxmlJacksonCoreFilterTokenFilterContext_initWithInt_withComFasterxmlJacksonCoreFilterTokenFilterContext_withComFasterxmlJacksonCoreFilterTokenFilter_withBoolean_(jint type, ComFasterxmlJacksonCoreFilterTokenFilterContext *parent, ComFasterxmlJacksonCoreFilterTokenFilter *filter, jboolean startHandled) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreFilterTokenFilterContext *create_ComFasterxmlJacksonCoreFilterTokenFilterContext_initWithInt_withComFasterxmlJacksonCoreFilterTokenFilterContext_withComFasterxmlJacksonCoreFilterTokenFilter_withBoolean_(jint type, ComFasterxmlJacksonCoreFilterTokenFilterContext *parent, ComFasterxmlJacksonCoreFilterTokenFilter *filter, jboolean startHandled);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreFilterTokenFilterContext *ComFasterxmlJacksonCoreFilterTokenFilterContext_createRootContextWithComFasterxmlJacksonCoreFilterTokenFilter_(ComFasterxmlJacksonCoreFilterTokenFilter *filter);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreFilterTokenFilterContext)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreFilterTokenFilterContext")
