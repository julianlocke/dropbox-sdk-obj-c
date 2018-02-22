///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMLOGFileRequestReceiveFileDetails;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - API Object

///
/// The `FileRequestReceiveFileDetails` struct.
///
/// Received files for a file request.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMLOGFileRequestReceiveFileDetails : NSObject <DBSerializable, NSCopying>

#pragma mark - Instance fields

/// File request id. Might be missing due to historical data gap.
@property (nonatomic, readonly, copy, nullable) NSString *fileRequestId;

/// File request title.
@property (nonatomic, readonly, copy, nullable) NSString *requestTitle;

/// Submitted file names.
@property (nonatomic, readonly) NSArray<NSString *> *submittedFileNames;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param submittedFileNames Submitted file names.
/// @param fileRequestId File request id. Might be missing due to historical
/// data gap.
/// @param requestTitle File request title.
///
/// @return An initialized instance.
///
- (instancetype)initWithSubmittedFileNames:(NSArray<NSString *> *)submittedFileNames
                             fileRequestId:(nullable NSString *)fileRequestId
                              requestTitle:(nullable NSString *)requestTitle;

///
/// Convenience constructor (exposes only non-nullable instance variables with
/// no default value).
///
/// @param submittedFileNames Submitted file names.
///
/// @return An initialized instance.
///
- (instancetype)initWithSubmittedFileNames:(NSArray<NSString *> *)submittedFileNames;

- (instancetype)init NS_UNAVAILABLE;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `FileRequestReceiveFileDetails` struct.
///
@interface DBTEAMLOGFileRequestReceiveFileDetailsSerializer : NSObject

///
/// Serializes `DBTEAMLOGFileRequestReceiveFileDetails` instances.
///
/// @param instance An instance of the `DBTEAMLOGFileRequestReceiveFileDetails`
/// API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMLOGFileRequestReceiveFileDetails` API object.
///
+ (nullable NSDictionary *)serialize:(DBTEAMLOGFileRequestReceiveFileDetails *)instance;

///
/// Deserializes `DBTEAMLOGFileRequestReceiveFileDetails` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMLOGFileRequestReceiveFileDetails` API object.
///
/// @return An instantiation of the `DBTEAMLOGFileRequestReceiveFileDetails`
/// object.
///
+ (DBTEAMLOGFileRequestReceiveFileDetails *)deserialize:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END