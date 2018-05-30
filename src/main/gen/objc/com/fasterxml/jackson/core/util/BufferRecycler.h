//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/util/BufferRecycler.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreUtilBufferRecycler")
#ifdef RESTRICT_ComFasterxmlJacksonCoreUtilBufferRecycler
#define INCLUDE_ALL_ComFasterxmlJacksonCoreUtilBufferRecycler 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreUtilBufferRecycler 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreUtilBufferRecycler

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreUtilBufferRecycler_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreUtilBufferRecycler || defined(INCLUDE_ComFasterxmlJacksonCoreUtilBufferRecycler))
#define ComFasterxmlJacksonCoreUtilBufferRecycler_

@class IOSByteArray;
@class IOSCharArray;
@class IOSObjectArray;

/*!
 @brief This is a small utility class, whose main functionality is to allow
  simple reuse of raw byte/char buffers.It is usually used through 
 <code>ThreadLocal</code> member of the owning class pointing to
  instance of this class through a <code>SoftReference</code>.
 The
  end result is a low-overhead GC-cleanable recycling: hopefully
  ideal for use by stream readers.
 */
@interface ComFasterxmlJacksonCoreUtilBufferRecycler : NSObject {
 @public
  IOSObjectArray *_byteBuffers_;
  IOSObjectArray *_charBuffers_;
}

#pragma mark Public

/*!
 @brief Default constructor used for creating instances of this default
  implementation.
 */
- (instancetype __nonnull)init;

/*!
 @param ix One of  <code> READ_IO_BUFFER </code>  constants.
 */
- (IOSByteArray *)allocByteBufferWithInt:(jint)ix OBJC_METHOD_FAMILY_NONE;

- (IOSByteArray *)allocByteBufferWithInt:(jint)ix
                                 withInt:(jint)minSize OBJC_METHOD_FAMILY_NONE;

- (IOSCharArray *)allocCharBufferWithInt:(jint)ix OBJC_METHOD_FAMILY_NONE;

- (IOSCharArray *)allocCharBufferWithInt:(jint)ix
                                 withInt:(jint)minSize OBJC_METHOD_FAMILY_NONE;

- (void)releaseByteBufferWithInt:(jint)ix
                   withByteArray:(IOSByteArray *)buffer;

- (void)releaseCharBufferWithInt:(jint)ix
                   withCharArray:(IOSCharArray *)buffer;

#pragma mark Protected

/*!
 @brief Alternate constructor to be used by sub-classes, to allow customization
  of number of low-level buffers in use.
 @since 2.4
 */
- (instancetype __nonnull)initWithInt:(jint)bbCount
                              withInt:(jint)cbCount;

- (IOSByteArray *)ballocWithInt:(jint)size;

- (jint)byteBufferLengthWithInt:(jint)ix;

- (IOSCharArray *)callocWithInt:(jint)size;

- (jint)charBufferLengthWithInt:(jint)ix;

@end

J2OBJC_STATIC_INIT(ComFasterxmlJacksonCoreUtilBufferRecycler)

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreUtilBufferRecycler, _byteBuffers_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreUtilBufferRecycler, _charBuffers_, IOSObjectArray *)

/*!
 @brief Buffer used for reading byte-based input.
 */
inline jint ComFasterxmlJacksonCoreUtilBufferRecycler_get_BYTE_READ_IO_BUFFER(void);
#define ComFasterxmlJacksonCoreUtilBufferRecycler_BYTE_READ_IO_BUFFER 0
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreUtilBufferRecycler, BYTE_READ_IO_BUFFER, jint)

/*!
 @brief Buffer used for temporarily storing encoded content; used
  for example by UTF-8 encoding writer
 */
inline jint ComFasterxmlJacksonCoreUtilBufferRecycler_get_BYTE_WRITE_ENCODING_BUFFER(void);
#define ComFasterxmlJacksonCoreUtilBufferRecycler_BYTE_WRITE_ENCODING_BUFFER 1
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreUtilBufferRecycler, BYTE_WRITE_ENCODING_BUFFER, jint)

/*!
 @brief Buffer used for temporarily concatenating output; used for
  example when requesting output as byte array.
 */
inline jint ComFasterxmlJacksonCoreUtilBufferRecycler_get_BYTE_WRITE_CONCAT_BUFFER(void);
#define ComFasterxmlJacksonCoreUtilBufferRecycler_BYTE_WRITE_CONCAT_BUFFER 2
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreUtilBufferRecycler, BYTE_WRITE_CONCAT_BUFFER, jint)

/*!
 @brief Buffer used for concatenating binary data that is either being
  encoded as base64 output, or decoded from base64 input.
 @since 2.1
 */
inline jint ComFasterxmlJacksonCoreUtilBufferRecycler_get_BYTE_BASE64_CODEC_BUFFER(void);
#define ComFasterxmlJacksonCoreUtilBufferRecycler_BYTE_BASE64_CODEC_BUFFER 3
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreUtilBufferRecycler, BYTE_BASE64_CODEC_BUFFER, jint)

inline jint ComFasterxmlJacksonCoreUtilBufferRecycler_get_CHAR_TOKEN_BUFFER(void);
#define ComFasterxmlJacksonCoreUtilBufferRecycler_CHAR_TOKEN_BUFFER 0
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreUtilBufferRecycler, CHAR_TOKEN_BUFFER, jint)

inline jint ComFasterxmlJacksonCoreUtilBufferRecycler_get_CHAR_CONCAT_BUFFER(void);
#define ComFasterxmlJacksonCoreUtilBufferRecycler_CHAR_CONCAT_BUFFER 1
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreUtilBufferRecycler, CHAR_CONCAT_BUFFER, jint)

inline jint ComFasterxmlJacksonCoreUtilBufferRecycler_get_CHAR_TEXT_BUFFER(void);
#define ComFasterxmlJacksonCoreUtilBufferRecycler_CHAR_TEXT_BUFFER 2
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreUtilBufferRecycler, CHAR_TEXT_BUFFER, jint)

inline jint ComFasterxmlJacksonCoreUtilBufferRecycler_get_CHAR_NAME_COPY_BUFFER(void);
#define ComFasterxmlJacksonCoreUtilBufferRecycler_CHAR_NAME_COPY_BUFFER 3
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreUtilBufferRecycler, CHAR_NAME_COPY_BUFFER, jint)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreUtilBufferRecycler_init(ComFasterxmlJacksonCoreUtilBufferRecycler *self);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreUtilBufferRecycler *new_ComFasterxmlJacksonCoreUtilBufferRecycler_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreUtilBufferRecycler *create_ComFasterxmlJacksonCoreUtilBufferRecycler_init(void);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreUtilBufferRecycler_initWithInt_withInt_(ComFasterxmlJacksonCoreUtilBufferRecycler *self, jint bbCount, jint cbCount);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreUtilBufferRecycler *new_ComFasterxmlJacksonCoreUtilBufferRecycler_initWithInt_withInt_(jint bbCount, jint cbCount) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreUtilBufferRecycler *create_ComFasterxmlJacksonCoreUtilBufferRecycler_initWithInt_withInt_(jint bbCount, jint cbCount);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreUtilBufferRecycler)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreUtilBufferRecycler")