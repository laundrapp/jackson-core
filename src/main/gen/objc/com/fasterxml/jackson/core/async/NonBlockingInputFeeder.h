//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/async/NonBlockingInputFeeder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreAsyncNonBlockingInputFeeder")
#ifdef RESTRICT_ComFasterxmlJacksonCoreAsyncNonBlockingInputFeeder
#define INCLUDE_ALL_ComFasterxmlJacksonCoreAsyncNonBlockingInputFeeder 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreAsyncNonBlockingInputFeeder 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreAsyncNonBlockingInputFeeder

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreAsyncNonBlockingInputFeeder_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreAsyncNonBlockingInputFeeder || defined(INCLUDE_ComFasterxmlJacksonCoreAsyncNonBlockingInputFeeder))
#define ComFasterxmlJacksonCoreAsyncNonBlockingInputFeeder_

/*!
 @brief Interface used by non-blocking <code>com.fasterxml.jackson.core.JsonParser</code>
  implementations to feed input to parse.
 Feeder is used by entity that feeds content to parse; at any given point
  only one chunk of content can be processed so caller has to take care to
  only feed more content when existing content has been parsed (which occurs
  when parser's <code>nextToken</code> is called). Once application using
  non-blocking parser has no more data to feed it should call 
 <code>endOfInput</code> to indicate end of logical input (stream) to parse.
 @since 2.9
 */
@protocol ComFasterxmlJacksonCoreAsyncNonBlockingInputFeeder < JavaObject >

/*!
 @brief Method called to check whether it is ok to feed more data: parser returns true
  if it has no more content to parse (and it is ok to feed more); otherwise false
  (and no data should yet be fed).
 */
- (jboolean)needMoreInput;

/*!
 @brief Method that should be called after last chunk of data to parse has been fed
  (with <code>feedInput</code> in sub-class); can be called regardless of what <code>needMoreInput</code>
  returns.After calling this method, no more data can be fed; and parser assumes
  no more data will be available.
 */
- (void)endOfInput;

@end

J2OBJC_EMPTY_STATIC_INIT(ComFasterxmlJacksonCoreAsyncNonBlockingInputFeeder)

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreAsyncNonBlockingInputFeeder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreAsyncNonBlockingInputFeeder")