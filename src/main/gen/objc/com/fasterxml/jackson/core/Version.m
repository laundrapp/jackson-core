//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/Version.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/Version.h"
#include "java/lang/StringBuilder.h"

inline jlong ComFasterxmlJacksonCoreVersion_get_serialVersionUID(void);
#define ComFasterxmlJacksonCoreVersion_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreVersion, serialVersionUID, jlong)

inline ComFasterxmlJacksonCoreVersion *ComFasterxmlJacksonCoreVersion_get_UNKNOWN_VERSION(void);
static ComFasterxmlJacksonCoreVersion *ComFasterxmlJacksonCoreVersion_UNKNOWN_VERSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreVersion, UNKNOWN_VERSION, ComFasterxmlJacksonCoreVersion *)

J2OBJC_INITIALIZED_DEFN(ComFasterxmlJacksonCoreVersion)

@implementation ComFasterxmlJacksonCoreVersion

- (instancetype __nonnull)initWithInt:(jint)major
                              withInt:(jint)minor
                              withInt:(jint)patchLevel
                         withNSString:(NSString *)snapshotInfo
                         withNSString:(NSString *)groupId
                         withNSString:(NSString *)artifactId {
  ComFasterxmlJacksonCoreVersion_initWithInt_withInt_withInt_withNSString_withNSString_withNSString_(self, major, minor, patchLevel, snapshotInfo, groupId, artifactId);
  return self;
}

+ (ComFasterxmlJacksonCoreVersion *)unknownVersion {
  return ComFasterxmlJacksonCoreVersion_unknownVersion();
}

- (jboolean)isUnknownVersion {
  return self == ComFasterxmlJacksonCoreVersion_UNKNOWN_VERSION;
}

- (jboolean)isSnapshot {
  return (_snapshotInfo_ != nil) && ([((NSString *) nil_chk(_snapshotInfo_)) java_length] > 0);
}

- (jint)getMajorVersion {
  return _majorVersion_;
}

- (jint)getMinorVersion {
  return _minorVersion_;
}

- (jint)getPatchLevel {
  return _patchLevel_;
}

- (NSString *)getGroupId {
  return _groupId_;
}

- (NSString *)getArtifactId {
  return _artifactId_;
}

- (NSString *)toFullString {
  return JreStrcat("$C$C$", _groupId_, '/', _artifactId_, '/', [self description]);
}

- (NSString *)description {
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [((JavaLangStringBuilder *) nil_chk([sb appendWithInt:_majorVersion_])) appendWithChar:'.'];
  [((JavaLangStringBuilder *) nil_chk([sb appendWithInt:_minorVersion_])) appendWithChar:'.'];
  [sb appendWithInt:_patchLevel_];
  if ([self isSnapshot]) {
    [((JavaLangStringBuilder *) nil_chk([sb appendWithChar:'-'])) appendWithNSString:_snapshotInfo_];
  }
  return [sb description];
}

- (NSUInteger)hash {
  return ((jint) [((NSString *) nil_chk(_artifactId_)) hash]) ^ ((jint) [((NSString *) nil_chk(_groupId_)) hash]) + _majorVersion_ - _minorVersion_ + _patchLevel_;
}

- (jboolean)isEqual:(id)o {
  if (o == self) return true;
  if (o == nil) return false;
  if ([o java_getClass] != [self java_getClass]) return false;
  ComFasterxmlJacksonCoreVersion *other = (ComFasterxmlJacksonCoreVersion *) cast_chk(o, [ComFasterxmlJacksonCoreVersion class]);
  return (other->_majorVersion_ == _majorVersion_) && (other->_minorVersion_ == _minorVersion_) && (other->_patchLevel_ == _patchLevel_) && [((NSString *) nil_chk(other->_snapshotInfo_)) isEqual:_snapshotInfo_] && [((NSString *) nil_chk(other->_artifactId_)) isEqual:_artifactId_] && [((NSString *) nil_chk(other->_groupId_)) isEqual:_groupId_];
}

- (jint)compareToWithId:(ComFasterxmlJacksonCoreVersion *)other {
  cast_chk(other, [ComFasterxmlJacksonCoreVersion class]);
  if (other == self) return 0;
  jint diff = [((NSString *) nil_chk(_groupId_)) compareToWithId:((ComFasterxmlJacksonCoreVersion *) nil_chk(other))->_groupId_];
  if (diff == 0) {
    diff = [((NSString *) nil_chk(_artifactId_)) compareToWithId:other->_artifactId_];
    if (diff == 0) {
      diff = _majorVersion_ - other->_majorVersion_;
      if (diff == 0) {
        diff = _minorVersion_ - other->_minorVersion_;
        if (diff == 0) {
          diff = _patchLevel_ - other->_patchLevel_;
          if (diff == 0) {
            diff = [((NSString *) nil_chk(_snapshotInfo_)) compareToWithId:other->_snapshotInfo_];
          }
        }
      }
    }
  }
  return diff;
}

