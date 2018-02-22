///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

/// Arguments, results, and errors for the `Common` namespace.

#import "DBCOMMONPathRoot.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBCOMMONPathRoot

@synthesize root = _root;
@synthesize namespaceId = _namespaceId;

#pragma mark - Constructors

- (instancetype)initWithHome {
  self = [super init];
  if (self) {
    _tag = DBCOMMONPathRootHome;
  }
  return self;
}

- (instancetype)initWithRoot:(NSString *)root {
  self = [super init];
  if (self) {
    _tag = DBCOMMONPathRootRoot;
    _root = root;
  }
  return self;
}

- (instancetype)initWithNamespaceId:(NSString *)namespaceId {
  self = [super init];
  if (self) {
    _tag = DBCOMMONPathRootNamespaceId;
    _namespaceId = namespaceId;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBCOMMONPathRootOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (NSString *)root {
  if (![self isRoot]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBCOMMONPathRootRoot, but was %@.", [self tagName]];
  }
  return _root;
}

- (NSString *)namespaceId {
  if (![self isNamespaceId]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBCOMMONPathRootNamespaceId, but was %@.", [self tagName]];
  }
  return _namespaceId;
}

#pragma mark - Tag state methods

- (BOOL)isHome {
  return _tag == DBCOMMONPathRootHome;
}

- (BOOL)isRoot {
  return _tag == DBCOMMONPathRootRoot;
}

- (BOOL)isNamespaceId {
  return _tag == DBCOMMONPathRootNamespaceId;
}

- (BOOL)isOther {
  return _tag == DBCOMMONPathRootOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBCOMMONPathRootHome:
    return @"DBCOMMONPathRootHome";
  case DBCOMMONPathRootRoot:
    return @"DBCOMMONPathRootRoot";
  case DBCOMMONPathRootNamespaceId:
    return @"DBCOMMONPathRootNamespaceId";
  case DBCOMMONPathRootOther:
    return @"DBCOMMONPathRootOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (nullable NSDictionary *)serialize:(id)instance {
  return [DBCOMMONPathRootSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBCOMMONPathRootSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBCOMMONPathRootSerializer serialize:self] description];
}

#pragma mark - Copyable method

- (instancetype)copyWithZone:(NSZone *)zone {
#pragma unused(zone)
  /// object is immutable
  return self;
}

#pragma mark - Hash method

- (NSUInteger)hash {
  NSUInteger prime = 31;
  NSUInteger result = 1;

  switch (_tag) {
  case DBCOMMONPathRootHome:
    result = prime * result + [[self tagName] hash];
  case DBCOMMONPathRootRoot:
    result = prime * result + [self.root hash];
  case DBCOMMONPathRootNamespaceId:
    result = prime * result + [self.namespaceId hash];
  case DBCOMMONPathRootOther:
    result = prime * result + [[self tagName] hash];
  }

  return prime * result;
}

#pragma mark - Equality method

- (BOOL)isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (!other || ![other isKindOfClass:[self class]]) {
    return NO;
  }
  return [self isEqualToPathRoot:other];
}

- (BOOL)isEqualToPathRoot:(DBCOMMONPathRoot *)aPathRoot {
  if (self == aPathRoot) {
    return YES;
  }
  if (self.tag != aPathRoot.tag) {
    return NO;
  }
  switch (_tag) {
  case DBCOMMONPathRootHome:
    return [[self tagName] isEqual:[aPathRoot tagName]];
  case DBCOMMONPathRootRoot:
    return [self.root isEqual:aPathRoot.root];
  case DBCOMMONPathRootNamespaceId:
    return [self.namespaceId isEqual:aPathRoot.namespaceId];
  case DBCOMMONPathRootOther:
    return [[self tagName] isEqual:[aPathRoot tagName]];
  }
  return YES;
}

@end

#pragma mark - Serializer Object

@implementation DBCOMMONPathRootSerializer

