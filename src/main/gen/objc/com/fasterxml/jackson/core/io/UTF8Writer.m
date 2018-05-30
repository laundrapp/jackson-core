//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/io/UTF8Writer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/io/IOContext.h"
#include "com/fasterxml/jackson/core/io/UTF8Writer.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"
#include "java/io/Writer.h"
#include "java/lang/Integer.h"

@interface ComFasterxmlJacksonCoreIoUTF8Writer () {
 @public
  ComFasterxmlJacksonCoreIoIOContext *_context_;
  JavaIoOutputStream *_out_;
  IOSByteArray *_outBuffer_;
  jint _outBufferEnd_;
  jint _outPtr_;
  /*!
   @brief When outputting chars from BMP, surrogate pairs need to be coalesced.
   To do this, both pairs must be known first; and since it is possible
  pairs may be split, we need temporary storage for the first half
   */
  jint _surrogate_;
}

@end

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreIoUTF8Writer, _context_, ComFasterxmlJacksonCoreIoIOContext *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreIoUTF8Writer, _out_, JavaIoOutputStream *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreIoUTF8Writer, _outBuffer_, IOSByteArray *)

@implementation ComFasterxmlJacksonCoreIoUTF8Writer

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                              withJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  ComFasterxmlJacksonCoreIoUTF8Writer_initWithComFasterxmlJacksonCoreIoIOContext_withJavaIoOutputStream_(self, ctxt, outArg);
  return self;
}

- (JavaIoWriter *)appendWithChar:(jchar)c {
  [self writeWithInt:c];
  return self;
}

- (void)close {
  if (_out_ != nil) {
    if (_outPtr_ > 0) {
      [_out_ writeWithByteArray:_outBuffer_ withInt:0 withInt:_outPtr_];
      _outPtr_ = 0;
    }
    JavaIoOutputStream *out = _out_;
    JreStrongAssign(&_out_, nil);
    IOSByteArray *buf = _outBuffer_;
    if (buf != nil) {
      JreStrongAssign(&_outBuffer_, nil);
      [((ComFasterxmlJacksonCoreIoIOContext *) nil_chk(_context_)) releaseWriteEncodingBufferWithByteArray:buf];
    }
    [((JavaIoOutputStream *) nil_chk(out)) close];
    jint code = _surrogate_;
    _surrogate_ = 0;
    if (code > 0) {
      ComFasterxmlJacksonCoreIoUTF8Writer_illegalSurrogateWithInt_(code);
    }
  }
}

- (void)flush {
  if (_out_ != nil) {
    if (_outPtr_ > 0) {
      [_out_ writeWithByteArray:_outBuffer_ withInt:0 withInt:_outPtr_];
      _outPtr_ = 0;
    }
    [((JavaIoOutputStream *) nil_chk(_out_)) flush];
  }
}

- (void)writeWithCharArray:(IOSCharArray *)cbuf {
  [self writeWithCharArray:cbuf withInt:0 withInt:((IOSCharArray *) nil_chk(cbuf))->size_];
}

- (void)writeWithCharArray:(IOSCharArray *)cbuf
                   withInt:(jint)off
                   withInt:(jint)len {
  if (len < 2) {
    if (len == 1) {
      [self writeWithInt:IOSCharArray_Get(nil_chk(cbuf), off)];
    }
    return;
  }
  if (_surrogate_ > 0) {
    jchar second = IOSCharArray_Get(nil_chk(cbuf), off++);
    --len;
    [self writeWithInt:[self convertSurrogateWithInt:second]];
  }
  jint outPtr = _outPtr_;
  IOSByteArray *outBuf = _outBuffer_;
  jint outBufLast = _outBufferEnd_;
  len += off;
  for (; off < len; ) {
    {
      if (outPtr >= outBufLast) {
        [((JavaIoOutputStream *) nil_chk(_out_)) writeWithByteArray:outBuf withInt:0 withInt:outPtr];
        outPtr = 0;
      }
      jint c = IOSCharArray_Get(nil_chk(cbuf), off++);
      if (c < (jint) 0x80) {
        *IOSByteArray_GetRef(nil_chk(outBuf), outPtr++) = (jbyte) c;
        jint maxInCount = (len - off);
        jint maxOutCount = (outBufLast - outPtr);
        if (maxInCount > maxOutCount) {
          maxInCount = maxOutCount;
        }
        maxInCount += off;
        while (true) {
          if (off >= maxInCount) {
            goto continue_output_loop;
          }
          c = IOSCharArray_Get(cbuf, off++);
          if (c >= (jint) 0x80) {
            goto break_ascii_loop;
          }
          *IOSByteArray_GetRef(outBuf, outPtr++) = (jbyte) c;
        }
        break_ascii_loop: ;
      }
      if (c < (jint) 0x800) {
        *IOSByteArray_GetRef(nil_chk(outBuf), outPtr++) = (jbyte) ((jint) 0xc0 | (JreRShift32(c, 6)));
        *IOSByteArray_GetRef(outBuf, outPtr++) = (jbyte) ((jint) 0x80 | (c & (jint) 0x3f));
      }
      else {
        if (c < ComFasterxmlJacksonCoreIoUTF8Writer_SURR1_FIRST || c > ComFasterxmlJacksonCoreIoUTF8Writer_SURR2_LAST) {
          *IOSByteArray_GetRef(nil_chk(outBuf), outPtr++) = (jbyte) ((jint) 0xe0 | (JreRShift32(c, 12)));
          *IOSByteArray_GetRef(outBuf, outPtr++) = (jbyte) ((jint) 0x80 | ((JreRShift32(c, 6)) & (jint) 0x3f));
          *IOSByteArray_GetRef(outBuf, outPtr++) = (jbyte) ((jint) 0x80 | (c & (jint) 0x3f));
          continue;
        }
        if (c > ComFasterxmlJacksonCoreIoUTF8Writer_SURR1_LAST) {
          _outPtr_ = outPtr;
          ComFasterxmlJacksonCoreIoUTF8Writer_illegalSurrogateWithInt_(c);
        }
        _surrogate_ = c;
        if (off >= len) {
          break;
        }
        c = [self convertSurrogateWithInt:IOSCharArray_Get(cbuf, off++)];
        if (c > (jint) 0x10FFFF) {
          _outPtr_ = outPtr;
          ComFasterxmlJacksonCoreIoUTF8Writer_illegalSurrogateWithInt_(c);
        }
        *IOSByteArray_GetRef(nil_chk(outBuf), outPtr++) = (jbyte) ((jint) 0xf0 | (JreRShift32(c, 18)));
        *IOSByteArray_GetRef(outBuf, outPtr++) = (jbyte) ((jint) 0x80 | ((JreRShift32(c, 12)) & (jint) 0x3f));
        *IOSByteArray_GetRef(outBuf, outPtr++) = (jbyte) ((jint) 0x80 | ((JreRShift32(c, 6)) & (jint) 0x3f));
        *IOSByteArray_GetRef(outBuf, outPtr++) = (jbyte) ((jint) 0x80 | (c & (jint) 0x3f));
      }
    }
    continue_output_loop: ;
  }
  _outPtr_ = outPtr;
}

- (void)writeWithInt:(jint)c {
  if (_surrogate_ > 0) {
    c = [self convertSurrogateWithInt:c];
  }
  else if (c >= ComFasterxmlJacksonCoreIoUTF8Writer_SURR1_FIRST && c <= ComFasterxmlJacksonCoreIoUTF8Writer_SURR2_LAST) {
    if (c > ComFasterxmlJacksonCoreIoUTF8Writer_SURR1_LAST) {
      ComFasterxmlJacksonCoreIoUTF8Writer_illegalSurrogateWithInt_(c);
    }
    _surrogate_ = c;
    return;
  }
  if (_outPtr_ >= _outBufferEnd_) {
    [((JavaIoOutputStream *) nil_chk(_out_)) writeWithByteArray:_outBuffer_ withInt:0 withInt:_outPtr_];
    _outPtr_ = 0;
  }
  if (c < (jint) 0x80) {
    *IOSByteArray_GetRef(nil_chk(_outBuffer_), _outPtr_++) = (jbyte) c;
  }
  else {
    jint ptr = _outPtr_;
    if (c < (jint) 0x800) {
      *IOSByteArray_GetRef(nil_chk(_outBuffer_), ptr++) = (jbyte) ((jint) 0xc0 | (JreRShift32(c, 6)));
      *IOSByteArray_GetRef(_outBuffer_, ptr++) = (jbyte) ((jint) 0x80 | (c & (jint) 0x3f));
    }
    else if (c <= (jint) 0xFFFF) {
      *IOSByteArray_GetRef(nil_chk(_outBuffer_), ptr++) = (jbyte) ((jint) 0xe0 | (JreRShift32(c, 12)));
      *IOSByteArray_GetRef(_outBuffer_, ptr++) = (jbyte) ((jint) 0x80 | ((JreRShift32(c, 6)) & (jint) 0x3f));
      *IOSByteArray_GetRef(_outBuffer_, ptr++) = (jbyte) ((jint) 0x80 | (c & (jint) 0x3f));
    }
    else {
      if (c > (jint) 0x10FFFF) {
        ComFasterxmlJacksonCoreIoUTF8Writer_illegalSurrogateWithInt_(c);
      }
      *IOSByteArray_GetRef(nil_chk(_outBuffer_), ptr++) = (jbyte) ((jint) 0xf0 | (JreRShift32(c, 18)));
      *IOSByteArray_GetRef(_outBuffer_, ptr++) = (jbyte) ((jint) 0x80 | ((JreRShift32(c, 12)) & (jint) 0x3f));
      *IOSByteArray_GetRef(_outBuffer_, ptr++) = (jbyte) ((jint) 0x80 | ((JreRShift32(c, 6)) & (jint) 0x3f));
      *IOSByteArray_GetRef(_outBuffer_, ptr++) = (jbyte) ((jint) 0x80 | (c & (jint) 0x3f));
    }
    _outPtr_ = ptr;
  }
}

- (void)writeWithNSString:(NSString *)str {
  [self writeWithNSString:str withInt:0 withInt:[((NSString *) nil_chk(str)) java_length]];
}

- (void)writeWithNSString:(NSString *)str
                  withInt:(jint)off
                  withInt:(jint)len {
  if (len < 2) {
    if (len == 1) {
      [self writeWithInt:[((NSString *) nil_chk(str)) charAtWithInt:off]];
    }
    return;
  }
  if (_surrogate_ > 0) {
    jchar second = [((NSString *) nil_chk(str)) charAtWithInt:off++];
    --len;
    [self writeWithInt:[self convertSurrogateWithInt:second]];
  }
  jint outPtr = _outPtr_;
  IOSByteArray *outBuf = _outBuffer_;
  jint outBufLast = _outBufferEnd_;
  len += off;
  for (; off < len; ) {
    {
      if (outPtr >= outBufLast) {
        [((JavaIoOutputStream *) nil_chk(_out_)) writeWithByteArray:outBuf withInt:0 withInt:outPtr];
        outPtr = 0;
      }
      jint c = [((NSString *) nil_chk(str)) charAtWithInt:off++];
      if (c < (jint) 0x80) {
        *IOSByteArray_GetRef(nil_chk(outBuf), outPtr++) = (jbyte) c;
        jint maxInCount = (len - off);
        jint maxOutCount = (outBufLast - outPtr);
        if (maxInCount > maxOutCount) {
          maxInCount = maxOutCount;
        }
        maxInCount += off;
        while (true) {
          if (off >= maxInCount) {
            goto continue_output_loop;
          }
          c = [str charAtWithInt:off++];
          if (c >= (jint) 0x80) {
            goto break_ascii_loop;
          }
          *IOSByteArray_GetRef(outBuf, outPtr++) = (jbyte) c;
        }
        break_ascii_loop: ;
      }
      if (c < (jint) 0x800) {
        *IOSByteArray_GetRef(nil_chk(outBuf), outPtr++) = (jbyte) ((jint) 0xc0 | (JreRShift32(c, 6)));
        *IOSByteArray_GetRef(outBuf, outPtr++) = (jbyte) ((jint) 0x80 | (c & (jint) 0x3f));
      }
      else {
        if (c < ComFasterxmlJacksonCoreIoUTF8Writer_SURR1_FIRST || c > ComFasterxmlJacksonCoreIoUTF8Writer_SURR2_LAST) {
          *IOSByteArray_GetRef(nil_chk(outBuf), outPtr++) = (jbyte) ((jint) 0xe0 | (JreRShift32(c, 12)));
          *IOSByteArray_GetRef(outBuf, outPtr++) = (jbyte) ((jint) 0x80 | ((JreRShift32(c, 6)) & (jint) 0x3f));
          *IOSByteArray_GetRef(outBuf, outPtr++) = (jbyte) ((jint) 0x80 | (c & (jint) 0x3f));
          continue;
        }
        if (c > ComFasterxmlJacksonCoreIoUTF8Writer_SURR1_LAST) {
          _outPtr_ = outPtr;
          ComFasterxmlJacksonCoreIoUTF8Writer_illegalSurrogateWithInt_(c);
        }
        _surrogate_ = c;
        if (off >= len) {
          break;
        }
        c = [self convertSurrogateWithInt:[str charAtWithInt:off++]];
        if (c > (jint) 0x10FFFF) {
          _outPtr_ = outPtr;
          ComFasterxmlJacksonCoreIoUTF8Writer_illegalSurrogateWithInt_(c);
        }
        *IOSByteArray_GetRef(nil_chk(outBuf), outPtr++) = (jbyte) ((jint) 0xf0 | (JreRShift32(c, 18)));
        *IOSByteArray_GetRef(outBuf, outPtr++) = (jbyte) ((jint) 0x80 | ((JreRShift32(c, 12)) & (jint) 0x3f));
        *IOSByteArray_GetRef(outBuf, outPtr++) = (jbyte) ((jint) 0x80 | ((JreRShift32(c, 6)) & (jint) 0x3f));
        *IOSByteArray_GetRef(outBuf, outPtr++) = (jbyte) ((jint) 0x80 | (c & (jint) 0x3f));
      }
    }
    continue_output_loop: ;
  }
  _outPtr_ = outPtr;
}

- (jint)convertSurrogateWithInt:(jint)secondPart {
  jint firstPart = _surrogate_;
  _surrogate_ = 0;
  if (secondPart < ComFasterxmlJacksonCoreIoUTF8Writer_SURR2_FIRST || secondPart > ComFasterxmlJacksonCoreIoUTF8Writer_SURR2_LAST) {
    @throw create_JavaIoIOException_initWithNSString_(JreStrcat("$$$$$", @"Broken surrogate pair: first char 0x", JavaLangInteger_toHexStringWithInt_(firstPart), @", second 0x", JavaLangInteger_toHexStringWithInt_(secondPart), @"; illegal combination"));
  }
  return (jint) 0x10000 + (JreLShift32((firstPart - ComFasterxmlJacksonCoreIoUTF8Writer_SURR1_FIRST), 10)) + (secondPart - ComFasterxmlJacksonCoreIoUTF8Writer_SURR2_FIRST);
}

+ (void)illegalSurrogateWithInt:(jint)code {
  ComFasterxmlJacksonCoreIoUTF8Writer_illegalSurrogateWithInt_(code);
}

+ (NSString *)illegalSurrogateDescWithInt:(jint)code {
  return ComFasterxmlJacksonCoreIoUTF8Writer_illegalSurrogateDescWithInt_(code);
}

- (void)dealloc {
  RELEASE_(_context_);
  RELEASE_(_out_);
  RELEASE_(_outBuffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaIoWriter;", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 6, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 7, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 8, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 9, 3, -1, -1, -1 },
    { NULL, "I", 0x4, 10, 7, 3, -1, -1, -1 },
    { NULL, "V", 0xc, 11, 7, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0xc, 12, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComFasterxmlJacksonCoreIoIOContext:withJavaIoOutputStream:);
  methods[1].selector = @selector(appendWithChar:);
  methods[2].selector = @selector(close);
  methods[3].selector = @selector(flush);
  methods[4].selector = @selector(writeWithCharArray:);
  methods[5].selector = @selector(writeWithCharArray:withInt:withInt:);
  methods[6].selector = @selector(writeWithInt:);
  methods[7].selector = @selector(writeWithNSString:);
  methods[8].selector = @selector(writeWithNSString:withInt:withInt:);
  methods[9].selector = @selector(convertSurrogateWithInt:);
  methods[10].selector = @selector(illegalSurrogateWithInt:);
  methods[11].selector = @selector(illegalSurrogateDescWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "SURR1_FIRST", "I", .constantValue.asInt = ComFasterxmlJacksonCoreIoUTF8Writer_SURR1_FIRST, 0x18, -1, -1, -1, -1 },
    { "SURR1_LAST", "I", .constantValue.asInt = ComFasterxmlJacksonCoreIoUTF8Writer_SURR1_LAST, 0x18, -1, -1, -1, -1 },
    { "SURR2_FIRST", "I", .constantValue.asInt = ComFasterxmlJacksonCoreIoUTF8Writer_SURR2_FIRST, 0x18, -1, -1, -1, -1 },
    { "SURR2_LAST", "I", .constantValue.asInt = ComFasterxmlJacksonCoreIoUTF8Writer_SURR2_LAST, 0x18, -1, -1, -1, -1 },
    { "_context_", "LComFasterxmlJacksonCoreIoIOContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_out_", "LJavaIoOutputStream;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_outBuffer_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_outBufferEnd_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_outPtr_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_surrogate_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComFasterxmlJacksonCoreIoIOContext;LJavaIoOutputStream;", "append", "C", "LJavaIoIOException;", "write", "[C", "[CII", "I", "LNSString;", "LNSString;II", "convertSurrogate", "illegalSurrogate", "illegalSurrogateDesc" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreIoUTF8Writer = { "UTF8Writer", "com.fasterxml.jackson.core.io", ptrTable, methods, fields, 7, 0x11, 12, 10, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreIoUTF8Writer;
}

@end

void ComFasterxmlJacksonCoreIoUTF8Writer_initWithComFasterxmlJacksonCoreIoIOContext_withJavaIoOutputStream_(ComFasterxmlJacksonCoreIoUTF8Writer *self, ComFasterxmlJacksonCoreIoIOContext *ctxt, JavaIoOutputStream *outArg) {
  JavaIoWriter_init(self);
  JreStrongAssign(&self->_context_, ctxt);
  JreStrongAssign(&self->_out_, outArg);
  JreStrongAssign(&self->_outBuffer_, [((ComFasterxmlJacksonCoreIoIOContext *) nil_chk(ctxt)) allocWriteEncodingBuffer]);
  self->_outBufferEnd_ = ((IOSByteArray *) nil_chk(self->_outBuffer_))->size_ - 4;
  self->_outPtr_ = 0;
}

ComFasterxmlJacksonCoreIoUTF8Writer *new_ComFasterxmlJacksonCoreIoUTF8Writer_initWithComFasterxmlJacksonCoreIoIOContext_withJavaIoOutputStream_(ComFasterxmlJacksonCoreIoIOContext *ctxt, JavaIoOutputStream *outArg) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreIoUTF8Writer, initWithComFasterxmlJacksonCoreIoIOContext_withJavaIoOutputStream_, ctxt, outArg)
}

ComFasterxmlJacksonCoreIoUTF8Writer *create_ComFasterxmlJacksonCoreIoUTF8Writer_initWithComFasterxmlJacksonCoreIoIOContext_withJavaIoOutputStream_(ComFasterxmlJacksonCoreIoIOContext *ctxt, JavaIoOutputStream *outArg) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreIoUTF8Writer, initWithComFasterxmlJacksonCoreIoIOContext_withJavaIoOutputStream_, ctxt, outArg)
}

void ComFasterxmlJacksonCoreIoUTF8Writer_illegalSurrogateWithInt_(jint code) {
  ComFasterxmlJacksonCoreIoUTF8Writer_initialize();
  @throw create_JavaIoIOException_initWithNSString_(ComFasterxmlJacksonCoreIoUTF8Writer_illegalSurrogateDescWithInt_(code));
}

NSString *ComFasterxmlJacksonCoreIoUTF8Writer_illegalSurrogateDescWithInt_(jint code) {
  ComFasterxmlJacksonCoreIoUTF8Writer_initialize();
  if (code > (jint) 0x10FFFF) {
    return JreStrcat("$$$", @"Illegal character point (0x", JavaLangInteger_toHexStringWithInt_(code), @") to output; max is 0x10FFFF as per RFC 4627");
  }
  if (code >= ComFasterxmlJacksonCoreIoUTF8Writer_SURR1_FIRST) {
    if (code <= ComFasterxmlJacksonCoreIoUTF8Writer_SURR1_LAST) {
      return JreStrcat("$$C", @"Unmatched first part of surrogate pair (0x", JavaLangInteger_toHexStringWithInt_(code), ')');
    }
    return JreStrcat("$$C", @"Unmatched second part of surrogate pair (0x", JavaLangInteger_toHexStringWithInt_(code), ')');
  }
  return JreStrcat("$$$", @"Illegal character point (0x", JavaLangInteger_toHexStringWithInt_(code), @") to output");
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreIoUTF8Writer)