- (void)dealloc {
  RELEASE_(_groupId_);
  RELEASE_(_artifactId_);
  RELEASE_(_snapshotInfo_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreVersion;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:withInt:withInt:withNSString:withNSString:withNSString:);
  methods[1].selector = @selector(unknownVersion);
  methods[2].selector = @selector(isUnknownVersion);
  methods[3].selector = @selector(isSnapshot);
  methods[4].selector = @selector(getMajorVersion);
  methods[5].selector = @selector(getMinorVersion);
  methods[6].selector = @selector(getPatchLevel);
  methods[7].selector = @selector(getGroupId);
  methods[8].selector = @selector(getArtifactId);
  methods[9].selector = @selector(toFullString);
  methods[10].selector = @selector(description);
  methods[11].selector = @selector(hash);
  methods[12].selector = @selector(isEqual:);
  methods[13].selector = @selector(compareToWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = ComFasterxmlJacksonCoreVersion_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "UNKNOWN_VERSION", "LComFasterxmlJacksonCoreVersion;", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
    { "_majorVersion_", "I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_minorVersion_", "I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_patchLevel_", "I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_groupId_", "LNSString;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_artifactId_", "LNSString;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_snapshotInfo_", "LNSString;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "IIILNSString;LNSString;LNSString;", "toString", "hashCode", "equals", "LNSObject;", "compareTo", "LComFasterxmlJacksonCoreVersion;", &ComFasterxmlJacksonCoreVersion_UNKNOWN_VERSION, "Ljava/lang/Object;Ljava/lang/Comparable<Lcom/fasterxml/jackson/core/Version;>;Ljava/io/Serializable;" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreVersion = { "Version", "com.fasterxml.jackson.core", ptrTable, methods, fields, 7, 0x1, 14, 8, -1, -1, -1, 8, -1 };
  return &_ComFasterxmlJacksonCoreVersion;
}

+ (void)initialize {
  if (self == [ComFasterxmlJacksonCoreVersion class]) {
    JreStrongAssignAndConsume(&ComFasterxmlJacksonCoreVersion_UNKNOWN_VERSION, new_ComFasterxmlJacksonCoreVersion_initWithInt_withInt_withInt_withNSString_withNSString_withNSString_(0, 0, 0, nil, nil, nil));
    J2OBJC_SET_INITIALIZED(ComFasterxmlJacksonCoreVersion)
  }
}

@end

void ComFasterxmlJacksonCoreVersion_initWithInt_withInt_withInt_withNSString_withNSString_withNSString_(ComFasterxmlJacksonCoreVersion *self, jint major, jint minor, jint patchLevel, NSString *snapshotInfo, NSString *groupId, NSString *artifactId) {
  NSObject_init(self);
  self->_majorVersion_ = major;
  self->_minorVersion_ = minor;
  self->_patchLevel_ = patchLevel;
  JreStrongAssign(&self->_snapshotInfo_, (snapshotInfo == nil) ? @"" : snapshotInfo);
  JreStrongAssign(&self->_groupId_, (groupId == nil) ? @"" : groupId);
  JreStrongAssign(&self->_artifactId_, (artifactId == nil) ? @"" : artifactId);
}

ComFasterxmlJacksonCoreVersion *new_ComFasterxmlJacksonCoreVersion_initWithInt_withInt_withInt_withNSString_withNSString_withNSString_(jint major, jint minor, jint patchLevel, NSString *snapshotInfo, NSString *groupId, NSString *artifactId) {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreVersion, initWithInt_withInt_withInt_withNSString_withNSString_withNSString_, major, minor, patchLevel, snapshotInfo, groupId, artifactId)
}

ComFasterxmlJacksonCoreVersion *create_ComFasterxmlJacksonCoreVersion_initWithInt_withInt_withInt_withNSString_withNSString_withNSString_(jint major, jint minor, jint patchLevel, NSString *snapshotInfo, NSString *groupId, NSString *artifactId) {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreVersion, initWithInt_withInt_withInt_withNSString_withNSString_withNSString_, major, minor, patchLevel, snapshotInfo, groupId, artifactId)
}

ComFasterxmlJacksonCoreVersion *ComFasterxmlJacksonCoreVersion_unknownVersion() {
  ComFasterxmlJacksonCoreVersion_initialize();
  return ComFasterxmlJacksonCoreVersion_UNKNOWN_VERSION;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreVersion)
