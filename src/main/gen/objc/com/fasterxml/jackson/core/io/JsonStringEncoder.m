//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/io/JsonStringEncoder.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/io/CharTypes.h"
#include "com/fasterxml/jackson/core/io/JsonStringEncoder.h"
#include "com/fasterxml/jackson/core/io/UTF8Writer.h"
#include "com/fasterxml/jackson/core/util/BufferRecyclers.h"
#include "com/fasterxml/jackson/core/util/ByteArrayBuilder.h"
#include "com/fasterxml/jackson/core/util/TextBuffer.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/lang/annotation/Annotation.h"

@interface ComFasterxmlJacksonCoreIoJsonStringEncoder ()

- (jint)_appendNumericWithInt:(jint)value
                withCharArray:(IOSCharArray *)qbuf;

- (jint)_appendNamedWithInt:(jint)esc
              withCharArray:(IOSCharArray *)qbuf;

- (jint)_appendByteWithInt:(jint)ch
                   withInt:(jint)esc
withComFasterxmlJacksonCoreUtilByteArrayBuilder:(ComFasterxmlJacksonCoreUtilByteArrayBuilder *)bb
                   withInt:(jint)ptr;

+ (jint)_convertWithInt:(jint)p1
                withInt:(jint)p2;

+ (void)_illegalWithInt:(jint)c;

@end

inline IOSCharArray *ComFasterxmlJacksonCoreIoJsonStringEncoder_get_HC(void);
static IOSCharArray *ComFasterxmlJacksonCoreIoJsonStringEncoder_HC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreIoJsonStringEncoder, HC, IOSCharArray *)

inline IOSByteArray *ComFasterxmlJacksonCoreIoJsonStringEncoder_get_HB(void);
static IOSByteArray *ComFasterxmlJacksonCoreIoJsonStringEncoder_HB;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreIoJsonStringEncoder, HB, IOSByteArray *)

inline jint ComFasterxmlJacksonCoreIoJsonStringEncoder_get_SURR1_FIRST(void);
#define ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR1_FIRST 55296
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreIoJsonStringEncoder, SURR1_FIRST, jint)

inline jint ComFasterxmlJacksonCoreIoJsonStringEncoder_get_SURR1_LAST(void);
#define ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR1_LAST 56319
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreIoJsonStringEncoder, SURR1_LAST, jint)

inline jint ComFasterxmlJacksonCoreIoJsonStringEncoder_get_SURR2_FIRST(void);
#define ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR2_FIRST 56320
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreIoJsonStringEncoder, SURR2_FIRST, jint)

inline jint ComFasterxmlJacksonCoreIoJsonStringEncoder_get_SURR2_LAST(void);
#define ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR2_LAST 57343
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreIoJsonStringEncoder, SURR2_LAST, jint)

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoJsonStringEncoder__appendNumericWithInt_withCharArray_(ComFasterxmlJacksonCoreIoJsonStringEncoder *self, jint value, IOSCharArray *qbuf);

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoJsonStringEncoder__appendNamedWithInt_withCharArray_(ComFasterxmlJacksonCoreIoJsonStringEncoder *self, jint esc, IOSCharArray *qbuf);

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoJsonStringEncoder__appendByteWithInt_withInt_withComFasterxmlJacksonCoreUtilByteArrayBuilder_withInt_(ComFasterxmlJacksonCoreIoJsonStringEncoder *self, jint ch, jint esc, ComFasterxmlJacksonCoreUtilByteArrayBuilder *bb, jint ptr);

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoJsonStringEncoder__convertWithInt_withInt_(jint p1, jint p2);

__attribute__((unused)) static void ComFasterxmlJacksonCoreIoJsonStringEncoder__illegalWithInt_(jint c);

__attribute__((unused)) static IOSObjectArray *ComFasterxmlJacksonCoreIoJsonStringEncoder__Annotations$0(void);

J2OBJC_INITIALIZED_DEFN(ComFasterxmlJacksonCoreIoJsonStringEncoder)

