//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/util/Instantiatable.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreUtilInstantiatable")
#ifdef RESTRICT_ComFasterxmlJacksonCoreUtilInstantiatable
#define INCLUDE_ALL_ComFasterxmlJacksonCoreUtilInstantiatable 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreUtilInstantiatable 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreUtilInstantiatable

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreUtilInstantiatable_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreUtilInstantiatable || defined(INCLUDE_ComFasterxmlJacksonCoreUtilInstantiatable))
#define ComFasterxmlJacksonCoreUtilInstantiatable_

/*!
 @brief Add-on interface used to indicate things that may be "blueprint" objects
  which can not be used as is, but are used for creating usable per-process
  (serialization, deserialization) instances, using 
 <code>createInstance</code> method.
 <p>
  Note that some implementations may choose to implement <code>createInstance</code>
  by simply returning 'this': this is acceptable if instances are stateless.
 - seealso: DefaultPrettyPrinter
 */
@protocol ComFasterxmlJacksonCoreUtilInstantiatable < JavaObject >

/*!
 @brief Method called to ensure that we have a non-blueprint object to use;
  it is either this object (if stateless), or a newly created object
  with separate state.
 */
- (id)createInstance;

@end

J2OBJC_EMPTY_STATIC_INIT(ComFasterxmlJacksonCoreUtilInstantiatable)

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreUtilInstantiatable)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreUtilInstantiatable")