+ (NSDictionary *)serialize:(DBCOMMONPathRoot *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isHome]) {
    jsonDict[@".tag"] = @"home";
  } else if ([valueObj isRoot]) {
    jsonDict[@"root"] = valueObj.root;
    jsonDict[@".tag"] = @"root";
  } else if ([valueObj isNamespaceId]) {
    jsonDict[@"namespace_id"] = valueObj.namespaceId;
    jsonDict[@".tag"] = @"namespace_id";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return [jsonDict count] > 0 ? jsonDict : nil;
}

+ (DBCOMMONPathRoot *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"home"]) {
    return [[DBCOMMONPathRoot alloc] initWithHome];
  } else if ([tag isEqualToString:@"root"]) {
    NSString *root = valueDict[@"root"];
    return [[DBCOMMONPathRoot alloc] initWithRoot:root];
  } else if ([tag isEqualToString:@"namespace_id"]) {
    NSString *namespaceId = valueDict[@"namespace_id"];
    return [[DBCOMMONPathRoot alloc] initWithNamespaceId:namespaceId];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBCOMMONPathRoot alloc] initWithOther];
  } else {
    return [[DBCOMMONPathRoot alloc] initWithOther];
  }
}

@end

#import "DBCOMMONPathRootError.h"
#import "DBCOMMONRootInfo.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBCOMMONPathRootError

@synthesize invalidRoot = _invalidRoot;

#pragma mark - Constructors

- (instancetype)initWithInvalidRoot:(DBCOMMONRootInfo *)invalidRoot {
  self = [super init];
  if (self) {
    _tag = DBCOMMONPathRootErrorInvalidRoot;
    _invalidRoot = invalidRoot;
  }
  return self;
}

- (instancetype)initWithNoPermission {
  self = [super init];
  if (self) {
    _tag = DBCOMMONPathRootErrorNoPermission;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBCOMMONPathRootErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBCOMMONRootInfo *)invalidRoot {
  if (![self isInvalidRoot]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBCOMMONPathRootErrorInvalidRoot, but was %@.", [self tagName]];
  }
  return _invalidRoot;
}

#pragma mark - Tag state methods

- (BOOL)isInvalidRoot {
  return _tag == DBCOMMONPathRootErrorInvalidRoot;
}

- (BOOL)isNoPermission {
  return _tag == DBCOMMONPathRootErrorNoPermission;
}

- (BOOL)isOther {
  return _tag == DBCOMMONPathRootErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBCOMMONPathRootErrorInvalidRoot:
    return @"DBCOMMONPathRootErrorInvalidRoot";
  case DBCOMMONPathRootErrorNoPermission:
    return @"DBCOMMONPathRootErrorNoPermission";
  case DBCOMMONPathRootErrorOther:
    return @"DBCOMMONPathRootErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (nullable NSDictionary *)serialize:(id)instance {
  return [DBCOMMONPathRootErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBCOMMONPathRootErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBCOMMONPathRootErrorSerializer serialize:self] description];
}

#pragma mark - Copyable method

- (instancetype)copyWithZone:(NSZone *)zone {
#pragma unused(zone)
  /// object is immutable
  return self;
}

#pragma mark - Hash method

- (NSUInteger)hash {
  NSUInteger prime = 31;
  NSUInteger result = 1;

  switch (_tag) {
  case DBCOMMONPathRootErrorInvalidRoot:
    result = prime * result + [self.invalidRoot hash];
  case DBCOMMONPathRootErrorNoPermission:
    result = prime * result + [[self tagName] hash];
  case DBCOMMONPathRootErrorOther:
    result = prime * result + [[self tagName] hash];
  }

  return prime * result;
}

#pragma mark - Equality method

- (BOOL)isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (!other || ![other isKindOfClass:[self class]]) {
    return NO;
  }
  return [self isEqualToPathRootError:other];
}

- (BOOL)isEqualToPathRootError:(DBCOMMONPathRootError *)aPathRootError {
  if (self == aPathRootError) {
    return YES;
  }
  if (self.tag != aPathRootError.tag) {
    return NO;
  }
  switch (_tag) {
  case DBCOMMONPathRootErrorInvalidRoot:
    return [self.invalidRoot isEqual:aPathRootError.invalidRoot];
  case DBCOMMONPathRootErrorNoPermission:
    return [[self tagName] isEqual:[aPathRootError tagName]];
  case DBCOMMONPathRootErrorOther:
    return [[self tagName] isEqual:[aPathRootError tagName]];
  }
  return YES;
}

@end

#pragma mark - Serializer Object

@implementation DBCOMMONPathRootErrorSerializer

+ (NSDictionary *)serialize:(DBCOMMONPathRootError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isInvalidRoot]) {
    jsonDict[@"invalid_root"] = [[DBCOMMONRootInfoSerializer serialize:valueObj.invalidRoot] mutableCopy];
    jsonDict[@".tag"] = @"invalid_root";
  } else if ([valueObj isNoPermission]) {
    jsonDict[@".tag"] = @"no_permission";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return [jsonDict count] > 0 ? jsonDict : nil;
}

+ (DBCOMMONPathRootError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"invalid_root"]) {
    DBCOMMONRootInfo *invalidRoot = [DBCOMMONRootInfoSerializer deserialize:valueDict[@"invalid_root"]];
    return [[DBCOMMONPathRootError alloc] initWithInvalidRoot:invalidRoot];
  } else if ([tag isEqualToString:@"no_permission"]) {
    return [[DBCOMMONPathRootError alloc] initWithNoPermission];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBCOMMONPathRootError alloc] initWithOther];
  } else {
    return [[DBCOMMONPathRootError alloc] initWithOther];
  }
}

@end

#import "DBCOMMONRootInfo.h"
#import "DBCOMMONTeamRootInfo.h"
#import "DBCOMMONUserRootInfo.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBCOMMONRootInfo

#pragma mark - Constructors