@implementation ComFasterxmlJacksonCoreIoJsonStringEncoder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  ComFasterxmlJacksonCoreIoJsonStringEncoder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (ComFasterxmlJacksonCoreIoJsonStringEncoder *)getInstance {
  return ComFasterxmlJacksonCoreIoJsonStringEncoder_getInstance();
}

- (IOSCharArray *)quoteAsStringWithNSString:(NSString *)input {
  ComFasterxmlJacksonCoreUtilTextBuffer *textBuffer = _text_;
  if (textBuffer == nil) {
    JreStrongAssign(&_text_, textBuffer = create_ComFasterxmlJacksonCoreUtilTextBuffer_initWithComFasterxmlJacksonCoreUtilBufferRecycler_(nil));
  }
  IOSCharArray *outputBuffer = [textBuffer emptyAndGetCurrentSegment];
  IOSIntArray *escCodes = ComFasterxmlJacksonCoreIoCharTypes_get7BitOutputEscapes();
  jint escCodeCount = ((IOSIntArray *) nil_chk(escCodes))->size_;
  jint inPtr = 0;
  jint inputLen = [((NSString *) nil_chk(input)) java_length];
  jint outPtr = 0;
  while (inPtr < inputLen) {
    while (true) {
      jchar c = [input charAtWithInt:inPtr];
      if (c < escCodeCount && IOSIntArray_Get(escCodes, c) != 0) {
        goto break_tight_loop;
      }
      if (outPtr >= ((IOSCharArray *) nil_chk(outputBuffer))->size_) {
        outputBuffer = [textBuffer finishCurrentSegment];
        outPtr = 0;
      }
      *IOSCharArray_GetRef(nil_chk(outputBuffer), outPtr++) = c;
      if (++inPtr >= inputLen) {
        goto break_outer;
      }
    }
    break_tight_loop: ;
    jchar d = [input charAtWithInt:inPtr++];
    jint escCode = IOSIntArray_Get(escCodes, d);
    jint length = (escCode < 0) ? ComFasterxmlJacksonCoreIoJsonStringEncoder__appendNumericWithInt_withCharArray_(self, d, _qbuf_) : ComFasterxmlJacksonCoreIoJsonStringEncoder__appendNamedWithInt_withCharArray_(self, escCode, _qbuf_);
    
    ;
    if ((outPtr + length) > ((IOSCharArray *) nil_chk(outputBuffer))->size_) {
      jint first = outputBuffer->size_ - outPtr;
      if (first > 0) {
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(_qbuf_, 0, outputBuffer, outPtr, first);
      }
      outputBuffer = [textBuffer finishCurrentSegment];
      jint second = length - first;
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(_qbuf_, first, outputBuffer, 0, second);
      outPtr = second;
    }
    else {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(_qbuf_, 0, outputBuffer, outPtr, length);
      outPtr += length;
    }
  }
  break_outer: ;
  [textBuffer setCurrentLengthWithInt:outPtr];
  return [textBuffer contentsAsArray];
}

- (void)quoteAsStringWithJavaLangCharSequence:(id<JavaLangCharSequence>)input
                    withJavaLangStringBuilder:(JavaLangStringBuilder *)output {
  IOSIntArray *escCodes = ComFasterxmlJacksonCoreIoCharTypes_get7BitOutputEscapes();
  jint escCodeCount = ((IOSIntArray *) nil_chk(escCodes))->size_;
  jint inPtr = 0;
  jint inputLen = [((id<JavaLangCharSequence>) nil_chk(input)) java_length];
  while (inPtr < inputLen) {
    while (true) {
      jchar c = [input charAtWithInt:inPtr];
      if (c < escCodeCount && IOSIntArray_Get(escCodes, c) != 0) {
        goto break_tight_loop;
      }
      [((JavaLangStringBuilder *) nil_chk(output)) appendWithChar:c];
      if (++inPtr >= inputLen) {
        goto break_outer;
      }
    }
    break_tight_loop: ;
    jchar d = [input charAtWithInt:inPtr++];
    jint escCode = IOSIntArray_Get(escCodes, d);
    jint length = (escCode < 0) ? ComFasterxmlJacksonCoreIoJsonStringEncoder__appendNumericWithInt_withCharArray_(self, d, _qbuf_) : ComFasterxmlJacksonCoreIoJsonStringEncoder__appendNamedWithInt_withCharArray_(self, escCode, _qbuf_);
    
    ;
    [((JavaLangStringBuilder *) nil_chk(output)) appendWithCharArray:_qbuf_ withInt:0 withInt:length];
  }
  break_outer: ;
}

- (IOSByteArray *)quoteAsUTF8WithNSString:(NSString *)text {
  ComFasterxmlJacksonCoreUtilByteArrayBuilder *bb = _bytes_;
  if (bb == nil) {
    JreStrongAssign(&_bytes_, bb = create_ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithComFasterxmlJacksonCoreUtilBufferRecycler_(nil));
  }
  jint inputPtr = 0;
  jint inputEnd = [((NSString *) nil_chk(text)) java_length];
  jint outputPtr = 0;
  IOSByteArray *outputBuffer = [bb resetAndGetFirstSegment];
  while (inputPtr < inputEnd) {
    {
      IOSIntArray *escCodes = ComFasterxmlJacksonCoreIoCharTypes_get7BitOutputEscapes();
      while (true) {
        jint ch = [text charAtWithInt:inputPtr];
        if (ch > (jint) 0x7F || IOSIntArray_Get(nil_chk(escCodes), ch) != 0) {
          goto break_inner_loop;
        }
        if (outputPtr >= ((IOSByteArray *) nil_chk(outputBuffer))->size_) {
          outputBuffer = [bb finishCurrentSegment];
          outputPtr = 0;
        }
        *IOSByteArray_GetRef(nil_chk(outputBuffer), outputPtr++) = (jbyte) ch;
        if (++inputPtr >= inputEnd) {
          goto break_main;
        }
      }
      break_inner_loop: ;
      if (outputPtr >= ((IOSByteArray *) nil_chk(outputBuffer))->size_) {
        outputBuffer = [bb finishCurrentSegment];
        outputPtr = 0;
      }
      jint ch = (jint) [text charAtWithInt:inputPtr++];
      if (ch <= (jint) 0x7F) {
        jint escape = IOSIntArray_Get(nil_chk(escCodes), ch);
        outputPtr = ComFasterxmlJacksonCoreIoJsonStringEncoder__appendByteWithInt_withInt_withComFasterxmlJacksonCoreUtilByteArrayBuilder_withInt_(self, ch, escape, bb, outputPtr);
        outputBuffer = [bb getCurrentSegment];
        goto continue_main;
      }
      if (ch <= (jint) 0x7FF) {
        *IOSByteArray_GetRef(nil_chk(outputBuffer), outputPtr++) = (jbyte) ((jint) 0xc0 | (JreRShift32(ch, 6)));
        ch = ((jint) 0x80 | (ch & (jint) 0x3f));
      }
      else {
        if (ch < ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR1_FIRST || ch > ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR2_LAST) {
          *IOSByteArray_GetRef(nil_chk(outputBuffer), outputPtr++) = (jbyte) ((jint) 0xe0 | (JreRShift32(ch, 12)));
          if (outputPtr >= outputBuffer->size_) {
            outputBuffer = [bb finishCurrentSegment];
            outputPtr = 0;
          }
          *IOSByteArray_GetRef(nil_chk(outputBuffer), outputPtr++) = (jbyte) ((jint) 0x80 | ((JreRShift32(ch, 6)) & (jint) 0x3f));
          ch = ((jint) 0x80 | (ch & (jint) 0x3f));
        }
        else {
          if (ch > ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR1_LAST) {
            ComFasterxmlJacksonCoreIoJsonStringEncoder__illegalWithInt_(ch);
          }
          if (inputPtr >= inputEnd) {
            ComFasterxmlJacksonCoreIoJsonStringEncoder__illegalWithInt_(ch);
          }
          ch = ComFasterxmlJacksonCoreIoJsonStringEncoder__convertWithInt_withInt_(ch, [text charAtWithInt:inputPtr++]);
          if (ch > (jint) 0x10FFFF) {
            ComFasterxmlJacksonCoreIoJsonStringEncoder__illegalWithInt_(ch);
          }
          *IOSByteArray_GetRef(nil_chk(outputBuffer), outputPtr++) = (jbyte) ((jint) 0xf0 | (JreRShift32(ch, 18)));
          if (outputPtr >= outputBuffer->size_) {
            outputBuffer = [bb finishCurrentSegment];
            outputPtr = 0;
          }
          *IOSByteArray_GetRef(nil_chk(outputBuffer), outputPtr++) = (jbyte) ((jint) 0x80 | ((JreRShift32(ch, 12)) & (jint) 0x3f));
          if (outputPtr >= outputBuffer->size_) {
            outputBuffer = [bb finishCurrentSegment];
            outputPtr = 0;
          }
          *IOSByteArray_GetRef(nil_chk(outputBuffer), outputPtr++) = (jbyte) ((jint) 0x80 | ((JreRShift32(ch, 6)) & (jint) 0x3f));
          ch = ((jint) 0x80 | (ch & (jint) 0x3f));
        }
      }
      if (outputPtr >= outputBuffer->size_) {
        outputBuffer = [bb finishCurrentSegment];
        outputPtr = 0;
      }
      *IOSByteArray_GetRef(nil_chk(outputBuffer), outputPtr++) = (jbyte) ch;
    }
    continue_main: ;
  }
  break_main: ;
  return [((ComFasterxmlJacksonCoreUtilByteArrayBuilder *) nil_chk(_bytes_)) completeAndCoalesceWithInt:outputPtr];
}

- (IOSByteArray *)encodeAsUTF8WithNSString:(NSString *)text {
  ComFasterxmlJacksonCoreUtilByteArrayBuilder *byteBuilder = _bytes_;
  if (byteBuilder == nil) {
    JreStrongAssign(&_bytes_, byteBuilder = create_ComFasterxmlJacksonCoreUtilByteArrayBuilder_initWithComFasterxmlJacksonCoreUtilBufferRecycler_(nil));
  }
  jint inputPtr = 0;
  jint inputEnd = [((NSString *) nil_chk(text)) java_length];
  jint outputPtr = 0;
  IOSByteArray *outputBuffer = [byteBuilder resetAndGetFirstSegment];
  jint outputEnd = ((IOSByteArray *) nil_chk(outputBuffer))->size_;
  while (inputPtr < inputEnd) {
    jint c = [text charAtWithInt:inputPtr++];
    while (c <= (jint) 0x7F) {
      if (outputPtr >= outputEnd) {
        outputBuffer = [byteBuilder finishCurrentSegment];
        outputEnd = ((IOSByteArray *) nil_chk(outputBuffer))->size_;
        outputPtr = 0;
      }
      *IOSByteArray_GetRef(outputBuffer, outputPtr++) = (jbyte) c;
      if (inputPtr >= inputEnd) {
        goto break_main_loop;
      }
      c = [text charAtWithInt:inputPtr++];
    }
    if (outputPtr >= outputEnd) {
      outputBuffer = [byteBuilder finishCurrentSegment];
      outputEnd = ((IOSByteArray *) nil_chk(outputBuffer))->size_;
      outputPtr = 0;
    }
    if (c < (jint) 0x800) {
      *IOSByteArray_GetRef(outputBuffer, outputPtr++) = (jbyte) ((jint) 0xc0 | (JreRShift32(c, 6)));
    }
    else {
      if (c < ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR1_FIRST || c > ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR2_LAST) {
        *IOSByteArray_GetRef(outputBuffer, outputPtr++) = (jbyte) ((jint) 0xe0 | (JreRShift32(c, 12)));
        if (outputPtr >= outputEnd) {
          outputBuffer = [byteBuilder finishCurrentSegment];
          outputEnd = ((IOSByteArray *) nil_chk(outputBuffer))->size_;
          outputPtr = 0;
        }
        *IOSByteArray_GetRef(outputBuffer, outputPtr++) = (jbyte) ((jint) 0x80 | ((JreRShift32(c, 6)) & (jint) 0x3f));
      }
      else {
        if (c > ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR1_LAST) {
          ComFasterxmlJacksonCoreIoJsonStringEncoder__illegalWithInt_(c);
        }
        if (inputPtr >= inputEnd) {
          ComFasterxmlJacksonCoreIoJsonStringEncoder__illegalWithInt_(c);
        }
        c = ComFasterxmlJacksonCoreIoJsonStringEncoder__convertWithInt_withInt_(c, [text charAtWithInt:inputPtr++]);
        if (c > (jint) 0x10FFFF) {
          ComFasterxmlJacksonCoreIoJsonStringEncoder__illegalWithInt_(c);
        }
        *IOSByteArray_GetRef(outputBuffer, outputPtr++) = (jbyte) ((jint) 0xf0 | (JreRShift32(c, 18)));
        if (outputPtr >= outputEnd) {
          outputBuffer = [byteBuilder finishCurrentSegment];
          outputEnd = ((IOSByteArray *) nil_chk(outputBuffer))->size_;
          outputPtr = 0;
        }
        *IOSByteArray_GetRef(outputBuffer, outputPtr++) = (jbyte) ((jint) 0x80 | ((JreRShift32(c, 12)) & (jint) 0x3f));
        if (outputPtr >= outputEnd) {
          outputBuffer = [byteBuilder finishCurrentSegment];
          outputEnd = ((IOSByteArray *) nil_chk(outputBuffer))->size_;
          outputPtr = 0;
        }
        *IOSByteArray_GetRef(outputBuffer, outputPtr++) = (jbyte) ((jint) 0x80 | ((JreRShift32(c, 6)) & (jint) 0x3f));
      }
    }
    if (outputPtr >= outputEnd) {
      outputBuffer = [byteBuilder finishCurrentSegment];
      outputEnd = ((IOSByteArray *) nil_chk(outputBuffer))->size_;
      outputPtr = 0;
    }
    *IOSByteArray_GetRef(outputBuffer, outputPtr++) = (jbyte) ((jint) 0x80 | (c & (jint) 0x3f));
  }
  break_main_loop: ;
  return [((ComFasterxmlJacksonCoreUtilByteArrayBuilder *) nil_chk(_bytes_)) completeAndCoalesceWithInt:outputPtr];
}

