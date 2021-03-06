//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/io/OutputDecorator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreIoOutputDecorator")
#ifdef RESTRICT_ComFasterxmlJacksonCoreIoOutputDecorator
#define INCLUDE_ALL_ComFasterxmlJacksonCoreIoOutputDecorator 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreIoOutputDecorator 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreIoOutputDecorator

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreIoOutputDecorator_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreIoOutputDecorator || defined(INCLUDE_ComFasterxmlJacksonCoreIoOutputDecorator))
#define ComFasterxmlJacksonCoreIoOutputDecorator_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class ComFasterxmlJacksonCoreIoIOContext;
@class JavaIoOutputStream;
@class JavaIoWriter;

/*!
 @brief Handler class that can be used to decorate output destinations.
 Typical use is to use a filter abstraction (filtered output stream,
  writer) around original output destination, and apply additional
  processing during write operations.
 */
@interface ComFasterxmlJacksonCoreIoOutputDecorator : NSObject < JavaIoSerializable >

#pragma mark Public

- (instancetype __nonnull)init;

/*!
 @brief Method called by <code>com.fasterxml.jackson.core.json.JsonFactory</code> instance when
  creating generator for given <code>OutputStream</code>, when this decorator
  has been registered.
 @param ctxt IO context in use (provides access to declared encoding)
 @param outArg Original output destination
 @return OutputStream to use; either passed in argument, or something that
    calls it
 */
- (JavaIoOutputStream *)decorateWithComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

/*!
 @brief Method called by <code>com.fasterxml.jackson.core.json.JsonFactory</code> instance when
  creating generator for given <code>Writer</code>, when this decorator
  has been registered.
 @param ctxt IO context in use (provides access to declared encoding)
 @param w Original output writer
 @return Writer to use; either passed in argument, or something that calls it
 */
- (JavaIoWriter *)decorateWithComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                withJavaIoWriter:(JavaIoWriter *)w;

@end

J2OBJC_EMPTY_STATIC_INIT(ComFasterxmlJacksonCoreIoOutputDecorator)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreIoOutputDecorator_init(ComFasterxmlJacksonCoreIoOutputDecorator *self);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreIoOutputDecorator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreIoOutputDecorator")
