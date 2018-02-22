///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMLOGDomainInvitesDeclineRequestToJoinTeamDetails;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - API Object

///
/// The `DomainInvitesDeclineRequestToJoinTeamDetails` struct.
///
/// Declined a user's request to join the team.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMLOGDomainInvitesDeclineRequestToJoinTeamDetails : NSObject <DBSerializable, NSCopying>

#pragma mark - Instance fields

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @return An initialized instance.
///
- (instancetype)initDefault;

- (instancetype)init NS_UNAVAILABLE;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the
/// `DomainInvitesDeclineRequestToJoinTeamDetails` struct.
///
@interface DBTEAMLOGDomainInvitesDeclineRequestToJoinTeamDetailsSerializer : NSObject

///
/// Serializes `DBTEAMLOGDomainInvitesDeclineRequestToJoinTeamDetails`
/// instances.
///
/// @param instance An instance of the
/// `DBTEAMLOGDomainInvitesDeclineRequestToJoinTeamDetails` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMLOGDomainInvitesDeclineRequestToJoinTeamDetails` API object.
///
+ (nullable NSDictionary *)serialize:(DBTEAMLOGDomainInvitesDeclineRequestToJoinTeamDetails *)instance;

///
/// Deserializes `DBTEAMLOGDomainInvitesDeclineRequestToJoinTeamDetails`
/// instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMLOGDomainInvitesDeclineRequestToJoinTeamDetails` API object.
///
/// @return An instantiation of the
/// `DBTEAMLOGDomainInvitesDeclineRequestToJoinTeamDetails` object.
///
+ (DBTEAMLOGDomainInvitesDeclineRequestToJoinTeamDetails *)deserialize:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END