- (jint)_appendNumericWithInt:(jint)value
                withCharArray:(IOSCharArray *)qbuf {
  return ComFasterxmlJacksonCoreIoJsonStringEncoder__appendNumericWithInt_withCharArray_(self, value, qbuf);
}

- (jint)_appendNamedWithInt:(jint)esc
              withCharArray:(IOSCharArray *)qbuf {
  return ComFasterxmlJacksonCoreIoJsonStringEncoder__appendNamedWithInt_withCharArray_(self, esc, qbuf);
}

- (jint)_appendByteWithInt:(jint)ch
                   withInt:(jint)esc
withComFasterxmlJacksonCoreUtilByteArrayBuilder:(ComFasterxmlJacksonCoreUtilByteArrayBuilder *)bb
                   withInt:(jint)ptr {
  return ComFasterxmlJacksonCoreIoJsonStringEncoder__appendByteWithInt_withInt_withComFasterxmlJacksonCoreUtilByteArrayBuilder_withInt_(self, ch, esc, bb, ptr);
}

+ (jint)_convertWithInt:(jint)p1
                withInt:(jint)p2 {
  return ComFasterxmlJacksonCoreIoJsonStringEncoder__convertWithInt_withInt_(p1, p2);
}

+ (void)_illegalWithInt:(jint)c {
  ComFasterxmlJacksonCoreIoJsonStringEncoder__illegalWithInt_(c);
}

- (void)dealloc {
  RELEASE_(_text_);
  RELEASE_(_bytes_);
  RELEASE_(_qbuf_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreIoJsonStringEncoder;", 0x9, -1, -1, -1, -1, 0, -1 },
    { NULL, "[C", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 3, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, 4, 2, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, 5, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 8, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 13, 14, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getInstance);
  methods[2].selector = @selector(quoteAsStringWithNSString:);
  methods[3].selector = @selector(quoteAsStringWithJavaLangCharSequence:withJavaLangStringBuilder:);
  methods[4].selector = @selector(quoteAsUTF8WithNSString:);
  methods[5].selector = @selector(encodeAsUTF8WithNSString:);
  methods[6].selector = @selector(_appendNumericWithInt:withCharArray:);
  methods[7].selector = @selector(_appendNamedWithInt:withCharArray:);
  methods[8].selector = @selector(_appendByteWithInt:withInt:withComFasterxmlJacksonCoreUtilByteArrayBuilder:withInt:);
  methods[9].selector = @selector(_convertWithInt:withInt:);
  methods[10].selector = @selector(_illegalWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "HC", "[C", .constantValue.asLong = 0, 0x1a, -1, 15, -1, -1 },
    { "HB", "[B", .constantValue.asLong = 0, 0x1a, -1, 16, -1, -1 },
    { "SURR1_FIRST", "I", .constantValue.asInt = ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR1_FIRST, 0x1a, -1, -1, -1, -1 },
    { "SURR1_LAST", "I", .constantValue.asInt = ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR1_LAST, 0x1a, -1, -1, -1, -1 },
    { "SURR2_FIRST", "I", .constantValue.asInt = ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR2_FIRST, 0x1a, -1, -1, -1, -1 },
    { "SURR2_LAST", "I", .constantValue.asInt = ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR2_LAST, 0x1a, -1, -1, -1, -1 },
    { "_text_", "LComFasterxmlJacksonCoreUtilTextBuffer;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_bytes_", "LComFasterxmlJacksonCoreUtilByteArrayBuilder;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_qbuf_", "[C", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { (void *)&ComFasterxmlJacksonCoreIoJsonStringEncoder__Annotations$0, "quoteAsString", "LNSString;", "LJavaLangCharSequence;LJavaLangStringBuilder;", "quoteAsUTF8", "encodeAsUTF8", "_appendNumeric", "I[C", "_appendNamed", "_appendByte", "IILComFasterxmlJacksonCoreUtilByteArrayBuilder;I", "_convert", "II", "_illegal", "I", &ComFasterxmlJacksonCoreIoJsonStringEncoder_HC, &ComFasterxmlJacksonCoreIoJsonStringEncoder_HB };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreIoJsonStringEncoder = { "JsonStringEncoder", "com.fasterxml.jackson.core.io", ptrTable, methods, fields, 7, 0x11, 11, 9, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreIoJsonStringEncoder;
}

+ (void)initialize {
  if (self == [ComFasterxmlJacksonCoreIoJsonStringEncoder class]) {
    JreStrongAssign(&ComFasterxmlJacksonCoreIoJsonStringEncoder_HC, ComFasterxmlJacksonCoreIoCharTypes_copyHexChars());
    JreStrongAssign(&ComFasterxmlJacksonCoreIoJsonStringEncoder_HB, ComFasterxmlJacksonCoreIoCharTypes_copyHexBytes());
    J2OBJC_SET_INITIALIZED(ComFasterxmlJacksonCoreIoJsonStringEncoder)
  }
}

@end

void ComFasterxmlJacksonCoreIoJsonStringEncoder_init(ComFasterxmlJacksonCoreIoJsonStringEncoder *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->_qbuf_, [IOSCharArray newArrayWithLength:6]);
  *IOSCharArray_GetRef(self->_qbuf_, 0) = '\\';
  *IOSCharArray_GetRef(self->_qbuf_, 2) = '0';
  *IOSCharArray_GetRef(self->_qbuf_, 3) = '0';
}

ComFasterxmlJacksonCoreIoJsonStringEncoder *new_ComFasterxmlJacksonCoreIoJsonStringEncoder_init() {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreIoJsonStringEncoder, init)
}

ComFasterxmlJacksonCoreIoJsonStringEncoder *create_ComFasterxmlJacksonCoreIoJsonStringEncoder_init() {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreIoJsonStringEncoder, init)
}

ComFasterxmlJacksonCoreIoJsonStringEncoder *ComFasterxmlJacksonCoreIoJsonStringEncoder_getInstance() {
  ComFasterxmlJacksonCoreIoJsonStringEncoder_initialize();
  return ComFasterxmlJacksonCoreUtilBufferRecyclers_getJsonStringEncoder();
}

jint ComFasterxmlJacksonCoreIoJsonStringEncoder__appendNumericWithInt_withCharArray_(ComFasterxmlJacksonCoreIoJsonStringEncoder *self, jint value, IOSCharArray *qbuf) {
  *IOSCharArray_GetRef(nil_chk(qbuf), 1) = 'u';
  *IOSCharArray_GetRef(qbuf, 4) = IOSCharArray_Get(nil_chk(ComFasterxmlJacksonCoreIoJsonStringEncoder_HC), JreRShift32(value, 4));
  *IOSCharArray_GetRef(qbuf, 5) = IOSCharArray_Get(ComFasterxmlJacksonCoreIoJsonStringEncoder_HC, value & (jint) 0xF);
  return 6;
}

jint ComFasterxmlJacksonCoreIoJsonStringEncoder__appendNamedWithInt_withCharArray_(ComFasterxmlJacksonCoreIoJsonStringEncoder *self, jint esc, IOSCharArray *qbuf) {
  *IOSCharArray_GetRef(nil_chk(qbuf), 1) = (jchar) esc;
  return 2;
}

jint ComFasterxmlJacksonCoreIoJsonStringEncoder__appendByteWithInt_withInt_withComFasterxmlJacksonCoreUtilByteArrayBuilder_withInt_(ComFasterxmlJacksonCoreIoJsonStringEncoder *self, jint ch, jint esc, ComFasterxmlJacksonCoreUtilByteArrayBuilder *bb, jint ptr) {
  [((ComFasterxmlJacksonCoreUtilByteArrayBuilder *) nil_chk(bb)) setCurrentSegmentLengthWithInt:ptr];
  [bb appendWithInt:'\\'];
  if (esc < 0) {
    [bb appendWithInt:'u'];
    if (ch > (jint) 0xFF) {
      jint hi = (JreRShift32(ch, 8));
      [bb appendWithInt:IOSByteArray_Get(nil_chk(ComFasterxmlJacksonCoreIoJsonStringEncoder_HB), JreRShift32(hi, 4))];
      [bb appendWithInt:IOSByteArray_Get(ComFasterxmlJacksonCoreIoJsonStringEncoder_HB, hi & (jint) 0xF)];
      ch &= (jint) 0xFF;
    }
    else {
      [bb appendWithInt:'0'];
      [bb appendWithInt:'0'];
    }
    [bb appendWithInt:IOSByteArray_Get(nil_chk(ComFasterxmlJacksonCoreIoJsonStringEncoder_HB), JreRShift32(ch, 4))];
    [bb appendWithInt:IOSByteArray_Get(ComFasterxmlJacksonCoreIoJsonStringEncoder_HB, ch & (jint) 0xF)];
  }
  else {
    [bb appendWithInt:(jbyte) esc];
  }
  return [bb getCurrentSegmentLength];
}

jint ComFasterxmlJacksonCoreIoJsonStringEncoder__convertWithInt_withInt_(jint p1, jint p2) {
  ComFasterxmlJacksonCoreIoJsonStringEncoder_initialize();
  if (p2 < ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR2_FIRST || p2 > ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR2_LAST) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$$$", @"Broken surrogate pair: first char 0x", JavaLangInteger_toHexStringWithInt_(p1), @", second 0x", JavaLangInteger_toHexStringWithInt_(p2), @"; illegal combination"));
  }
  return (jint) 0x10000 + (JreLShift32((p1 - ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR1_FIRST), 10)) + (p2 - ComFasterxmlJacksonCoreIoJsonStringEncoder_SURR2_FIRST);
}

void ComFasterxmlJacksonCoreIoJsonStringEncoder__illegalWithInt_(jint c) {
  ComFasterxmlJacksonCoreIoJsonStringEncoder_initialize();
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(ComFasterxmlJacksonCoreIoUTF8Writer_illegalSurrogateDescWithInt_(c));
}

IOSObjectArray *ComFasterxmlJacksonCoreIoJsonStringEncoder__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreIoJsonStringEncoder)
