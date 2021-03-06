//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/base/TextualTSFactory.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/JsonEncoding.h"
#include "com/fasterxml/jackson/core/JsonGenerator.h"
#include "com/fasterxml/jackson/core/JsonParser.h"
#include "com/fasterxml/jackson/core/ObjectReadContext.h"
#include "com/fasterxml/jackson/core/ObjectWriteContext.h"
#include "com/fasterxml/jackson/core/base/DecorableTSFactory.h"
#include "com/fasterxml/jackson/core/base/TextualTSFactory.h"
#include "com/fasterxml/jackson/core/io/IOContext.h"
#include "com/fasterxml/jackson/core/io/InputDecorator.h"
#include "com/fasterxml/jackson/core/io/UTF8Writer.h"
#include "java/io/CharArrayReader.h"
#include "java/io/DataInput.h"
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/FileOutputStream.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/io/OutputStreamWriter.h"
#include "java/io/Reader.h"
#include "java/io/StringReader.h"
#include "java/io/Writer.h"
#include "java/net/URL.h"

@implementation ComFasterxmlJacksonCoreBaseTextualTSFactory

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  ComFasterxmlJacksonCoreBaseTextualTSFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreBaseDecorableTSFactory_DecorableTSFBuilder:(ComFasterxmlJacksonCoreBaseDecorableTSFactory_DecorableTSFBuilder *)baseBuilder {
  ComFasterxmlJacksonCoreBaseTextualTSFactory_initWithComFasterxmlJacksonCoreBaseDecorableTSFactory_DecorableTSFBuilder_(self, baseBuilder);
  return self;
}

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreBaseTextualTSFactory:(ComFasterxmlJacksonCoreBaseTextualTSFactory *)src {
  ComFasterxmlJacksonCoreBaseTextualTSFactory_initWithComFasterxmlJacksonCoreBaseTextualTSFactory_(self, src);
  return self;
}

- (jboolean)canHandleBinaryNatively {
  return false;
}

- (jboolean)canUseCharArrays {
  return true;
}

- (ComFasterxmlJacksonCoreJsonParser *)createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                                                 withJavaIoFile:(JavaIoFile *)f {
  ComFasterxmlJacksonCoreIoIOContext *ioCtxt = [self _createContextWithId:f withBoolean:true];
  return [self _createParserWithComFasterxmlJacksonCoreObjectReadContext:readCtxt withComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoInputStream:[self _decorateWithComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoInputStream:create_JavaIoFileInputStream_initWithJavaIoFile_(f)]];
}

- (ComFasterxmlJacksonCoreJsonParser *)createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                                                 withJavaNetURL:(JavaNetURL *)url {
  ComFasterxmlJacksonCoreIoIOContext *ioCtxt = [self _createContextWithId:url withBoolean:true];
  return [self _createParserWithComFasterxmlJacksonCoreObjectReadContext:readCtxt withComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoInputStream:[self _decorateWithComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoInputStream:[self _optimizedStreamFromURLWithJavaNetURL:url]]];
}

- (ComFasterxmlJacksonCoreJsonParser *)createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                                          withJavaIoInputStream:(JavaIoInputStream *)inArg {
  ComFasterxmlJacksonCoreIoIOContext *ioCtxt = [self _createContextWithId:inArg withBoolean:false];
  return [self _createParserWithComFasterxmlJacksonCoreObjectReadContext:readCtxt withComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoInputStream:[self _decorateWithComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoInputStream:inArg]];
}

- (ComFasterxmlJacksonCoreJsonParser *)createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                                               withJavaIoReader:(JavaIoReader *)r {
  ComFasterxmlJacksonCoreIoIOContext *ioCtxt = [self _createContextWithId:r withBoolean:false];
  return [self _createParserWithComFasterxmlJacksonCoreObjectReadContext:readCtxt withComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoReader:[self _decorateWithComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoReader:r]];
}

- (ComFasterxmlJacksonCoreJsonParser *)createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                                                  withByteArray:(IOSByteArray *)data
                                                                                        withInt:(jint)offset
                                                                                        withInt:(jint)len {
  ComFasterxmlJacksonCoreIoIOContext *ioCtxt = [self _createContextWithId:data withBoolean:true];
  if (_inputDecorator_ != nil) {
    JavaIoInputStream *in = [_inputDecorator_ decorateWithComFasterxmlJacksonCoreIoIOContext:ioCtxt withByteArray:data withInt:offset withInt:len];
    if (in != nil) {
      return [self _createParserWithComFasterxmlJacksonCoreObjectReadContext:readCtxt withComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoInputStream:in];
    }
  }
  return [self _createParserWithComFasterxmlJacksonCoreObjectReadContext:readCtxt withComFasterxmlJacksonCoreIoIOContext:ioCtxt withByteArray:data withInt:offset withInt:len];
}

- (ComFasterxmlJacksonCoreJsonParser *)createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                                                   withNSString:(NSString *)content {
  jint strLen = [((NSString *) nil_chk(content)) java_length];
  if ((_inputDecorator_ != nil) || (strLen > (jint) 0x8000) || ![self canUseCharArrays]) {
    return [self createParserWithComFasterxmlJacksonCoreObjectReadContext:readCtxt withJavaIoReader:create_JavaIoStringReader_initWithNSString_(content)];
  }
  ComFasterxmlJacksonCoreIoIOContext *ioCtxt = [self _createContextWithId:content withBoolean:true];
  IOSCharArray *buf = [((ComFasterxmlJacksonCoreIoIOContext *) nil_chk(ioCtxt)) allocTokenBufferWithInt:strLen];
  [content java_getChars:0 sourceEnd:strLen destination:buf destinationBegin:0];
  return [self _createParserWithComFasterxmlJacksonCoreObjectReadContext:readCtxt withComFasterxmlJacksonCoreIoIOContext:ioCtxt withCharArray:buf withInt:0 withInt:strLen withBoolean:true];
}

- (ComFasterxmlJacksonCoreJsonParser *)createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                                                  withCharArray:(IOSCharArray *)content
                                                                                        withInt:(jint)offset
                                                                                        withInt:(jint)len {
  if (_inputDecorator_ != nil) {
    return [self createParserWithComFasterxmlJacksonCoreObjectReadContext:readCtxt withJavaIoReader:create_JavaIoCharArrayReader_initWithCharArray_withInt_withInt_(content, offset, len)];
  }
  return [self _createParserWithComFasterxmlJacksonCoreObjectReadContext:readCtxt withComFasterxmlJacksonCoreIoIOContext:[self _createContextWithId:content withBoolean:true] withCharArray:content withInt:offset withInt:len withBoolean:false];
}

- (ComFasterxmlJacksonCoreJsonParser *)createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                                            withJavaIoDataInput:(id<JavaIoDataInput>)inArg {
  ComFasterxmlJacksonCoreIoIOContext *ioCtxt = [self _createContextWithId:inArg withBoolean:false];
  return [self _createParserWithComFasterxmlJacksonCoreObjectReadContext:readCtxt withComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoDataInput:[self _decorateWithComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoDataInput:inArg]];
}

- (ComFasterxmlJacksonCoreJsonParser *)_createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                          withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                                           withJavaIoInputStream:(JavaIoInputStream *)inArg {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (ComFasterxmlJacksonCoreJsonParser *)_createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                          withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                                                withJavaIoReader:(JavaIoReader *)r {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (ComFasterxmlJacksonCoreJsonParser *)_createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                          withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                                                   withByteArray:(IOSByteArray *)data
                                                                                         withInt:(jint)offset
                                                                                         withInt:(jint)len {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (ComFasterxmlJacksonCoreJsonParser *)_createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                          withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                                                   withCharArray:(IOSCharArray *)data
                                                                                         withInt:(jint)offset
                                                                                         withInt:(jint)len
                                                                                     withBoolean:(jboolean)recyclable {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (ComFasterxmlJacksonCoreJsonParser *)_createParserWithComFasterxmlJacksonCoreObjectReadContext:(id<ComFasterxmlJacksonCoreObjectReadContext>)readCtxt
                                                          withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ctxt
                                                                             withJavaIoDataInput:(id<JavaIoDataInput>)input {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (ComFasterxmlJacksonCoreJsonGenerator *)createGeneratorWithComFasterxmlJacksonCoreObjectWriteContext:(id<ComFasterxmlJacksonCoreObjectWriteContext>)writeCtxt
                                                                                withJavaIoOutputStream:(JavaIoOutputStream *)outArg
                                                               withComFasterxmlJacksonCoreJsonEncoding:(ComFasterxmlJacksonCoreJsonEncoding *)enc {
  ComFasterxmlJacksonCoreIoIOContext *ioCtxt = [self _createContextWithId:outArg withBoolean:false withComFasterxmlJacksonCoreJsonEncoding:enc];
  if (enc == JreLoadEnum(ComFasterxmlJacksonCoreJsonEncoding, UTF8)) {
    return [self _createUTF8GeneratorWithComFasterxmlJacksonCoreObjectWriteContext:writeCtxt withComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoOutputStream:[self _decorateWithComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoOutputStream:outArg]];
  }
  return [self _createGeneratorWithComFasterxmlJacksonCoreObjectWriteContext:writeCtxt withComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoWriter:[self _decorateWithComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoWriter:[self _createWriterWithComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoOutputStream:outArg withComFasterxmlJacksonCoreJsonEncoding:enc]]];
}

- (ComFasterxmlJacksonCoreJsonGenerator *)createGeneratorWithComFasterxmlJacksonCoreObjectWriteContext:(id<ComFasterxmlJacksonCoreObjectWriteContext>)writeCtxt
                                                                                      withJavaIoWriter:(JavaIoWriter *)w {
  ComFasterxmlJacksonCoreIoIOContext *ioCtxt = [self _createContextWithId:w withBoolean:false];
  return [self _createGeneratorWithComFasterxmlJacksonCoreObjectWriteContext:writeCtxt withComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoWriter:[self _decorateWithComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoWriter:w]];
}

- (ComFasterxmlJacksonCoreJsonGenerator *)createGeneratorWithComFasterxmlJacksonCoreObjectWriteContext:(id<ComFasterxmlJacksonCoreObjectWriteContext>)writeCtxt
                                                                                        withJavaIoFile:(JavaIoFile *)f
                                                               withComFasterxmlJacksonCoreJsonEncoding:(ComFasterxmlJacksonCoreJsonEncoding *)enc {
  JavaIoOutputStream *out = create_JavaIoFileOutputStream_initWithJavaIoFile_(f);
  ComFasterxmlJacksonCoreIoIOContext *ioCtxt = [self _createContextWithId:f withBoolean:true withComFasterxmlJacksonCoreJsonEncoding:enc];
  if (enc == JreLoadEnum(ComFasterxmlJacksonCoreJsonEncoding, UTF8)) {
    return [self _createUTF8GeneratorWithComFasterxmlJacksonCoreObjectWriteContext:writeCtxt withComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoOutputStream:[self _decorateWithComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoOutputStream:out]];
  }
  return [self _createGeneratorWithComFasterxmlJacksonCoreObjectWriteContext:writeCtxt withComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoWriter:[self _decorateWithComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoWriter:[self _createWriterWithComFasterxmlJacksonCoreIoIOContext:ioCtxt withJavaIoOutputStream:out withComFasterxmlJacksonCoreJsonEncoding:enc]]];
}

- (ComFasterxmlJacksonCoreJsonGenerator *)_createGeneratorWithComFasterxmlJacksonCoreObjectWriteContext:(id<ComFasterxmlJacksonCoreObjectWriteContext>)writeCtxt
                                                                 withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ioCtxt
                                                                                       withJavaIoWriter:(JavaIoWriter *)outArg {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (ComFasterxmlJacksonCoreJsonGenerator *)_createUTF8GeneratorWithComFasterxmlJacksonCoreObjectWriteContext:(id<ComFasterxmlJacksonCoreObjectWriteContext>)writeCtxt
                                                                     withComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ioCtxt
                                                                                     withJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaIoWriter *)_createWriterWithComFasterxmlJacksonCoreIoIOContext:(ComFasterxmlJacksonCoreIoIOContext *)ioCtxt
                                               withJavaIoOutputStream:(JavaIoOutputStream *)outArg
                              withComFasterxmlJacksonCoreJsonEncoding:(ComFasterxmlJacksonCoreJsonEncoding *)enc {
  if (enc == JreLoadEnum(ComFasterxmlJacksonCoreJsonEncoding, UTF8)) {
    return create_ComFasterxmlJacksonCoreIoUTF8Writer_initWithComFasterxmlJacksonCoreIoIOContext_withJavaIoOutputStream_(ioCtxt, outArg);
  }
  return create_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withNSString_(outArg, [((ComFasterxmlJacksonCoreJsonEncoding *) nil_chk(enc)) getJavaName]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x4, -1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x1, 3, 4, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x1, 3, 6, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x1, 3, 7, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x1, 3, 8, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x1, 3, 9, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x1, 3, 10, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x1, 3, 11, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x1, 3, 12, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x404, 13, 14, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x404, 13, 15, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x404, 13, 16, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x404, 13, 17, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x404, 13, 18, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonGenerator;", 0x1, 19, 20, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonGenerator;", 0x1, 19, 21, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonGenerator;", 0x1, 19, 22, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonGenerator;", 0x404, 23, 24, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonGenerator;", 0x404, 25, 26, 5, -1, -1, -1 },
    { NULL, "LJavaIoWriter;", 0x4, 27, 28, 5, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithComFasterxmlJacksonCoreBaseDecorableTSFactory_DecorableTSFBuilder:);
  methods[2].selector = @selector(initWithComFasterxmlJacksonCoreBaseTextualTSFactory:);
  methods[3].selector = @selector(canHandleBinaryNatively);
  methods[4].selector = @selector(canUseCharArrays);
  methods[5].selector = @selector(createParserWithComFasterxmlJacksonCoreObjectReadContext:withJavaIoFile:);
  methods[6].selector = @selector(createParserWithComFasterxmlJacksonCoreObjectReadContext:withJavaNetURL:);
  methods[7].selector = @selector(createParserWithComFasterxmlJacksonCoreObjectReadContext:withJavaIoInputStream:);
  methods[8].selector = @selector(createParserWithComFasterxmlJacksonCoreObjectReadContext:withJavaIoReader:);
  methods[9].selector = @selector(createParserWithComFasterxmlJacksonCoreObjectReadContext:withByteArray:withInt:withInt:);
  methods[10].selector = @selector(createParserWithComFasterxmlJacksonCoreObjectReadContext:withNSString:);
  methods[11].selector = @selector(createParserWithComFasterxmlJacksonCoreObjectReadContext:withCharArray:withInt:withInt:);
  methods[12].selector = @selector(createParserWithComFasterxmlJacksonCoreObjectReadContext:withJavaIoDataInput:);
  methods[13].selector = @selector(_createParserWithComFasterxmlJacksonCoreObjectReadContext:withComFasterxmlJacksonCoreIoIOContext:withJavaIoInputStream:);
  methods[14].selector = @selector(_createParserWithComFasterxmlJacksonCoreObjectReadContext:withComFasterxmlJacksonCoreIoIOContext:withJavaIoReader:);
  methods[15].selector = @selector(_createParserWithComFasterxmlJacksonCoreObjectReadContext:withComFasterxmlJacksonCoreIoIOContext:withByteArray:withInt:withInt:);
  methods[16].selector = @selector(_createParserWithComFasterxmlJacksonCoreObjectReadContext:withComFasterxmlJacksonCoreIoIOContext:withCharArray:withInt:withInt:withBoolean:);
  methods[17].selector = @selector(_createParserWithComFasterxmlJacksonCoreObjectReadContext:withComFasterxmlJacksonCoreIoIOContext:withJavaIoDataInput:);
  methods[18].selector = @selector(createGeneratorWithComFasterxmlJacksonCoreObjectWriteContext:withJavaIoOutputStream:withComFasterxmlJacksonCoreJsonEncoding:);
  methods[19].selector = @selector(createGeneratorWithComFasterxmlJacksonCoreObjectWriteContext:withJavaIoWriter:);
  methods[20].selector = @selector(createGeneratorWithComFasterxmlJacksonCoreObjectWriteContext:withJavaIoFile:withComFasterxmlJacksonCoreJsonEncoding:);
  methods[21].selector = @selector(_createGeneratorWithComFasterxmlJacksonCoreObjectWriteContext:withComFasterxmlJacksonCoreIoIOContext:withJavaIoWriter:);
  methods[22].selector = @selector(_createUTF8GeneratorWithComFasterxmlJacksonCoreObjectWriteContext:withComFasterxmlJacksonCoreIoIOContext:withJavaIoOutputStream:);
  methods[23].selector = @selector(_createWriterWithComFasterxmlJacksonCoreIoIOContext:withJavaIoOutputStream:withComFasterxmlJacksonCoreJsonEncoding:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComFasterxmlJacksonCoreBaseDecorableTSFactory_DecorableTSFBuilder;", "(Lcom/fasterxml/jackson/core/base/DecorableTSFactory$DecorableTSFBuilder<**>;)V", "LComFasterxmlJacksonCoreBaseTextualTSFactory;", "createParser", "LComFasterxmlJacksonCoreObjectReadContext;LJavaIoFile;", "LJavaIoIOException;", "LComFasterxmlJacksonCoreObjectReadContext;LJavaNetURL;", "LComFasterxmlJacksonCoreObjectReadContext;LJavaIoInputStream;", "LComFasterxmlJacksonCoreObjectReadContext;LJavaIoReader;", "LComFasterxmlJacksonCoreObjectReadContext;[BII", "LComFasterxmlJacksonCoreObjectReadContext;LNSString;", "LComFasterxmlJacksonCoreObjectReadContext;[CII", "LComFasterxmlJacksonCoreObjectReadContext;LJavaIoDataInput;", "_createParser", "LComFasterxmlJacksonCoreObjectReadContext;LComFasterxmlJacksonCoreIoIOContext;LJavaIoInputStream;", "LComFasterxmlJacksonCoreObjectReadContext;LComFasterxmlJacksonCoreIoIOContext;LJavaIoReader;", "LComFasterxmlJacksonCoreObjectReadContext;LComFasterxmlJacksonCoreIoIOContext;[BII", "LComFasterxmlJacksonCoreObjectReadContext;LComFasterxmlJacksonCoreIoIOContext;[CIIZ", "LComFasterxmlJacksonCoreObjectReadContext;LComFasterxmlJacksonCoreIoIOContext;LJavaIoDataInput;", "createGenerator", "LComFasterxmlJacksonCoreObjectWriteContext;LJavaIoOutputStream;LComFasterxmlJacksonCoreJsonEncoding;", "LComFasterxmlJacksonCoreObjectWriteContext;LJavaIoWriter;", "LComFasterxmlJacksonCoreObjectWriteContext;LJavaIoFile;LComFasterxmlJacksonCoreJsonEncoding;", "_createGenerator", "LComFasterxmlJacksonCoreObjectWriteContext;LComFasterxmlJacksonCoreIoIOContext;LJavaIoWriter;", "_createUTF8Generator", "LComFasterxmlJacksonCoreObjectWriteContext;LComFasterxmlJacksonCoreIoIOContext;LJavaIoOutputStream;", "_createWriter", "LComFasterxmlJacksonCoreIoIOContext;LJavaIoOutputStream;LComFasterxmlJacksonCoreJsonEncoding;" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreBaseTextualTSFactory = { "TextualTSFactory", "com.fasterxml.jackson.core.base", ptrTable, methods, NULL, 7, 0x401, 24, 0, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreBaseTextualTSFactory;
}

@end

void ComFasterxmlJacksonCoreBaseTextualTSFactory_init(ComFasterxmlJacksonCoreBaseTextualTSFactory *self) {
  ComFasterxmlJacksonCoreBaseDecorableTSFactory_init(self);
}

void ComFasterxmlJacksonCoreBaseTextualTSFactory_initWithComFasterxmlJacksonCoreBaseDecorableTSFactory_DecorableTSFBuilder_(ComFasterxmlJacksonCoreBaseTextualTSFactory *self, ComFasterxmlJacksonCoreBaseDecorableTSFactory_DecorableTSFBuilder *baseBuilder) {
  ComFasterxmlJacksonCoreBaseDecorableTSFactory_initWithComFasterxmlJacksonCoreBaseDecorableTSFactory_DecorableTSFBuilder_(self, baseBuilder);
}

void ComFasterxmlJacksonCoreBaseTextualTSFactory_initWithComFasterxmlJacksonCoreBaseTextualTSFactory_(ComFasterxmlJacksonCoreBaseTextualTSFactory *self, ComFasterxmlJacksonCoreBaseTextualTSFactory *src) {
  ComFasterxmlJacksonCoreBaseDecorableTSFactory_initWithComFasterxmlJacksonCoreBaseDecorableTSFactory_(self, src);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreBaseTextualTSFactory)
