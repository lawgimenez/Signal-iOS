//
//  Copyright (c) 2021 Open Whisper Systems. All rights reserved.
//

#import <SignalServiceKit/SSKMessageDecryptJobRecord.h>

NS_ASSUME_NONNULL_BEGIN

@implementation SSKMessageDecryptJobRecord

- (nullable instancetype)initWithCoder:(NSCoder *)coder
{
    return [super initWithCoder:coder];
}

- (instancetype)initWithEnvelopeData:(NSData *)envelopData
             serverDeliveryTimestamp:(uint64_t)serverDeliveryTimestamp
                               label:(NSString *)label
{
    self = [super initWithLabel:label];
    if (!self) {
        return self;
    }

    _envelopeData = envelopData;
    _serverDeliveryTimestamp = serverDeliveryTimestamp;

    return self;
}

// --- CODE GENERATION MARKER

// This snippet is generated by /Scripts/sds_codegen/sds_generate.py. Do not manually edit it, instead run `sds_codegen.sh`.

// clang-format off

- (instancetype)initWithGrdbId:(int64_t)grdbId
                      uniqueId:(NSString *)uniqueId
                    failureCount:(NSUInteger)failureCount
                           label:(NSString *)label
                          sortId:(unsigned long long)sortId
                          status:(SSKJobRecordStatus)status
                    envelopeData:(nullable NSData *)envelopeData
         serverDeliveryTimestamp:(uint64_t)serverDeliveryTimestamp
{
    self = [super initWithGrdbId:grdbId
                        uniqueId:uniqueId
                      failureCount:failureCount
                             label:label
                            sortId:sortId
                            status:status];

    if (!self) {
        return self;
    }

    _envelopeData = envelopeData;
    _serverDeliveryTimestamp = serverDeliveryTimestamp;

    return self;
}

// clang-format on

// --- CODE GENERATION MARKER

@end

NS_ASSUME_NONNULL_END
