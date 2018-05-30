//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/async/ByteBufferFeeder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreAsyncByteBufferFeeder")
#ifdef RESTRICT_ComFasterxmlJacksonCoreAsyncByteBufferFeeder
#define INCLUDE_ALL_ComFasterxmlJacksonCoreAsyncByteBufferFeeder 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreAsyncByteBufferFeeder 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreAsyncByteBufferFeeder

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreAsyncByteBufferFeeder_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreAsyncByteBufferFeeder || defined(INCLUDE_ComFasterxmlJacksonCoreAsyncByteBufferFeeder))
#define ComFasterxmlJacksonCoreAsyncByteBufferFeeder_

#define RESTRICT_ComFasterxmlJacksonCoreAsyncNonBlockingInputFeeder 1
#define INCLUDE_ComFasterxmlJacksonCoreAsyncNonBlockingInputFeeder 1
#include "com/fasterxml/jackson/core/async/NonBlockingInputFeeder.h"

@class JavaNioByteBuffer;

/*!
 @brief <code>NonBlockingInputFeeder</code> implementation used when feeding data
  as <code>ByteBuffer</code> contents.
 @since 2.9
 */
@protocol ComFasterxmlJacksonCoreAsyncByteBufferFeeder < ComFasterxmlJacksonCoreAsyncNonBlockingInputFeeder, JavaObject >

/*!
 @brief Method that can be called to feed more data, if (and only if) 
 <code>NonBlockingInputFeeder.needMoreInput</code> returns true.
 @param buffer Buffer that contains additional input to read
 @throw IOExceptionif the state is such that this method should not be called
    (has not yet consumed existing input data, or has been marked as closed)
 */
- (void)feedInputWithJavaNioByteBuffer:(JavaNioByteBuffer *)buffer;

@end

J2OBJC_EMPTY_STATIC_INIT(ComFasterxmlJacksonCoreAsyncByteBufferFeeder)

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreAsyncByteBufferFeeder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreAsyncByteBufferFeeder")