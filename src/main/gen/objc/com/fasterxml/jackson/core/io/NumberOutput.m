//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/io/NumberOutput.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/io/NumberOutput.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"

@interface ComFasterxmlJacksonCoreIoNumberOutput ()

+ (jint)_outputUptoBillionWithInt:(jint)v
                    withCharArray:(IOSCharArray *)b
                          withInt:(jint)off;

+ (jint)_outputFullBillionWithInt:(jint)v
                    withCharArray:(IOSCharArray *)b
                          withInt:(jint)off;

+ (jint)_outputUptoBillionWithInt:(jint)v
                    withByteArray:(IOSByteArray *)b
                          withInt:(jint)off;

+ (jint)_outputFullBillionWithInt:(jint)v
                    withByteArray:(IOSByteArray *)b
                          withInt:(jint)off;

+ (jint)_outputUptoMillionWithCharArray:(IOSCharArray *)b
                                withInt:(jint)off
                                withInt:(jint)thousands
                                withInt:(jint)ones;

+ (jint)_outputUptoMillionWithByteArray:(IOSByteArray *)b
                                withInt:(jint)off
                                withInt:(jint)thousands
                                withInt:(jint)ones;

+ (jint)_leading3WithInt:(jint)t
           withCharArray:(IOSCharArray *)b
                 withInt:(jint)off;

+ (jint)_leading3WithInt:(jint)t
           withByteArray:(IOSByteArray *)b
                 withInt:(jint)off;

+ (jint)_full3WithInt:(jint)t
        withCharArray:(IOSCharArray *)b
              withInt:(jint)off;

+ (jint)_full3WithInt:(jint)t
        withByteArray:(IOSByteArray *)b
              withInt:(jint)off;

+ (jint)_outputSmallestLWithCharArray:(IOSCharArray *)b
                              withInt:(jint)off;

+ (jint)_outputSmallestLWithByteArray:(IOSByteArray *)b
                              withInt:(jint)off;

+ (jint)_outputSmallestIWithCharArray:(IOSCharArray *)b
                              withInt:(jint)off;

+ (jint)_outputSmallestIWithByteArray:(IOSByteArray *)b
                              withInt:(jint)off;

@end

inline jint ComFasterxmlJacksonCoreIoNumberOutput_get_MILLION(void);
inline jint ComFasterxmlJacksonCoreIoNumberOutput_set_MILLION(jint value);
inline jint *ComFasterxmlJacksonCoreIoNumberOutput_getRef_MILLION(void);
static jint ComFasterxmlJacksonCoreIoNumberOutput_MILLION = 1000000;
J2OBJC_STATIC_FIELD_PRIMITIVE(ComFasterxmlJacksonCoreIoNumberOutput, MILLION, jint)

inline jint ComFasterxmlJacksonCoreIoNumberOutput_get_BILLION(void);
inline jint ComFasterxmlJacksonCoreIoNumberOutput_set_BILLION(jint value);
inline jint *ComFasterxmlJacksonCoreIoNumberOutput_getRef_BILLION(void);
static jint ComFasterxmlJacksonCoreIoNumberOutput_BILLION = 1000000000;
J2OBJC_STATIC_FIELD_PRIMITIVE(ComFasterxmlJacksonCoreIoNumberOutput, BILLION, jint)

inline jlong ComFasterxmlJacksonCoreIoNumberOutput_get_BILLION_L(void);
inline jlong ComFasterxmlJacksonCoreIoNumberOutput_set_BILLION_L(jlong value);
inline jlong *ComFasterxmlJacksonCoreIoNumberOutput_getRef_BILLION_L(void);
static jlong ComFasterxmlJacksonCoreIoNumberOutput_BILLION_L = 1000000000LL;
J2OBJC_STATIC_FIELD_PRIMITIVE(ComFasterxmlJacksonCoreIoNumberOutput, BILLION_L, jlong)

inline jlong ComFasterxmlJacksonCoreIoNumberOutput_get_MIN_INT_AS_LONG(void);
inline jlong ComFasterxmlJacksonCoreIoNumberOutput_set_MIN_INT_AS_LONG(jlong value);
inline jlong *ComFasterxmlJacksonCoreIoNumberOutput_getRef_MIN_INT_AS_LONG(void);
static jlong ComFasterxmlJacksonCoreIoNumberOutput_MIN_INT_AS_LONG = -2147483648LL;
J2OBJC_STATIC_FIELD_PRIMITIVE(ComFasterxmlJacksonCoreIoNumberOutput, MIN_INT_AS_LONG, jlong)

inline jlong ComFasterxmlJacksonCoreIoNumberOutput_get_MAX_INT_AS_LONG(void);
inline jlong ComFasterxmlJacksonCoreIoNumberOutput_set_MAX_INT_AS_LONG(jlong value);
inline jlong *ComFasterxmlJacksonCoreIoNumberOutput_getRef_MAX_INT_AS_LONG(void);
static jlong ComFasterxmlJacksonCoreIoNumberOutput_MAX_INT_AS_LONG = 2147483647LL;
J2OBJC_STATIC_FIELD_PRIMITIVE(ComFasterxmlJacksonCoreIoNumberOutput, MAX_INT_AS_LONG, jlong)

/*!
 @brief Encoded representations of 3-decimal-digit indexed values, where
  3 LSB are ascii characters
 @since 2.8.2
 */
inline IOSIntArray *ComFasterxmlJacksonCoreIoNumberOutput_get_TRIPLET_TO_CHARS(void);
static IOSIntArray *ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreIoNumberOutput, TRIPLET_TO_CHARS, IOSIntArray *)

inline IOSObjectArray *ComFasterxmlJacksonCoreIoNumberOutput_get_sSmallIntStrs(void);
static IOSObjectArray *ComFasterxmlJacksonCoreIoNumberOutput_sSmallIntStrs;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreIoNumberOutput, sSmallIntStrs, IOSObjectArray *)

inline IOSObjectArray *ComFasterxmlJacksonCoreIoNumberOutput_get_sSmallIntStrs2(void);
static IOSObjectArray *ComFasterxmlJacksonCoreIoNumberOutput_sSmallIntStrs2;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreIoNumberOutput, sSmallIntStrs2, IOSObjectArray *)

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoNumberOutput__outputUptoBillionWithInt_withCharArray_withInt_(jint v, IOSCharArray *b, jint off);

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoNumberOutput__outputFullBillionWithInt_withCharArray_withInt_(jint v, IOSCharArray *b, jint off);

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoNumberOutput__outputUptoBillionWithInt_withByteArray_withInt_(jint v, IOSByteArray *b, jint off);

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoNumberOutput__outputFullBillionWithInt_withByteArray_withInt_(jint v, IOSByteArray *b, jint off);

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoNumberOutput__outputUptoMillionWithCharArray_withInt_withInt_withInt_(IOSCharArray *b, jint off, jint thousands, jint ones);

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoNumberOutput__outputUptoMillionWithByteArray_withInt_withInt_withInt_(IOSByteArray *b, jint off, jint thousands, jint ones);

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withCharArray_withInt_(jint t, IOSCharArray *b, jint off);

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withByteArray_withInt_(jint t, IOSByteArray *b, jint off);

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoNumberOutput__full3WithInt_withCharArray_withInt_(jint t, IOSCharArray *b, jint off);

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoNumberOutput__full3WithInt_withByteArray_withInt_(jint t, IOSByteArray *b, jint off);

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoNumberOutput__outputSmallestLWithCharArray_withInt_(IOSCharArray *b, jint off);

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoNumberOutput__outputSmallestLWithByteArray_withInt_(IOSByteArray *b, jint off);

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoNumberOutput__outputSmallestIWithCharArray_withInt_(IOSCharArray *b, jint off);

__attribute__((unused)) static jint ComFasterxmlJacksonCoreIoNumberOutput__outputSmallestIWithByteArray_withInt_(IOSByteArray *b, jint off);

J2OBJC_INITIALIZED_DEFN(ComFasterxmlJacksonCoreIoNumberOutput)

NSString *ComFasterxmlJacksonCoreIoNumberOutput_SMALLEST_INT;
NSString *ComFasterxmlJacksonCoreIoNumberOutput_SMALLEST_LONG;

@implementation ComFasterxmlJacksonCoreIoNumberOutput

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  ComFasterxmlJacksonCoreIoNumberOutput_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jint)outputIntWithInt:(jint)v
           withCharArray:(IOSCharArray *)b
                 withInt:(jint)off {
  return ComFasterxmlJacksonCoreIoNumberOutput_outputIntWithInt_withCharArray_withInt_(v, b, off);
}

+ (jint)outputIntWithInt:(jint)v
           withByteArray:(IOSByteArray *)b
                 withInt:(jint)off {
  return ComFasterxmlJacksonCoreIoNumberOutput_outputIntWithInt_withByteArray_withInt_(v, b, off);
}

+ (jint)outputLongWithLong:(jlong)v
             withCharArray:(IOSCharArray *)b
                   withInt:(jint)off {
  return ComFasterxmlJacksonCoreIoNumberOutput_outputLongWithLong_withCharArray_withInt_(v, b, off);
}

+ (jint)outputLongWithLong:(jlong)v
             withByteArray:(IOSByteArray *)b
                   withInt:(jint)off {
  return ComFasterxmlJacksonCoreIoNumberOutput_outputLongWithLong_withByteArray_withInt_(v, b, off);
}

+ (NSString *)toStringWithInt:(jint)v {
  return ComFasterxmlJacksonCoreIoNumberOutput_toStringWithInt_(v);
}

+ (NSString *)toStringWithLong:(jlong)v {
  return ComFasterxmlJacksonCoreIoNumberOutput_toStringWithLong_(v);
}

+ (NSString *)toStringWithDouble:(jdouble)v {
  return ComFasterxmlJacksonCoreIoNumberOutput_toStringWithDouble_(v);
}

+ (NSString *)toStringWithFloat:(jfloat)v {
  return ComFasterxmlJacksonCoreIoNumberOutput_toStringWithFloat_(v);
}

+ (jint)_outputUptoBillionWithInt:(jint)v
                    withCharArray:(IOSCharArray *)b
                          withInt:(jint)off {
  return ComFasterxmlJacksonCoreIoNumberOutput__outputUptoBillionWithInt_withCharArray_withInt_(v, b, off);
}

+ (jint)_outputFullBillionWithInt:(jint)v
                    withCharArray:(IOSCharArray *)b
                          withInt:(jint)off {
  return ComFasterxmlJacksonCoreIoNumberOutput__outputFullBillionWithInt_withCharArray_withInt_(v, b, off);
}

+ (jint)_outputUptoBillionWithInt:(jint)v
                    withByteArray:(IOSByteArray *)b
                          withInt:(jint)off {
  return ComFasterxmlJacksonCoreIoNumberOutput__outputUptoBillionWithInt_withByteArray_withInt_(v, b, off);
}

+ (jint)_outputFullBillionWithInt:(jint)v
                    withByteArray:(IOSByteArray *)b
                          withInt:(jint)off {
  return ComFasterxmlJacksonCoreIoNumberOutput__outputFullBillionWithInt_withByteArray_withInt_(v, b, off);
}

+ (jint)_outputUptoMillionWithCharArray:(IOSCharArray *)b
                                withInt:(jint)off
                                withInt:(jint)thousands
                                withInt:(jint)ones {
  return ComFasterxmlJacksonCoreIoNumberOutput__outputUptoMillionWithCharArray_withInt_withInt_withInt_(b, off, thousands, ones);
}

+ (jint)_outputUptoMillionWithByteArray:(IOSByteArray *)b
                                withInt:(jint)off
                                withInt:(jint)thousands
                                withInt:(jint)ones {
  return ComFasterxmlJacksonCoreIoNumberOutput__outputUptoMillionWithByteArray_withInt_withInt_withInt_(b, off, thousands, ones);
}

+ (jint)_leading3WithInt:(jint)t
           withCharArray:(IOSCharArray *)b
                 withInt:(jint)off {
  return ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withCharArray_withInt_(t, b, off);
}

+ (jint)_leading3WithInt:(jint)t
           withByteArray:(IOSByteArray *)b
                 withInt:(jint)off {
  return ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withByteArray_withInt_(t, b, off);
}

+ (jint)_full3WithInt:(jint)t
        withCharArray:(IOSCharArray *)b
              withInt:(jint)off {
  return ComFasterxmlJacksonCoreIoNumberOutput__full3WithInt_withCharArray_withInt_(t, b, off);
}

+ (jint)_full3WithInt:(jint)t
        withByteArray:(IOSByteArray *)b
              withInt:(jint)off {
  return ComFasterxmlJacksonCoreIoNumberOutput__full3WithInt_withByteArray_withInt_(t, b, off);
}

+ (jint)_outputSmallestLWithCharArray:(IOSCharArray *)b
                              withInt:(jint)off {
  return ComFasterxmlJacksonCoreIoNumberOutput__outputSmallestLWithCharArray_withInt_(b, off);
}

+ (jint)_outputSmallestLWithByteArray:(IOSByteArray *)b
                              withInt:(jint)off {
  return ComFasterxmlJacksonCoreIoNumberOutput__outputSmallestLWithByteArray_withInt_(b, off);
}

+ (jint)_outputSmallestIWithCharArray:(IOSCharArray *)b
                              withInt:(jint)off {
  return ComFasterxmlJacksonCoreIoNumberOutput__outputSmallestIWithCharArray_withInt_(b, off);
}

+ (jint)_outputSmallestIWithByteArray:(IOSByteArray *)b
                              withInt:(jint)off {
  return ComFasterxmlJacksonCoreIoNumberOutput__outputSmallestIWithByteArray_withInt_(b, off);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 3, 5, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 6, 7, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 6, 8, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 6, 9, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 6, 10, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 11, 1, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 12, 1, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 11, 2, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 12, 2, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 13, 14, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 13, 15, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 16, 1, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 16, 2, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 17, 1, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 17, 2, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 18, 19, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 18, 20, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 21, 19, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 21, 20, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(outputIntWithInt:withCharArray:withInt:);
  methods[2].selector = @selector(outputIntWithInt:withByteArray:withInt:);
  methods[3].selector = @selector(outputLongWithLong:withCharArray:withInt:);
  methods[4].selector = @selector(outputLongWithLong:withByteArray:withInt:);
  methods[5].selector = @selector(toStringWithInt:);
  methods[6].selector = @selector(toStringWithLong:);
  methods[7].selector = @selector(toStringWithDouble:);
  methods[8].selector = @selector(toStringWithFloat:);
  methods[9].selector = @selector(_outputUptoBillionWithInt:withCharArray:withInt:);
  methods[10].selector = @selector(_outputFullBillionWithInt:withCharArray:withInt:);
  methods[11].selector = @selector(_outputUptoBillionWithInt:withByteArray:withInt:);
  methods[12].selector = @selector(_outputFullBillionWithInt:withByteArray:withInt:);
  methods[13].selector = @selector(_outputUptoMillionWithCharArray:withInt:withInt:withInt:);
  methods[14].selector = @selector(_outputUptoMillionWithByteArray:withInt:withInt:withInt:);
  methods[15].selector = @selector(_leading3WithInt:withCharArray:withInt:);
  methods[16].selector = @selector(_leading3WithInt:withByteArray:withInt:);
  methods[17].selector = @selector(_full3WithInt:withCharArray:withInt:);
  methods[18].selector = @selector(_full3WithInt:withByteArray:withInt:);
  methods[19].selector = @selector(_outputSmallestLWithCharArray:withInt:);
  methods[20].selector = @selector(_outputSmallestLWithByteArray:withInt:);
  methods[21].selector = @selector(_outputSmallestIWithCharArray:withInt:);
  methods[22].selector = @selector(_outputSmallestIWithByteArray:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MILLION", "I", .constantValue.asLong = 0, 0xa, -1, 22, -1, -1 },
    { "BILLION", "I", .constantValue.asLong = 0, 0xa, -1, 23, -1, -1 },
    { "BILLION_L", "J", .constantValue.asLong = 0, 0xa, -1, 24, -1, -1 },
    { "MIN_INT_AS_LONG", "J", .constantValue.asLong = 0, 0xa, -1, 25, -1, -1 },
    { "MAX_INT_AS_LONG", "J", .constantValue.asLong = 0, 0xa, -1, 26, -1, -1 },
    { "SMALLEST_INT", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 27, -1, -1 },
    { "SMALLEST_LONG", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 28, -1, -1 },
    { "TRIPLET_TO_CHARS", "[I", .constantValue.asLong = 0, 0x1a, -1, 29, -1, -1 },
    { "sSmallIntStrs", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 30, -1, -1 },
    { "sSmallIntStrs2", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 31, -1, -1 },
  };
  static const void *ptrTable[] = { "outputInt", "I[CI", "I[BI", "outputLong", "J[CI", "J[BI", "toString", "I", "J", "D", "F", "_outputUptoBillion", "_outputFullBillion", "_outputUptoMillion", "[CIII", "[BIII", "_leading3", "_full3", "_outputSmallestL", "[CI", "[BI", "_outputSmallestI", &ComFasterxmlJacksonCoreIoNumberOutput_MILLION, &ComFasterxmlJacksonCoreIoNumberOutput_BILLION, &ComFasterxmlJacksonCoreIoNumberOutput_BILLION_L, &ComFasterxmlJacksonCoreIoNumberOutput_MIN_INT_AS_LONG, &ComFasterxmlJacksonCoreIoNumberOutput_MAX_INT_AS_LONG, &ComFasterxmlJacksonCoreIoNumberOutput_SMALLEST_INT, &ComFasterxmlJacksonCoreIoNumberOutput_SMALLEST_LONG, &ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS, &ComFasterxmlJacksonCoreIoNumberOutput_sSmallIntStrs, &ComFasterxmlJacksonCoreIoNumberOutput_sSmallIntStrs2 };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreIoNumberOutput = { "NumberOutput", "com.fasterxml.jackson.core.io", ptrTable, methods, fields, 7, 0x11, 23, 10, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreIoNumberOutput;
}

+ (void)initialize {
  if (self == [ComFasterxmlJacksonCoreIoNumberOutput class]) {
    JreStrongAssign(&ComFasterxmlJacksonCoreIoNumberOutput_SMALLEST_INT, NSString_java_valueOfInt_(JavaLangInteger_MIN_VALUE));
    JreStrongAssign(&ComFasterxmlJacksonCoreIoNumberOutput_SMALLEST_LONG, NSString_java_valueOfLong_(JavaLangLong_MIN_VALUE));
    JreStrongAssignAndConsume(&ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS, [IOSIntArray newArrayWithLength:1000]);
    {
      jint fullIx = 0;
      for (jint i1 = 0; i1 < 10; ++i1) {
        for (jint i2 = 0; i2 < 10; ++i2) {
          for (jint i3 = 0; i3 < 10; ++i3) {
            jint enc = (JreLShift32((i1 + '0'), 16)) | (JreLShift32((i2 + '0'), 8)) | (i3 + '0');
            *IOSIntArray_GetRef(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS, fullIx++) = enc;
          }
        }
      }
    }
    JreStrongAssignAndConsume(&ComFasterxmlJacksonCoreIoNumberOutput_sSmallIntStrs, [IOSObjectArray newArrayWithObjects:(id[]){ @"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10" } count:11 type:NSString_class_()]);
    JreStrongAssignAndConsume(&ComFasterxmlJacksonCoreIoNumberOutput_sSmallIntStrs2, [IOSObjectArray newArrayWithObjects:(id[]){ @"-1", @"-2", @"-3", @"-4", @"-5", @"-6", @"-7", @"-8", @"-9", @"-10" } count:10 type:NSString_class_()]);
    J2OBJC_SET_INITIALIZED(ComFasterxmlJacksonCoreIoNumberOutput)
  }
}

@end

void ComFasterxmlJacksonCoreIoNumberOutput_init(ComFasterxmlJacksonCoreIoNumberOutput *self) {
  NSObject_init(self);
}

ComFasterxmlJacksonCoreIoNumberOutput *new_ComFasterxmlJacksonCoreIoNumberOutput_init() {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreIoNumberOutput, init)
}

ComFasterxmlJacksonCoreIoNumberOutput *create_ComFasterxmlJacksonCoreIoNumberOutput_init() {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreIoNumberOutput, init)
}

jint ComFasterxmlJacksonCoreIoNumberOutput_outputIntWithInt_withCharArray_withInt_(jint v, IOSCharArray *b, jint off) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  if (v < 0) {
    if (v == JavaLangInteger_MIN_VALUE) {
      return ComFasterxmlJacksonCoreIoNumberOutput__outputSmallestIWithCharArray_withInt_(b, off);
    }
    *IOSCharArray_GetRef(nil_chk(b), off++) = '-';
    v = -v;
  }
  if (v < ComFasterxmlJacksonCoreIoNumberOutput_MILLION) {
    if (v < 1000) {
      if (v < 10) {
        *IOSCharArray_GetRef(nil_chk(b), off) = (jchar) ('0' + v);
        return off + 1;
      }
      return ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withCharArray_withInt_(v, b, off);
    }
    jint thousands = v / 1000;
    v -= (thousands * 1000);
    off = ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withCharArray_withInt_(thousands, b, off);
    off = ComFasterxmlJacksonCoreIoNumberOutput__full3WithInt_withCharArray_withInt_(v, b, off);
    return off;
  }
  if (v >= ComFasterxmlJacksonCoreIoNumberOutput_BILLION) {
    v -= ComFasterxmlJacksonCoreIoNumberOutput_BILLION;
    if (v >= ComFasterxmlJacksonCoreIoNumberOutput_BILLION) {
      v -= ComFasterxmlJacksonCoreIoNumberOutput_BILLION;
      *IOSCharArray_GetRef(nil_chk(b), off++) = '2';
    }
    else {
      *IOSCharArray_GetRef(nil_chk(b), off++) = '1';
    }
    return ComFasterxmlJacksonCoreIoNumberOutput__outputFullBillionWithInt_withCharArray_withInt_(v, b, off);
  }
  jint newValue = v / 1000;
  jint ones = (v - (newValue * 1000));
  v = newValue;
  newValue /= 1000;
  jint thousands = (v - (newValue * 1000));
  off = ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withCharArray_withInt_(newValue, b, off);
  off = ComFasterxmlJacksonCoreIoNumberOutput__full3WithInt_withCharArray_withInt_(thousands, b, off);
  return ComFasterxmlJacksonCoreIoNumberOutput__full3WithInt_withCharArray_withInt_(ones, b, off);
}

jint ComFasterxmlJacksonCoreIoNumberOutput_outputIntWithInt_withByteArray_withInt_(jint v, IOSByteArray *b, jint off) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  if (v < 0) {
    if (v == JavaLangInteger_MIN_VALUE) {
      return ComFasterxmlJacksonCoreIoNumberOutput__outputSmallestIWithByteArray_withInt_(b, off);
    }
    *IOSByteArray_GetRef(nil_chk(b), off++) = '-';
    v = -v;
  }
  if (v < ComFasterxmlJacksonCoreIoNumberOutput_MILLION) {
    if (v < 1000) {
      if (v < 10) {
        *IOSByteArray_GetRef(nil_chk(b), off++) = (jbyte) ('0' + v);
      }
      else {
        off = ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withByteArray_withInt_(v, b, off);
      }
    }
    else {
      jint thousands = v / 1000;
      v -= (thousands * 1000);
      off = ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withByteArray_withInt_(thousands, b, off);
      off = ComFasterxmlJacksonCoreIoNumberOutput__full3WithInt_withByteArray_withInt_(v, b, off);
    }
    return off;
  }
  if (v >= ComFasterxmlJacksonCoreIoNumberOutput_BILLION) {
    v -= ComFasterxmlJacksonCoreIoNumberOutput_BILLION;
    if (v >= ComFasterxmlJacksonCoreIoNumberOutput_BILLION) {
      v -= ComFasterxmlJacksonCoreIoNumberOutput_BILLION;
      *IOSByteArray_GetRef(nil_chk(b), off++) = '2';
    }
    else {
      *IOSByteArray_GetRef(nil_chk(b), off++) = '1';
    }
    return ComFasterxmlJacksonCoreIoNumberOutput__outputFullBillionWithInt_withByteArray_withInt_(v, b, off);
  }
  jint newValue = v / 1000;
  jint ones = (v - (newValue * 1000));
  v = newValue;
  newValue /= 1000;
  jint thousands = (v - (newValue * 1000));
  off = ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withByteArray_withInt_(newValue, b, off);
  off = ComFasterxmlJacksonCoreIoNumberOutput__full3WithInt_withByteArray_withInt_(thousands, b, off);
  return ComFasterxmlJacksonCoreIoNumberOutput__full3WithInt_withByteArray_withInt_(ones, b, off);
}

jint ComFasterxmlJacksonCoreIoNumberOutput_outputLongWithLong_withCharArray_withInt_(jlong v, IOSCharArray *b, jint off) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  if (v < 0LL) {
    if (v > ComFasterxmlJacksonCoreIoNumberOutput_MIN_INT_AS_LONG) {
      return ComFasterxmlJacksonCoreIoNumberOutput_outputIntWithInt_withCharArray_withInt_((jint) v, b, off);
    }
    if (v == JavaLangLong_MIN_VALUE) {
      return ComFasterxmlJacksonCoreIoNumberOutput__outputSmallestLWithCharArray_withInt_(b, off);
    }
    *IOSCharArray_GetRef(nil_chk(b), off++) = '-';
    v = -v;
  }
  else {
    if (v <= ComFasterxmlJacksonCoreIoNumberOutput_MAX_INT_AS_LONG) {
      return ComFasterxmlJacksonCoreIoNumberOutput_outputIntWithInt_withCharArray_withInt_((jint) v, b, off);
    }
  }
  jlong upper = v / ComFasterxmlJacksonCoreIoNumberOutput_BILLION_L;
  v -= (upper * ComFasterxmlJacksonCoreIoNumberOutput_BILLION_L);
  if (upper < ComFasterxmlJacksonCoreIoNumberOutput_BILLION_L) {
    off = ComFasterxmlJacksonCoreIoNumberOutput__outputUptoBillionWithInt_withCharArray_withInt_((jint) upper, b, off);
  }
  else {
    jlong hi = upper / ComFasterxmlJacksonCoreIoNumberOutput_BILLION_L;
    upper -= (hi * ComFasterxmlJacksonCoreIoNumberOutput_BILLION_L);
    off = ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withCharArray_withInt_((jint) hi, b, off);
    off = ComFasterxmlJacksonCoreIoNumberOutput__outputFullBillionWithInt_withCharArray_withInt_((jint) upper, b, off);
  }
  return ComFasterxmlJacksonCoreIoNumberOutput__outputFullBillionWithInt_withCharArray_withInt_((jint) v, b, off);
}

jint ComFasterxmlJacksonCoreIoNumberOutput_outputLongWithLong_withByteArray_withInt_(jlong v, IOSByteArray *b, jint off) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  if (v < 0LL) {
    if (v > ComFasterxmlJacksonCoreIoNumberOutput_MIN_INT_AS_LONG) {
      return ComFasterxmlJacksonCoreIoNumberOutput_outputIntWithInt_withByteArray_withInt_((jint) v, b, off);
    }
    if (v == JavaLangLong_MIN_VALUE) {
      return ComFasterxmlJacksonCoreIoNumberOutput__outputSmallestLWithByteArray_withInt_(b, off);
    }
    *IOSByteArray_GetRef(nil_chk(b), off++) = '-';
    v = -v;
  }
  else {
    if (v <= ComFasterxmlJacksonCoreIoNumberOutput_MAX_INT_AS_LONG) {
      return ComFasterxmlJacksonCoreIoNumberOutput_outputIntWithInt_withByteArray_withInt_((jint) v, b, off);
    }
  }
  jlong upper = v / ComFasterxmlJacksonCoreIoNumberOutput_BILLION_L;
  v -= (upper * ComFasterxmlJacksonCoreIoNumberOutput_BILLION_L);
  if (upper < ComFasterxmlJacksonCoreIoNumberOutput_BILLION_L) {
    off = ComFasterxmlJacksonCoreIoNumberOutput__outputUptoBillionWithInt_withByteArray_withInt_((jint) upper, b, off);
  }
  else {
    jlong hi = upper / ComFasterxmlJacksonCoreIoNumberOutput_BILLION_L;
    upper -= (hi * ComFasterxmlJacksonCoreIoNumberOutput_BILLION_L);
    off = ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withByteArray_withInt_((jint) hi, b, off);
    off = ComFasterxmlJacksonCoreIoNumberOutput__outputFullBillionWithInt_withByteArray_withInt_((jint) upper, b, off);
  }
  return ComFasterxmlJacksonCoreIoNumberOutput__outputFullBillionWithInt_withByteArray_withInt_((jint) v, b, off);
}

NSString *ComFasterxmlJacksonCoreIoNumberOutput_toStringWithInt_(jint v) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  if (v < ((IOSObjectArray *) nil_chk(ComFasterxmlJacksonCoreIoNumberOutput_sSmallIntStrs))->size_) {
    if (v >= 0) {
      return IOSObjectArray_Get(ComFasterxmlJacksonCoreIoNumberOutput_sSmallIntStrs, v);
    }
    jint v2 = -v - 1;
    if (v2 < ((IOSObjectArray *) nil_chk(ComFasterxmlJacksonCoreIoNumberOutput_sSmallIntStrs2))->size_) {
      return IOSObjectArray_Get(ComFasterxmlJacksonCoreIoNumberOutput_sSmallIntStrs2, v2);
    }
  }
  return JavaLangInteger_toStringWithInt_(v);
}

NSString *ComFasterxmlJacksonCoreIoNumberOutput_toStringWithLong_(jlong v) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  if (v <= JavaLangInteger_MAX_VALUE && v >= JavaLangInteger_MIN_VALUE) {
    return ComFasterxmlJacksonCoreIoNumberOutput_toStringWithInt_((jint) v);
  }
  return JavaLangLong_toStringWithLong_(v);
}

NSString *ComFasterxmlJacksonCoreIoNumberOutput_toStringWithDouble_(jdouble v) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  return JavaLangDouble_toStringWithDouble_(v);
}

NSString *ComFasterxmlJacksonCoreIoNumberOutput_toStringWithFloat_(jfloat v) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  return JavaLangFloat_toStringWithFloat_(v);
}

jint ComFasterxmlJacksonCoreIoNumberOutput__outputUptoBillionWithInt_withCharArray_withInt_(jint v, IOSCharArray *b, jint off) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  if (v < ComFasterxmlJacksonCoreIoNumberOutput_MILLION) {
    if (v < 1000) {
      return ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withCharArray_withInt_(v, b, off);
    }
    jint thousands = v / 1000;
    jint ones = v - (thousands * 1000);
    return ComFasterxmlJacksonCoreIoNumberOutput__outputUptoMillionWithCharArray_withInt_withInt_withInt_(b, off, thousands, ones);
  }
  jint thousands = v / 1000;
  jint ones = (v - (thousands * 1000));
  jint millions = thousands / 1000;
  thousands -= (millions * 1000);
  off = ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withCharArray_withInt_(millions, b, off);
  jint enc = IOSIntArray_Get(nil_chk(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS), thousands);
  *IOSCharArray_GetRef(nil_chk(b), off++) = (jchar) (JreRShift32(enc, 16));
  *IOSCharArray_GetRef(b, off++) = (jchar) ((JreRShift32(enc, 8)) & (jint) 0x7F);
  *IOSCharArray_GetRef(b, off++) = (jchar) (enc & (jint) 0x7F);
  enc = IOSIntArray_Get(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS, ones);
  *IOSCharArray_GetRef(b, off++) = (jchar) (JreRShift32(enc, 16));
  *IOSCharArray_GetRef(b, off++) = (jchar) ((JreRShift32(enc, 8)) & (jint) 0x7F);
  *IOSCharArray_GetRef(b, off++) = (jchar) (enc & (jint) 0x7F);
  return off;
}

jint ComFasterxmlJacksonCoreIoNumberOutput__outputFullBillionWithInt_withCharArray_withInt_(jint v, IOSCharArray *b, jint off) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  jint thousands = v / 1000;
  jint ones = (v - (thousands * 1000));
  jint millions = thousands / 1000;
  jint enc = IOSIntArray_Get(nil_chk(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS), millions);
  *IOSCharArray_GetRef(nil_chk(b), off++) = (jchar) (JreRShift32(enc, 16));
  *IOSCharArray_GetRef(b, off++) = (jchar) ((JreRShift32(enc, 8)) & (jint) 0x7F);
  *IOSCharArray_GetRef(b, off++) = (jchar) (enc & (jint) 0x7F);
  thousands -= (millions * 1000);
  enc = IOSIntArray_Get(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS, thousands);
  *IOSCharArray_GetRef(b, off++) = (jchar) (JreRShift32(enc, 16));
  *IOSCharArray_GetRef(b, off++) = (jchar) ((JreRShift32(enc, 8)) & (jint) 0x7F);
  *IOSCharArray_GetRef(b, off++) = (jchar) (enc & (jint) 0x7F);
  enc = IOSIntArray_Get(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS, ones);
  *IOSCharArray_GetRef(b, off++) = (jchar) (JreRShift32(enc, 16));
  *IOSCharArray_GetRef(b, off++) = (jchar) ((JreRShift32(enc, 8)) & (jint) 0x7F);
  *IOSCharArray_GetRef(b, off++) = (jchar) (enc & (jint) 0x7F);
  return off;
}

jint ComFasterxmlJacksonCoreIoNumberOutput__outputUptoBillionWithInt_withByteArray_withInt_(jint v, IOSByteArray *b, jint off) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  if (v < ComFasterxmlJacksonCoreIoNumberOutput_MILLION) {
    if (v < 1000) {
      return ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withByteArray_withInt_(v, b, off);
    }
    jint thousands = v / 1000;
    jint ones = v - (thousands * 1000);
    return ComFasterxmlJacksonCoreIoNumberOutput__outputUptoMillionWithByteArray_withInt_withInt_withInt_(b, off, thousands, ones);
  }
  jint thousands = v / 1000;
  jint ones = (v - (thousands * 1000));
  jint millions = thousands / 1000;
  thousands -= (millions * 1000);
  off = ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withByteArray_withInt_(millions, b, off);
  jint enc = IOSIntArray_Get(nil_chk(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS), thousands);
  *IOSByteArray_GetRef(nil_chk(b), off++) = (jbyte) (JreRShift32(enc, 16));
  *IOSByteArray_GetRef(b, off++) = (jbyte) (JreRShift32(enc, 8));
  *IOSByteArray_GetRef(b, off++) = (jbyte) enc;
  enc = IOSIntArray_Get(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS, ones);
  *IOSByteArray_GetRef(b, off++) = (jbyte) (JreRShift32(enc, 16));
  *IOSByteArray_GetRef(b, off++) = (jbyte) (JreRShift32(enc, 8));
  *IOSByteArray_GetRef(b, off++) = (jbyte) enc;
  return off;
}

jint ComFasterxmlJacksonCoreIoNumberOutput__outputFullBillionWithInt_withByteArray_withInt_(jint v, IOSByteArray *b, jint off) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  jint thousands = v / 1000;
  jint ones = (v - (thousands * 1000));
  jint millions = thousands / 1000;
  thousands -= (millions * 1000);
  jint enc = IOSIntArray_Get(nil_chk(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS), millions);
  *IOSByteArray_GetRef(nil_chk(b), off++) = (jbyte) (JreRShift32(enc, 16));
  *IOSByteArray_GetRef(b, off++) = (jbyte) (JreRShift32(enc, 8));
  *IOSByteArray_GetRef(b, off++) = (jbyte) enc;
  enc = IOSIntArray_Get(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS, thousands);
  *IOSByteArray_GetRef(b, off++) = (jbyte) (JreRShift32(enc, 16));
  *IOSByteArray_GetRef(b, off++) = (jbyte) (JreRShift32(enc, 8));
  *IOSByteArray_GetRef(b, off++) = (jbyte) enc;
  enc = IOSIntArray_Get(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS, ones);
  *IOSByteArray_GetRef(b, off++) = (jbyte) (JreRShift32(enc, 16));
  *IOSByteArray_GetRef(b, off++) = (jbyte) (JreRShift32(enc, 8));
  *IOSByteArray_GetRef(b, off++) = (jbyte) enc;
  return off;
}

jint ComFasterxmlJacksonCoreIoNumberOutput__outputUptoMillionWithCharArray_withInt_withInt_withInt_(IOSCharArray *b, jint off, jint thousands, jint ones) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  jint enc = IOSIntArray_Get(nil_chk(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS), thousands);
  if (thousands > 9) {
    if (thousands > 99) {
      *IOSCharArray_GetRef(nil_chk(b), off++) = (jchar) (JreRShift32(enc, 16));
    }
    *IOSCharArray_GetRef(nil_chk(b), off++) = (jchar) ((JreRShift32(enc, 8)) & (jint) 0x7F);
  }
  *IOSCharArray_GetRef(nil_chk(b), off++) = (jchar) (enc & (jint) 0x7F);
  enc = IOSIntArray_Get(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS, ones);
  *IOSCharArray_GetRef(b, off++) = (jchar) (JreRShift32(enc, 16));
  *IOSCharArray_GetRef(b, off++) = (jchar) ((JreRShift32(enc, 8)) & (jint) 0x7F);
  *IOSCharArray_GetRef(b, off++) = (jchar) (enc & (jint) 0x7F);
  return off;
}

jint ComFasterxmlJacksonCoreIoNumberOutput__outputUptoMillionWithByteArray_withInt_withInt_withInt_(IOSByteArray *b, jint off, jint thousands, jint ones) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  jint enc = IOSIntArray_Get(nil_chk(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS), thousands);
  if (thousands > 9) {
    if (thousands > 99) {
      *IOSByteArray_GetRef(nil_chk(b), off++) = (jbyte) (JreRShift32(enc, 16));
    }
    *IOSByteArray_GetRef(nil_chk(b), off++) = (jbyte) (JreRShift32(enc, 8));
  }
  *IOSByteArray_GetRef(nil_chk(b), off++) = (jbyte) enc;
  enc = IOSIntArray_Get(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS, ones);
  *IOSByteArray_GetRef(b, off++) = (jbyte) (JreRShift32(enc, 16));
  *IOSByteArray_GetRef(b, off++) = (jbyte) (JreRShift32(enc, 8));
  *IOSByteArray_GetRef(b, off++) = (jbyte) enc;
  return off;
}

jint ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withCharArray_withInt_(jint t, IOSCharArray *b, jint off) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  jint enc = IOSIntArray_Get(nil_chk(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS), t);
  if (t > 9) {
    if (t > 99) {
      *IOSCharArray_GetRef(nil_chk(b), off++) = (jchar) (JreRShift32(enc, 16));
    }
    *IOSCharArray_GetRef(nil_chk(b), off++) = (jchar) ((JreRShift32(enc, 8)) & (jint) 0x7F);
  }
  *IOSCharArray_GetRef(nil_chk(b), off++) = (jchar) (enc & (jint) 0x7F);
  return off;
}

jint ComFasterxmlJacksonCoreIoNumberOutput__leading3WithInt_withByteArray_withInt_(jint t, IOSByteArray *b, jint off) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  jint enc = IOSIntArray_Get(nil_chk(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS), t);
  if (t > 9) {
    if (t > 99) {
      *IOSByteArray_GetRef(nil_chk(b), off++) = (jbyte) (JreRShift32(enc, 16));
    }
    *IOSByteArray_GetRef(nil_chk(b), off++) = (jbyte) (JreRShift32(enc, 8));
  }
  *IOSByteArray_GetRef(nil_chk(b), off++) = (jbyte) enc;
  return off;
}

jint ComFasterxmlJacksonCoreIoNumberOutput__full3WithInt_withCharArray_withInt_(jint t, IOSCharArray *b, jint off) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  jint enc = IOSIntArray_Get(nil_chk(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS), t);
  *IOSCharArray_GetRef(nil_chk(b), off++) = (jchar) (JreRShift32(enc, 16));
  *IOSCharArray_GetRef(b, off++) = (jchar) ((JreRShift32(enc, 8)) & (jint) 0x7F);
  *IOSCharArray_GetRef(b, off++) = (jchar) (enc & (jint) 0x7F);
  return off;
}

jint ComFasterxmlJacksonCoreIoNumberOutput__full3WithInt_withByteArray_withInt_(jint t, IOSByteArray *b, jint off) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  jint enc = IOSIntArray_Get(nil_chk(ComFasterxmlJacksonCoreIoNumberOutput_TRIPLET_TO_CHARS), t);
  *IOSByteArray_GetRef(nil_chk(b), off++) = (jbyte) (JreRShift32(enc, 16));
  *IOSByteArray_GetRef(b, off++) = (jbyte) (JreRShift32(enc, 8));
  *IOSByteArray_GetRef(b, off++) = (jbyte) enc;
  return off;
}

jint ComFasterxmlJacksonCoreIoNumberOutput__outputSmallestLWithCharArray_withInt_(IOSCharArray *b, jint off) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  jint len = [((NSString *) nil_chk(ComFasterxmlJacksonCoreIoNumberOutput_SMALLEST_LONG)) java_length];
  [ComFasterxmlJacksonCoreIoNumberOutput_SMALLEST_LONG java_getChars:0 sourceEnd:len destination:b destinationBegin:off];
  return (off + len);
}

jint ComFasterxmlJacksonCoreIoNumberOutput__outputSmallestLWithByteArray_withInt_(IOSByteArray *b, jint off) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  jint len = [((NSString *) nil_chk(ComFasterxmlJacksonCoreIoNumberOutput_SMALLEST_LONG)) java_length];
  for (jint i = 0; i < len; ++i) {
    *IOSByteArray_GetRef(nil_chk(b), off++) = (jbyte) [ComFasterxmlJacksonCoreIoNumberOutput_SMALLEST_LONG charAtWithInt:i];
  }
  return off;
}

jint ComFasterxmlJacksonCoreIoNumberOutput__outputSmallestIWithCharArray_withInt_(IOSCharArray *b, jint off) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  jint len = [((NSString *) nil_chk(ComFasterxmlJacksonCoreIoNumberOutput_SMALLEST_INT)) java_length];
  [ComFasterxmlJacksonCoreIoNumberOutput_SMALLEST_INT java_getChars:0 sourceEnd:len destination:b destinationBegin:off];
  return (off + len);
}

jint ComFasterxmlJacksonCoreIoNumberOutput__outputSmallestIWithByteArray_withInt_(IOSByteArray *b, jint off) {
  ComFasterxmlJacksonCoreIoNumberOutput_initialize();
  jint len = [((NSString *) nil_chk(ComFasterxmlJacksonCoreIoNumberOutput_SMALLEST_INT)) java_length];
  for (jint i = 0; i < len; ++i) {
    *IOSByteArray_GetRef(nil_chk(b), off++) = (jbyte) [ComFasterxmlJacksonCoreIoNumberOutput_SMALLEST_INT charAtWithInt:i];
  }
  return off;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreIoNumberOutput)