- (instancetype)initWithRootNamespaceId:(NSString *)rootNamespaceId homeNamespaceId:(NSString *)homeNamespaceId {
  [DBStoneValidators
   nonnullValidator:[DBStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"]](rootNamespaceId);
  [DBStoneValidators
   nonnullValidator:[DBStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"]](homeNamespaceId);

  self = [super init];
  if (self) {
    _rootNamespaceId = rootNamespaceId;
    _homeNamespaceId = homeNamespaceId;
  }
  return self;
}

#pragma mark - Serialization methods

+ (nullable NSDictionary *)serialize:(id)instance {
  return [DBCOMMONRootInfoSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBCOMMONRootInfoSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBCOMMONRootInfoSerializer serialize:self] description];
}

#pragma mark - Copyable method

- (instancetype)copyWithZone:(NSZone *)zone {
#pragma unused(zone)
  /// object is immutable
  return self;
}

#pragma mark - Hash method

- (NSUInteger)hash {
  NSUInteger prime = 31;
  NSUInteger result = 1;

  result = prime * result + [self.rootNamespaceId hash];
  result = prime * result + [self.homeNamespaceId hash];

  return prime * result;
}

#pragma mark - Equality method

- (BOOL)isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (!other || ![other isKindOfClass:[self class]]) {
    return NO;
  }
  return [self isEqualToRootInfo:other];
}

- (BOOL)isEqualToRootInfo:(DBCOMMONRootInfo *)aRootInfo {
  if (self == aRootInfo) {
    return YES;
  }
  if (![self.rootNamespaceId isEqual:aRootInfo.rootNamespaceId]) {
    return NO;
  }
  if (![self.homeNamespaceId isEqual:aRootInfo.homeNamespaceId]) {
    return NO;
  }
  return YES;
}

@end

#pragma mark - Serializer Object

@implementation DBCOMMONRootInfoSerializer

+ (NSDictionary *)serialize:(DBCOMMONRootInfo *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"root_namespace_id"] = valueObj.rootNamespaceId;
  jsonDict[@"home_namespace_id"] = valueObj.homeNamespaceId;

  if ([valueObj isKindOfClass:[DBCOMMONTeamRootInfo class]]) {
    NSDictionary *subTypeFields = [DBCOMMONTeamRootInfoSerializer serialize:(DBCOMMONTeamRootInfo *)valueObj];
    for (NSString *key in subTypeFields) {
      jsonDict[key] = subTypeFields[key];
    }
    jsonDict[@".tag"] = @"team";
  } else if ([valueObj isKindOfClass:[DBCOMMONUserRootInfo class]]) {
    NSDictionary *subTypeFields = [DBCOMMONUserRootInfoSerializer serialize:(DBCOMMONUserRootInfo *)valueObj];
    for (NSString *key in subTypeFields) {
      jsonDict[key] = subTypeFields[key];
    }
    jsonDict[@".tag"] = @"user";
  }

  return [jsonDict count] > 0 ? jsonDict : nil;
}

+ (DBCOMMONRootInfo *)deserialize:(NSDictionary *)valueDict {
  if ([valueDict[@".tag"] isEqualToString:@"team"]) {
    return [DBCOMMONTeamRootInfoSerializer deserialize:valueDict];
  }
  if ([valueDict[@".tag"] isEqualToString:@"user"]) {
    return [DBCOMMONUserRootInfoSerializer deserialize:valueDict];
  }

  return [DBCOMMONRootInfoSerializer deserialize:valueDict];
}

@end

#import "DBCOMMONRootInfo.h"
#import "DBCOMMONTeamRootInfo.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBCOMMONTeamRootInfo

#pragma mark - Constructors

- (instancetype)initWithRootNamespaceId:(NSString *)rootNamespaceId
                        homeNamespaceId:(NSString *)homeNamespaceId
                               homePath:(NSString *)homePath {
  [DBStoneValidators
   nonnullValidator:[DBStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"]](rootNamespaceId);
  [DBStoneValidators
   nonnullValidator:[DBStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"]](homeNamespaceId);
  [DBStoneValidators nonnullValidator:nil](homePath);

  self = [super initWithRootNamespaceId:rootNamespaceId homeNamespaceId:homeNamespaceId];
  if (self) {
    _homePath = homePath;
  }
  return self;
}

#pragma mark - Serialization methods

+ (nullable NSDictionary *)serialize:(id)instance {
  return [DBCOMMONTeamRootInfoSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBCOMMONTeamRootInfoSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBCOMMONTeamRootInfoSerializer serialize:self] description];
}

#pragma mark - Copyable method

- (instancetype)copyWithZone:(NSZone *)zone {
#pragma unused(zone)
  /// object is immutable
  return self;
}

#pragma mark - Hash method

- (NSUInteger)hash {
  NSUInteger prime = 31;
  NSUInteger result = 1;

  result = prime * result + [self.rootNamespaceId hash];
  result = prime * result + [self.homeNamespaceId hash];
  result = prime * result + [self.homePath hash];

  return prime * result;
}

#pragma mark - Equality method

- (BOOL)isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (!other || ![other isKindOfClass:[self class]]) {
    return NO;
  }
  return [self isEqualToTeamRootInfo:other];
}

- (BOOL)isEqualToTeamRootInfo:(DBCOMMONTeamRootInfo *)aTeamRootInfo {
  if (self == aTeamRootInfo) {
    return YES;
  }
  if (![self.rootNamespaceId isEqual:aTeamRootInfo.rootNamespaceId]) {
    return NO;
  }
  if (![self.homeNamespaceId isEqual:aTeamRootInfo.homeNamespaceId]) {
    return NO;
  }
  if (![self.homePath isEqual:aTeamRootInfo.homePath]) {
    return NO;
  }
  return YES;
}

@end

#pragma mark - Serializer Object

@implementation DBCOMMONTeamRootInfoSerializer

+ (NSDictionary *)serialize:(DBCOMMONTeamRootInfo *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"root_namespace_id"] = valueObj.rootNamespaceId;
  jsonDict[@"home_namespace_id"] = valueObj.homeNamespaceId;
  jsonDict[@"home_path"] = valueObj.homePath;

  return [jsonDict count] > 0 ? jsonDict : nil;
}

+ (DBCOMMONTeamRootInfo *)deserialize:(NSDictionary *)valueDict {
  NSString *rootNamespaceId = valueDict[@"root_namespace_id"];
  NSString *homeNamespaceId = valueDict[@"home_namespace_id"];
  NSString *homePath = valueDict[@"home_path"];

  return [[DBCOMMONTeamRootInfo alloc] initWithRootNamespaceId:rootNamespaceId
                                               homeNamespaceId:homeNamespaceId
                                                      homePath:homePath];
}

@end

#import "DBCOMMONRootInfo.h"
#import "DBCOMMONUserRootInfo.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBCOMMONUserRootInfo

#pragma mark - Constructors

- (instancetype)initWithRootNamespaceId:(NSString *)rootNamespaceId homeNamespaceId:(NSString *)homeNamespaceId {
  [DBStoneValidators
   nonnullValidator:[DBStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"]](rootNamespaceId);
  [DBStoneValidators
   nonnullValidator:[DBStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"]](homeNamespaceId);

  self = [super initWithRootNamespaceId:rootNamespaceId homeNamespaceId:homeNamespaceId];
  if (self) {
  }
  return self;
}

#pragma mark - Serialization methods

+ (nullable NSDictionary *)serialize:(id)instance {
  return [DBCOMMONUserRootInfoSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBCOMMONUserRootInfoSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBCOMMONUserRootInfoSerializer serialize:self] description];
}

#pragma mark - Copyable method

- (instancetype)copyWithZone:(NSZone *)zone {
#pragma unused(zone)
  /// object is immutable
  return self;
}

#pragma mark - Hash method

- (NSUInteger)hash {
  NSUInteger prime = 31;
  NSUInteger result = 1;

  result = prime * result + [self.rootNamespaceId hash];
  result = prime * result + [self.homeNamespaceId hash];

  return prime * result;
}

#pragma mark - Equality method

- (BOOL)isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (!other || ![other isKindOfClass:[self class]]) {
    return NO;
  }
  return [self isEqualToUserRootInfo:other];
}

- (BOOL)isEqualToUserRootInfo:(DBCOMMONUserRootInfo *)anUserRootInfo {
  if (self == anUserRootInfo) {
    return YES;
  }
  if (![self.rootNamespaceId isEqual:anUserRootInfo.rootNamespaceId]) {
    return NO;
  }
  if (![self.homeNamespaceId isEqual:anUserRootInfo.homeNamespaceId]) {
    return NO;
  }
  return YES;
}

@end

#pragma mark - Serializer Object

@implementation DBCOMMONUserRootInfoSerializer

+ (NSDictionary *)serialize:(DBCOMMONUserRootInfo *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"root_namespace_id"] = valueObj.rootNamespaceId;
  jsonDict[@"home_namespace_id"] = valueObj.homeNamespaceId;

  return [jsonDict count] > 0 ? jsonDict : nil;
}

+ (DBCOMMONUserRootInfo *)deserialize:(NSDictionary *)valueDict {
  NSString *rootNamespaceId = valueDict[@"root_namespace_id"];
  NSString *homeNamespaceId = valueDict[@"home_namespace_id"];

  return [[DBCOMMONUserRootInfo alloc] initWithRootNamespaceId:rootNamespaceId homeNamespaceId:homeNamespaceId];
}

@end