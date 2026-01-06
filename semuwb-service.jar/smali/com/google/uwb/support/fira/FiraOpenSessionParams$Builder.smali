.class public final Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
.super Ljava/lang/Object;
.source "FiraOpenSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/fira/FiraOpenSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAbsoluteInitiationTime:J

.field private mAntennaMode:B

.field private mAoaResultRequest:I

.field private mAoaType:I

.field private mApplicationDataEndpoint:I

.field private mBlockStrideLength:I

.field private mBprfPhrDataRate:I

.field private mCapSize:[B

.field private mChannelNumber:I

.field private mDataRepetitionCount:I

.field private mDestAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/uwb/UwbAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceAddress:Landroid/uwb/UwbAddress;

.field private final mDeviceRole:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceType:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDiagramsFrameReportsFieldsFlags:B

.field private mDlTdoaBlockStriding:I

.field private mFcsType:I

.field private mFilterType:I

.field private mHasAngleOfArrivalAzimuthReport:Z

.field private mHasAngleOfArrivalElevationReport:Z

.field private mHasAngleOfArrivalFigureOfMeritReport:Z

.field private mHasControlMessage:Z

.field private mHasRangingControlPhase:Z

.field private mHasRangingResultReportMessage:Z

.field private mHasTimeOfFlightReport:Z

.field private mHoppingMode:I

.field private mInBandTerminationAttemptCount:I

.field private mInitiationTime:J

.field public mInterFrameInterval:I

.field private mIsDiagnosticsEnabled:Z

.field private mIsKeyRotationEnabled:Z

.field private mIsRssiReportingEnabled:Z

.field private mIsTxAdaptivePayloadPowerEnabled:Z

.field private mKeyRotationRate:I

.field private mLinkLayerMode:I

.field private mMacAddressMode:I

.field private mMaxNumberOfMeasurements:I

.field private mMaxRangingRoundRetries:I

.field private mMeasurementReportPhase:I

.field private mMeasurementReportType:I

.field public mMinFramesPerRr:I

.field public mMtuSize:I

.field private final mMultiNodeMode:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfMsrmtFocusOnAoaAzimuth:I

.field private mNumOfMsrmtFocusOnAoaElevation:I

.field private mNumOfMsrmtFocusOnRange:I

.field private mPreambleCodeIndex:I

.field private mPreambleDuration:I

.field private mPrfMode:I

.field private final mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Lcom/google/uwb/support/fira/FiraProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mPsduDataRate:I

.field private mRangeDataNtfAoaAzimuthLower:D

.field private mRangeDataNtfAoaAzimuthUpper:D

.field private mRangeDataNtfAoaElevationLower:D

.field private mRangeDataNtfAoaElevationUpper:D

.field private mRangeDataNtfConfig:I

.field private mRangeDataNtfProximityFar:I

.field private mRangeDataNtfProximityNear:I

.field private mRangingErrorStreakTimeoutMs:J

.field private mRangingIntervalMs:I

.field private mRangingRoundUsage:I

.field private mRangingTimeStruct:I

.field private mReferenceSessionHandle:I

.field private mReferenceTimeBase:I

.field private mRframeConfig:I

.field private mScheduledMode:I

.field private mSessionDataTransferStatusNtfConfig:Z

.field private final mSessionId:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionKey:[B

.field private mSessionOffsetInMicroSeconds:I

.field private mSessionPriority:I

.field private mSessionType:I

.field private mSfdId:I

.field private mSlotDurationRstu:I

.field private mSlotsPerRangingRound:I

.field private mStaticStsIV:[B

.field private mStsConfig:I

.field private mStsLength:I

.field private mStsSegmentCount:I

.field private final mSubSessionId:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSubsessionKey:[B

.field private mUlTdoaDeviceId:[B

.field private mUlTdoaDeviceIdType:I

.field private mUlTdoaRandomWindowMs:I

.field private mUlTdoaTxIntervalMs:I

.field private mUlTdoaTxTimestampType:I

.field private mVendorId:[B


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1144
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    .line 1146
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 1147
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionType:I

    .line 1149
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceType:Lcom/google/uwb/support/base/RequiredParam;

    .line 1150
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceRole:Lcom/google/uwb/support/base/RequiredParam;

    .line 1153
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingRoundUsage:I

    .line 1156
    new-instance v2, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v2}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMultiNodeMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 1157
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    .line 1158
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    .line 1161
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInitiationTime:J

    .line 1162
    iput-wide v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAbsoluteInitiationTime:J

    .line 1165
    const/16 v3, 0x960

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotDurationRstu:I

    .line 1168
    const/16 v3, 0x19

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotsPerRangingRound:I

    .line 1171
    const/16 v3, 0xc8

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingIntervalMs:I

    .line 1174
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBlockStrideLength:I

    .line 1177
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHoppingMode:I

    .line 1180
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxRangingRoundRetries:I

    .line 1184
    const/16 v3, 0x32

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionPriority:I

    .line 1187
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    .line 1190
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingResultReportMessage:Z

    .line 1193
    iput-boolean v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasControlMessage:Z

    .line 1196
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingControlPhase:Z

    .line 1199
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportType:I

    .line 1203
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportPhase:I

    .line 1207
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInBandTerminationAttemptCount:I

    .line 1211
    const/16 v4, 0x9

    iput v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mChannelNumber:I

    .line 1214
    const/16 v4, 0xa

    iput v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleCodeIndex:I

    .line 1217
    const/4 v4, 0x3

    iput v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRframeConfig:I

    .line 1220
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPrfMode:I

    .line 1223
    new-array v4, v1, [B

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mCapSize:[B

    .line 1226
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mScheduledMode:I

    .line 1229
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleDuration:I

    .line 1232
    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSfdId:I

    .line 1235
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsSegmentCount:I

    .line 1238
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsLength:I

    .line 1241
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    .line 1244
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubsessionKey:[B

    .line 1247
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPsduDataRate:I

    .line 1250
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBprfPhrDataRate:I

    .line 1253
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFcsType:I

    .line 1256
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsTxAdaptivePayloadPowerEnabled:Z

    .line 1259
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    .line 1265
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 1268
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mVendorId:[B

    .line 1271
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStaticStsIV:[B

    .line 1274
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsRssiReportingEnabled:Z

    .line 1277
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsDiagnosticsEnabled:Z

    .line 1280
    iput-byte v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDiagramsFrameReportsFieldsFlags:B

    .line 1283
    iput-byte v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAntennaMode:B

    .line 1286
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsKeyRotationEnabled:Z

    .line 1289
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mKeyRotationRate:I

    .line 1292
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaResultRequest:I

    .line 1296
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    .line 1299
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    .line 1302
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    .line 1305
    const-wide v1, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    iput-wide v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 1308
    const-wide v1, 0x400921fb54442d18L    # Math.PI

    iput-wide v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 1311
    const-wide v1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    iput-wide v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 1314
    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    iput-wide v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 1317
    iput-boolean v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasTimeOfFlightReport:Z

    .line 1320
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalAzimuthReport:Z

    .line 1323
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalElevationReport:Z

    .line 1326
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalFigureOfMeritReport:Z

    .line 1329
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaType:I

    .line 1332
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnRange:I

    .line 1333
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaAzimuth:I

    .line 1334
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaElevation:I

    .line 1337
    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingErrorStreakTimeoutMs:J

    .line 1340
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mLinkLayerMode:I

    .line 1343
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDataRepetitionCount:I

    .line 1346
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingTimeStruct:I

    .line 1349
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMinFramesPerRr:I

    .line 1352
    const/16 v1, 0x418

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMtuSize:I

    .line 1355
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInterFrameInterval:I

    .line 1358
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDlTdoaBlockStriding:I

    .line 1361
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxIntervalMs:I

    .line 1364
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaRandomWindowMs:I

    .line 1367
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceIdType:I

    .line 1373
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxTimestampType:I

    .line 1376
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFilterType:I

    .line 1378
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxNumberOfMeasurements:I

    .line 1381
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionDataTransferStatusNtfConfig:Z

    .line 1384
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mReferenceTimeBase:I

    .line 1386
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mReferenceSessionHandle:I

    .line 1388
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionOffsetInMicroSeconds:I

    .line 1390
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mApplicationDataEndpoint:I

    .line 1392
    return-void

    :array_0
    .array-data 1
        0x18t
        0x5t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;)V
    .locals 5
    .param p1, "builder"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    .line 1394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1144
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    .line 1146
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 1147
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionType:I

    .line 1149
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceType:Lcom/google/uwb/support/base/RequiredParam;

    .line 1150
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceRole:Lcom/google/uwb/support/base/RequiredParam;

    .line 1153
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingRoundUsage:I

    .line 1156
    new-instance v2, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v2}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMultiNodeMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 1157
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    .line 1158
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    .line 1161
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInitiationTime:J

    .line 1162
    iput-wide v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAbsoluteInitiationTime:J

    .line 1165
    const/16 v3, 0x960

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotDurationRstu:I

    .line 1168
    const/16 v3, 0x19

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotsPerRangingRound:I

    .line 1171
    const/16 v3, 0xc8

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingIntervalMs:I

    .line 1174
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBlockStrideLength:I

    .line 1177
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHoppingMode:I

    .line 1180
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxRangingRoundRetries:I

    .line 1184
    const/16 v3, 0x32

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionPriority:I

    .line 1187
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    .line 1190
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingResultReportMessage:Z

    .line 1193
    iput-boolean v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasControlMessage:Z

    .line 1196
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingControlPhase:Z

    .line 1199
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportType:I

    .line 1203
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportPhase:I

    .line 1207
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInBandTerminationAttemptCount:I

    .line 1211
    const/16 v4, 0x9

    iput v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mChannelNumber:I

    .line 1214
    const/16 v4, 0xa

    iput v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleCodeIndex:I

    .line 1217
    const/4 v4, 0x3

    iput v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRframeConfig:I

    .line 1220
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPrfMode:I

    .line 1223
    new-array v4, v1, [B

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mCapSize:[B

    .line 1226
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mScheduledMode:I

    .line 1229
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleDuration:I

    .line 1232
    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSfdId:I

    .line 1235
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsSegmentCount:I

    .line 1238
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsLength:I

    .line 1241
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    .line 1244
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubsessionKey:[B

    .line 1247
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPsduDataRate:I

    .line 1250
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBprfPhrDataRate:I

    .line 1253
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFcsType:I

    .line 1256
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsTxAdaptivePayloadPowerEnabled:Z

    .line 1259
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    .line 1265
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 1268
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mVendorId:[B

    .line 1271
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStaticStsIV:[B

    .line 1274
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsRssiReportingEnabled:Z

    .line 1277
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsDiagnosticsEnabled:Z

    .line 1280
    iput-byte v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDiagramsFrameReportsFieldsFlags:B

    .line 1283
    iput-byte v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAntennaMode:B

    .line 1286
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsKeyRotationEnabled:Z

    .line 1289
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mKeyRotationRate:I

    .line 1292
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaResultRequest:I

    .line 1296
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    .line 1299
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    .line 1302
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    .line 1305
    const-wide v1, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    iput-wide v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 1308
    const-wide v1, 0x400921fb54442d18L    # Math.PI

    iput-wide v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 1311
    const-wide v1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    iput-wide v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 1314
    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    iput-wide v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 1317
    iput-boolean v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasTimeOfFlightReport:Z

    .line 1320
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalAzimuthReport:Z

    .line 1323
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalElevationReport:Z

    .line 1326
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalFigureOfMeritReport:Z

    .line 1329
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaType:I

    .line 1332
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnRange:I

    .line 1333
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaAzimuth:I

    .line 1334
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaElevation:I

    .line 1337
    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingErrorStreakTimeoutMs:J

    .line 1340
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mLinkLayerMode:I

    .line 1343
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDataRepetitionCount:I

    .line 1346
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingTimeStruct:I

    .line 1349
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMinFramesPerRr:I

    .line 1352
    const/16 v1, 0x418

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMtuSize:I

    .line 1355
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInterFrameInterval:I

    .line 1358
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDlTdoaBlockStriding:I

    .line 1361
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxIntervalMs:I

    .line 1364
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaRandomWindowMs:I

    .line 1367
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceIdType:I

    .line 1373
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxTimestampType:I

    .line 1376
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFilterType:I

    .line 1378
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxNumberOfMeasurements:I

    .line 1381
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionDataTransferStatusNtfConfig:Z

    .line 1384
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mReferenceTimeBase:I

    .line 1386
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mReferenceSessionHandle:I

    .line 1388
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionOffsetInMicroSeconds:I

    .line 1390
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mApplicationDataEndpoint:I

    .line 1395
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/uwb/support/fira/FiraProtocolVersion;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1396
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1397
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionType:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionType:I

    .line 1398
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceType:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1399
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceRole:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceRole:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1400
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingRoundUsage:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingRoundUsage:I

    .line 1401
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMultiNodeMode:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMultiNodeMode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1402
    iget-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    .line 1403
    iget-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    .line 1404
    iget-wide v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInitiationTime:J

    iput-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInitiationTime:J

    .line 1405
    iget-wide v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAbsoluteInitiationTime:J

    iput-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAbsoluteInitiationTime:J

    .line 1406
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotDurationRstu:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotDurationRstu:I

    .line 1407
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotsPerRangingRound:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotsPerRangingRound:I

    .line 1408
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingIntervalMs:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingIntervalMs:I

    .line 1409
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBlockStrideLength:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBlockStrideLength:I

    .line 1410
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHoppingMode:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHoppingMode:I

    .line 1411
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxRangingRoundRetries:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxRangingRoundRetries:I

    .line 1412
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionPriority:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionPriority:I

    .line 1413
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    .line 1414
    iget-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingResultReportMessage:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingResultReportMessage:Z

    .line 1415
    iget-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasControlMessage:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasControlMessage:Z

    .line 1416
    iget-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingControlPhase:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingControlPhase:Z

    .line 1417
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportType:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportType:I

    .line 1418
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportPhase:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportPhase:I

    .line 1419
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInBandTerminationAttemptCount:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInBandTerminationAttemptCount:I

    .line 1420
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mChannelNumber:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mChannelNumber:I

    .line 1421
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleCodeIndex:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleCodeIndex:I

    .line 1422
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRframeConfig:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRframeConfig:I

    .line 1423
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPrfMode:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPrfMode:I

    .line 1424
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mScheduledMode:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mScheduledMode:I

    .line 1425
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mScheduledMode:I

    if-nez v0, :cond_0

    .line 1426
    iget-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mCapSize:[B

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mCapSize:[B

    .line 1428
    :cond_0
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleDuration:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleDuration:I

    .line 1429
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSfdId:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSfdId:I

    .line 1430
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsSegmentCount:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsSegmentCount:I

    .line 1431
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsLength:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsLength:I

    .line 1432
    iget-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    .line 1433
    iget-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubsessionKey:[B

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubsessionKey:[B

    .line 1434
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPsduDataRate:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPsduDataRate:I

    .line 1435
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBprfPhrDataRate:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBprfPhrDataRate:I

    .line 1436
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFcsType:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFcsType:I

    .line 1437
    iget-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsTxAdaptivePayloadPowerEnabled:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsTxAdaptivePayloadPowerEnabled:Z

    .line 1438
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    .line 1439
    iget-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->isSet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubSessionId:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1440
    :cond_1
    iget-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mVendorId:[B

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mVendorId:[B

    .line 1441
    iget-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStaticStsIV:[B

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStaticStsIV:[B

    .line 1442
    iget-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsRssiReportingEnabled:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsRssiReportingEnabled:Z

    .line 1443
    iget-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsDiagnosticsEnabled:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsDiagnosticsEnabled:Z

    .line 1444
    iget-byte v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDiagramsFrameReportsFieldsFlags:B

    iput-byte v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDiagramsFrameReportsFieldsFlags:B

    .line 1445
    iget-byte v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAntennaMode:B

    iput-byte v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAntennaMode:B

    .line 1446
    iget-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsKeyRotationEnabled:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsKeyRotationEnabled:Z

    .line 1447
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mKeyRotationRate:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mKeyRotationRate:I

    .line 1448
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaResultRequest:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaResultRequest:I

    .line 1449
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    .line 1450
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    .line 1451
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    .line 1452
    iget-wide v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    iput-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 1453
    iget-wide v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    iput-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 1454
    iget-wide v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationLower:D

    iput-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 1455
    iget-wide v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    iput-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 1456
    iget-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasTimeOfFlightReport:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasTimeOfFlightReport:Z

    .line 1457
    iget-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalAzimuthReport:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalAzimuthReport:Z

    .line 1458
    iget-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalElevationReport:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalElevationReport:Z

    .line 1459
    iget-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalFigureOfMeritReport:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalFigureOfMeritReport:Z

    .line 1460
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaType:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaType:I

    .line 1461
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnRange:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnRange:I

    .line 1462
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaAzimuth:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaAzimuth:I

    .line 1463
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaElevation:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaElevation:I

    .line 1464
    iget-wide v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingErrorStreakTimeoutMs:J

    iput-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingErrorStreakTimeoutMs:J

    .line 1465
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mLinkLayerMode:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mLinkLayerMode:I

    .line 1466
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDataRepetitionCount:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDataRepetitionCount:I

    .line 1467
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingTimeStruct:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingTimeStruct:I

    .line 1468
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMinFramesPerRr:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMinFramesPerRr:I

    .line 1469
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMtuSize:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMtuSize:I

    .line 1470
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInterFrameInterval:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInterFrameInterval:I

    .line 1471
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDlTdoaBlockStriding:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDlTdoaBlockStriding:I

    .line 1472
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxIntervalMs:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxIntervalMs:I

    .line 1473
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaRandomWindowMs:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaRandomWindowMs:I

    .line 1474
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceIdType:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceIdType:I

    .line 1475
    iget-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceId:[B

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceId:[B

    .line 1476
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxTimestampType:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxTimestampType:I

    .line 1477
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxNumberOfMeasurements:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxNumberOfMeasurements:I

    .line 1478
    iget-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionDataTransferStatusNtfConfig:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionDataTransferStatusNtfConfig:Z

    .line 1479
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mReferenceTimeBase:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mReferenceTimeBase:I

    .line 1480
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mReferenceSessionHandle:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mReferenceSessionHandle:I

    .line 1481
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionOffsetInMicroSeconds:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionOffsetInMicroSeconds:I

    .line 1482
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mApplicationDataEndpoint:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mApplicationDataEndpoint:I

    .line 1483
    return-void

    :array_0
    .array-data 1
        0x18t
        0x5t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)V
    .locals 5
    .param p1, "params"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 1485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1144
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    .line 1146
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 1147
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionType:I

    .line 1149
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceType:Lcom/google/uwb/support/base/RequiredParam;

    .line 1150
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceRole:Lcom/google/uwb/support/base/RequiredParam;

    .line 1153
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingRoundUsage:I

    .line 1156
    new-instance v2, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v2}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMultiNodeMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 1157
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    .line 1158
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    .line 1161
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInitiationTime:J

    .line 1162
    iput-wide v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAbsoluteInitiationTime:J

    .line 1165
    const/16 v3, 0x960

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotDurationRstu:I

    .line 1168
    const/16 v3, 0x19

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotsPerRangingRound:I

    .line 1171
    const/16 v3, 0xc8

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingIntervalMs:I

    .line 1174
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBlockStrideLength:I

    .line 1177
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHoppingMode:I

    .line 1180
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxRangingRoundRetries:I

    .line 1184
    const/16 v3, 0x32

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionPriority:I

    .line 1187
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    .line 1190
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingResultReportMessage:Z

    .line 1193
    iput-boolean v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasControlMessage:Z

    .line 1196
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingControlPhase:Z

    .line 1199
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportType:I

    .line 1203
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportPhase:I

    .line 1207
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInBandTerminationAttemptCount:I

    .line 1211
    const/16 v4, 0x9

    iput v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mChannelNumber:I

    .line 1214
    const/16 v4, 0xa

    iput v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleCodeIndex:I

    .line 1217
    const/4 v4, 0x3

    iput v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRframeConfig:I

    .line 1220
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPrfMode:I

    .line 1223
    new-array v4, v1, [B

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mCapSize:[B

    .line 1226
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mScheduledMode:I

    .line 1229
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleDuration:I

    .line 1232
    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSfdId:I

    .line 1235
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsSegmentCount:I

    .line 1238
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsLength:I

    .line 1241
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    .line 1244
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubsessionKey:[B

    .line 1247
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPsduDataRate:I

    .line 1250
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBprfPhrDataRate:I

    .line 1253
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFcsType:I

    .line 1256
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsTxAdaptivePayloadPowerEnabled:Z

    .line 1259
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    .line 1265
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 1268
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mVendorId:[B

    .line 1271
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStaticStsIV:[B

    .line 1274
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsRssiReportingEnabled:Z

    .line 1277
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsDiagnosticsEnabled:Z

    .line 1280
    iput-byte v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDiagramsFrameReportsFieldsFlags:B

    .line 1283
    iput-byte v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAntennaMode:B

    .line 1286
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsKeyRotationEnabled:Z

    .line 1289
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mKeyRotationRate:I

    .line 1292
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaResultRequest:I

    .line 1296
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    .line 1299
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    .line 1302
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    .line 1305
    const-wide v1, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    iput-wide v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 1308
    const-wide v1, 0x400921fb54442d18L    # Math.PI

    iput-wide v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 1311
    const-wide v1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    iput-wide v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 1314
    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    iput-wide v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 1317
    iput-boolean v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasTimeOfFlightReport:Z

    .line 1320
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalAzimuthReport:Z

    .line 1323
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalElevationReport:Z

    .line 1326
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalFigureOfMeritReport:Z

    .line 1329
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaType:I

    .line 1332
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnRange:I

    .line 1333
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaAzimuth:I

    .line 1334
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaElevation:I

    .line 1337
    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingErrorStreakTimeoutMs:J

    .line 1340
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mLinkLayerMode:I

    .line 1343
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDataRepetitionCount:I

    .line 1346
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingTimeStruct:I

    .line 1349
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMinFramesPerRr:I

    .line 1352
    const/16 v1, 0x418

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMtuSize:I

    .line 1355
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInterFrameInterval:I

    .line 1358
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDlTdoaBlockStriding:I

    .line 1361
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxIntervalMs:I

    .line 1364
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaRandomWindowMs:I

    .line 1367
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceIdType:I

    .line 1373
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxTimestampType:I

    .line 1376
    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFilterType:I

    .line 1378
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxNumberOfMeasurements:I

    .line 1381
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionDataTransferStatusNtfConfig:Z

    .line 1384
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mReferenceTimeBase:I

    .line 1386
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mReferenceSessionHandle:I

    .line 1388
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionOffsetInMicroSeconds:I

    .line 1390
    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mApplicationDataEndpoint:I

    .line 1486
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Lcom/google/uwb/support/fira/FiraProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1487
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1488
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionType:I

    .line 1489
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1490
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceRole:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1491
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingRoundUsage:I

    .line 1492
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMultiNodeMode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$600(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1493
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$700(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Landroid/uwb/UwbAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    .line 1494
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    .line 1495
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$900(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInitiationTime:J

    .line 1496
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$1000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAbsoluteInitiationTime:J

    .line 1497
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$1100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotDurationRstu:I

    .line 1498
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$1200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotsPerRangingRound:I

    .line 1499
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$1300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingIntervalMs:I

    .line 1500
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$1400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBlockStrideLength:I

    .line 1501
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$1500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHoppingMode:I

    .line 1502
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$1600(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxRangingRoundRetries:I

    .line 1503
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$1700(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionPriority:I

    .line 1504
    iget v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMacAddressMode:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    .line 1505
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$1800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingResultReportMessage:Z

    .line 1506
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$1900(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasControlMessage:Z

    .line 1507
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$2000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingControlPhase:Z

    .line 1508
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$2100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportType:I

    .line 1509
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$2200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportPhase:I

    .line 1510
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$2300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInBandTerminationAttemptCount:I

    .line 1511
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$2400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mChannelNumber:I

    .line 1512
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$2500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleCodeIndex:I

    .line 1513
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$2600(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRframeConfig:I

    .line 1514
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$2700(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPrfMode:I

    .line 1515
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$2800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mScheduledMode:I

    .line 1516
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$2800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1517
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$2900(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mCapSize:[B

    .line 1519
    :cond_0
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$3000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleDuration:I

    .line 1520
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$3100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSfdId:I

    .line 1521
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$3200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsSegmentCount:I

    .line 1522
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$3300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsLength:I

    .line 1523
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$3400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    .line 1524
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$3500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubsessionKey:[B

    .line 1525
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$3600(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPsduDataRate:I

    .line 1526
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$3700(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBprfPhrDataRate:I

    .line 1527
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$3800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFcsType:I

    .line 1528
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$3900(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsTxAdaptivePayloadPowerEnabled:Z

    .line 1529
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$4000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    .line 1530
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$4100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1531
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$4200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mVendorId:[B

    .line 1532
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$4300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStaticStsIV:[B

    .line 1533
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$4400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsRssiReportingEnabled:Z

    .line 1534
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$4500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsDiagnosticsEnabled:Z

    .line 1535
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$4600(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)B

    move-result v0

    iput-byte v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDiagramsFrameReportsFieldsFlags:B

    .line 1536
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$4700(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)B

    move-result v0

    iput-byte v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAntennaMode:B

    .line 1537
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$4800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsKeyRotationEnabled:Z

    .line 1538
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$4900(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mKeyRotationRate:I

    .line 1539
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$5000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaResultRequest:I

    .line 1540
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$5100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    .line 1541
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$5200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    .line 1542
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$5300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    .line 1543
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$5400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 1544
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$5500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 1545
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$5600(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 1546
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$5700(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 1547
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$5800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasTimeOfFlightReport:Z

    .line 1548
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$5900(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalAzimuthReport:Z

    .line 1549
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$6000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalElevationReport:Z

    .line 1550
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$6100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalFigureOfMeritReport:Z

    .line 1551
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$6200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaType:I

    .line 1552
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$6300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnRange:I

    .line 1553
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$6400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaAzimuth:I

    .line 1554
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$6500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaElevation:I

    .line 1555
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$6600(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingErrorStreakTimeoutMs:J

    .line 1556
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$6700(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mLinkLayerMode:I

    .line 1557
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$6800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDataRepetitionCount:I

    .line 1558
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$6900(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingTimeStruct:I

    .line 1559
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$7000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMinFramesPerRr:I

    .line 1560
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$7100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMtuSize:I

    .line 1561
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$7200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInterFrameInterval:I

    .line 1562
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$7300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDlTdoaBlockStriding:I

    .line 1563
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$7400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxIntervalMs:I

    .line 1564
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$7500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaRandomWindowMs:I

    .line 1565
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$7600(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceIdType:I

    .line 1566
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$7700(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceId:[B

    .line 1567
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$7800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxTimestampType:I

    .line 1568
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$7900(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFilterType:I

    .line 1569
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$8000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxNumberOfMeasurements:I

    .line 1570
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$8100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionDataTransferStatusNtfConfig:Z

    .line 1571
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$8200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mReferenceTimeBase:I

    .line 1572
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$8300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mReferenceSessionHandle:I

    .line 1573
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$8400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionOffsetInMicroSeconds:I

    .line 1574
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->access$8500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mApplicationDataEndpoint:I

    .line 1575
    return-void

    :array_0
    .array-data 1
        0x18t
        0x5t
    .end array-data
.end method

.method public static asUnsigned(J)I
    .locals 5
    .param p0, "x"    # J

    .line 2308
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Input was negative"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2309
    const-wide v3, 0x100000000L

    cmp-long v0, p0, v3

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "Input does not fit in an unsigned 32 bit integer"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2311
    invoke-static {p0, p1}, Lcom/google/common/primitives/Longs;->toByteArray(J)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private checkAddress()V
    .locals 7

    .line 2131
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2134
    const/4 v0, 0x2

    .line 2135
    .local v0, "addressByteLength":I
    iget v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    if-ne v4, v2, :cond_2

    .line 2136
    const/16 v0, 0x8

    .line 2140
    :cond_2
    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    invoke-virtual {v4}, Landroid/uwb/UwbAddress;->size()I

    move-result v4

    if-ne v4, v0, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2141
    invoke-virtual {p0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->isTimeScheduledTwrSession()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    .line 2143
    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2144
    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/uwb/UwbAddress;

    .line 2145
    .local v5, "destAddress":Landroid/uwb/UwbAddress;
    if-eqz v5, :cond_4

    .line 2146
    invoke-virtual {v5}, Landroid/uwb/UwbAddress;->size()I

    move-result v6

    if-ne v6, v0, :cond_4

    move v6, v3

    goto :goto_4

    :cond_4
    move v6, v1

    .line 2145
    :goto_4
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2147
    .end local v5    # "destAddress":Landroid/uwb/UwbAddress;
    goto :goto_3

    .line 2150
    :cond_5
    iget v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    if-ne v1, v2, :cond_7

    .line 2151
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    invoke-virtual {v1}, Landroid/uwb/UwbAddress;->toBytes()[B

    move-result-object v1

    .line 2152
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams;->getExtendedForbiddenAddress()[B

    move-result-object v2

    .line 2151
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2153
    invoke-virtual {p0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->isTimeScheduledTwrSession()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2154
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/UwbAddress;

    .line 2155
    .local v2, "destAddress":Landroid/uwb/UwbAddress;
    invoke-virtual {v2}, Landroid/uwb/UwbAddress;->toBytes()[B

    move-result-object v4

    .line 2156
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams;->getExtendedForbiddenAddress()[B

    move-result-object v5

    .line 2155
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2157
    .end local v2    # "destAddress":Landroid/uwb/UwbAddress;
    goto :goto_5

    :cond_6
    goto :goto_7

    .line 2160
    :cond_7
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    invoke-virtual {v1}, Landroid/uwb/UwbAddress;->toBytes()[B

    move-result-object v1

    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams;->getShortForbiddenAddress()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2161
    invoke-virtual {p0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->isTimeScheduledTwrSession()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2162
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/UwbAddress;

    .line 2163
    .restart local v2    # "destAddress":Landroid/uwb/UwbAddress;
    invoke-virtual {v2}, Landroid/uwb/UwbAddress;->toBytes()[B

    move-result-object v4

    .line 2164
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams;->getShortForbiddenAddress()[B

    move-result-object v5

    .line 2163
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2165
    .end local v2    # "destAddress":Landroid/uwb/UwbAddress;
    goto :goto_6

    .line 2168
    :cond_8
    :goto_7
    return-void
.end method

.method private checkDlTdoaParameters()V
    .locals 2

    .line 2270
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceRole:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2271
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMultiNodeMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 2272
    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRframeConfig:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2271
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2275
    :cond_1
    return-void
.end method

.method private checkInterleavingRatio()V
    .locals 4

    .line 2200
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaResultRequest:I

    const/16 v1, 0xf0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    .line 2201
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnRange:I

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2202
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaAzimuth:I

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2203
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaElevation:I

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_2

    .line 2206
    :cond_3
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnRange:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaAzimuth:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaElevation:I

    if-lez v0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2210
    :goto_2
    return-void
.end method

.method private checkRangeDataNtfConfig()V
    .locals 14

    .line 2213
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide v3, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    const-wide v7, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const/16 v9, 0x4e20

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_6

    .line 2214
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    if-nez v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2216
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    if-ne v0, v9, :cond_1

    move v0, v10

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2218
    iget-wide v12, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    cmpl-double v0, v12, v7

    if-nez v0, :cond_2

    move v0, v10

    goto :goto_2

    :cond_2
    move v0, v11

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2220
    iget-wide v7, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    cmpl-double v0, v7, v5

    if-nez v0, :cond_3

    move v0, v10

    goto :goto_3

    :cond_3
    move v0, v11

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2222
    iget-wide v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationLower:D

    cmpl-double v0, v5, v3

    if-nez v0, :cond_4

    move v0, v10

    goto :goto_4

    :cond_4
    move v0, v11

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2224
    iget-wide v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    cmpl-double v0, v3, v1

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    move v10, v11

    :goto_5
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto/16 :goto_12

    .line 2226
    :cond_6
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x2

    if-eq v0, v12, :cond_11

    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x5

    if-ne v0, v12, :cond_7

    goto/16 :goto_b

    .line 2239
    :cond_7
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x3

    if-eq v0, v12, :cond_c

    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x6

    if-ne v0, v12, :cond_8

    goto :goto_7

    .line 2253
    :cond_8
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x4

    if-eq v0, v12, :cond_9

    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x7

    if-ne v0, v12, :cond_18

    .line 2256
    :cond_9
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    if-ne v0, v9, :cond_b

    iget-wide v12, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    cmpl-double v0, v12, v7

    if-nez v0, :cond_b

    iget-wide v7, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    cmpl-double v0, v7, v5

    if-nez v0, :cond_b

    iget-wide v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationLower:D

    cmpl-double v0, v5, v3

    if-nez v0, :cond_b

    iget-wide v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    move v10, v11

    :cond_b
    :goto_6
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto/16 :goto_12

    .line 2241
    :cond_c
    :goto_7
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    if-nez v0, :cond_d

    move v0, v10

    goto :goto_8

    :cond_d
    move v0, v11

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2243
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    if-ne v0, v9, :cond_e

    move v0, v10

    goto :goto_9

    :cond_e
    move v0, v11

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2245
    iget-wide v12, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    cmpl-double v0, v12, v7

    if-nez v0, :cond_10

    iget-wide v7, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    cmpl-double v0, v7, v5

    if-nez v0, :cond_10

    iget-wide v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationLower:D

    cmpl-double v0, v5, v3

    if-nez v0, :cond_10

    iget-wide v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_f

    goto :goto_a

    :cond_f
    move v10, v11

    :cond_10
    :goto_a
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_12

    .line 2228
    :cond_11
    :goto_b
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    if-nez v0, :cond_13

    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    if-eq v0, v9, :cond_12

    goto :goto_c

    :cond_12
    move v0, v11

    goto :goto_d

    :cond_13
    :goto_c
    move v0, v10

    :goto_d
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2231
    iget-wide v12, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    cmpl-double v0, v12, v7

    if-nez v0, :cond_14

    move v0, v10

    goto :goto_e

    :cond_14
    move v0, v11

    :goto_e
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2233
    iget-wide v7, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    cmpl-double v0, v7, v5

    if-nez v0, :cond_15

    move v0, v10

    goto :goto_f

    :cond_15
    move v0, v11

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2235
    iget-wide v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationLower:D

    cmpl-double v0, v5, v3

    if-nez v0, :cond_16

    move v0, v10

    goto :goto_10

    :cond_16
    move v0, v11

    :goto_10
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2237
    iget-wide v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    cmpl-double v0, v3, v1

    if-nez v0, :cond_17

    goto :goto_11

    :cond_17
    move v10, v11

    :goto_11
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2268
    :cond_18
    :goto_12
    return-void
.end method

.method private checkStsConfig()V
    .locals 7

    .line 2171
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 2173
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mVendorId:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mVendorId:[B

    array-length v0, v0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2174
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStaticStsIV:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStaticStsIV:[B

    array-length v0, v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2177
    :cond_2
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    const/4 v4, 0x4

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    if-ne v0, v4, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceType:Lcom/google/uwb/support/base/RequiredParam;

    .line 2179
    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    .line 2182
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->isSet()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_2

    .line 2184
    :cond_4
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 2187
    :goto_2
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    const/4 v1, 0x3

    const/16 v5, 0x20

    const/16 v6, 0x10

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    if-eqz v0, :cond_7

    .line 2188
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    array-length v0, v0

    if-eq v0, v6, :cond_6

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    array-length v0, v0

    if-ne v0, v5, :cond_5

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v2

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2191
    :cond_7
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    if-ne v0, v4, :cond_c

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceType:Lcom/google/uwb/support/base/RequiredParam;

    .line 2192
    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubsessionKey:[B

    if-eqz v0, :cond_c

    .line 2193
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    array-length v0, v0

    if-eq v0, v6, :cond_8

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    array-length v0, v0

    if-ne v0, v5, :cond_9

    :cond_8
    move v0, v2

    goto :goto_5

    :cond_9
    move v0, v3

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2195
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubsessionKey:[B

    array-length v0, v0

    if-eq v0, v6, :cond_b

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubsessionKey:[B

    array-length v0, v0

    if-ne v0, v5, :cond_a

    goto :goto_6

    :cond_a
    move v2, v3

    :cond_b
    :goto_6
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2197
    :cond_c
    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/fira/FiraOpenSessionParams;
    .locals 98

    .line 2315
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->checkAddress()V

    .line 2316
    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->checkStsConfig()V

    .line 2317
    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->checkInterleavingRatio()V

    .line 2318
    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->checkRangeDataNtfConfig()V

    .line 2319
    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->checkDlTdoaParameters()V

    .line 2320
    new-instance v1, Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-object v2, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    .line 2321
    invoke-virtual {v2}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/uwb/support/fira/FiraProtocolVersion;

    iget-object v3, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 2322
    invoke-virtual {v3}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionType:I

    iget-object v5, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceType:Lcom/google/uwb/support/base/RequiredParam;

    .line 2324
    invoke-virtual {v5}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceRole:Lcom/google/uwb/support/base/RequiredParam;

    .line 2325
    invoke-virtual {v6}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingRoundUsage:I

    iget-object v8, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMultiNodeMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 2327
    invoke-virtual {v8}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    iget-object v10, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    iget-wide v11, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInitiationTime:J

    iget-wide v13, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAbsoluteInitiationTime:J

    iget v15, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotDurationRstu:I

    move-object/from16 v16, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotsPerRangingRound:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingIntervalMs:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBlockStrideLength:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHoppingMode:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxRangingRoundRetries:I

    move/from16 v21, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionPriority:I

    move/from16 v22, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    move/from16 v23, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingResultReportMessage:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasControlMessage:Z

    move/from16 v25, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingControlPhase:Z

    move/from16 v26, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportType:I

    move/from16 v27, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportPhase:I

    move/from16 v28, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInBandTerminationAttemptCount:I

    move/from16 v29, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mChannelNumber:I

    move/from16 v30, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleCodeIndex:I

    move/from16 v31, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRframeConfig:I

    move/from16 v32, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPrfMode:I

    move/from16 v33, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mCapSize:[B

    move-object/from16 v34, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mScheduledMode:I

    move/from16 v35, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleDuration:I

    move/from16 v36, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSfdId:I

    move/from16 v37, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsSegmentCount:I

    move/from16 v38, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsLength:I

    move/from16 v39, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    move-object/from16 v40, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubsessionKey:[B

    move-object/from16 v41, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPsduDataRate:I

    move/from16 v42, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBprfPhrDataRate:I

    move/from16 v43, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFcsType:I

    move/from16 v44, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsTxAdaptivePayloadPowerEnabled:Z

    move/from16 v45, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    move/from16 v46, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 2363
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v47, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mVendorId:[B

    move-object/from16 v48, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStaticStsIV:[B

    move-object/from16 v49, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsRssiReportingEnabled:Z

    move/from16 v50, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsDiagnosticsEnabled:Z

    move/from16 v51, v1

    iget-byte v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDiagramsFrameReportsFieldsFlags:B

    move/from16 v52, v1

    iget-byte v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAntennaMode:B

    move/from16 v53, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsKeyRotationEnabled:Z

    move/from16 v54, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mKeyRotationRate:I

    move/from16 v55, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaResultRequest:I

    move/from16 v56, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    move/from16 v57, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    move/from16 v58, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    move/from16 v60, v1

    move-object/from16 v59, v2

    iget-wide v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    move-wide/from16 v61, v1

    iget-wide v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    move-wide/from16 v63, v1

    iget-wide v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationLower:D

    move-wide/from16 v65, v1

    iget-wide v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    move-wide/from16 v67, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasTimeOfFlightReport:Z

    iget-boolean v2, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalAzimuthReport:Z

    move/from16 v69, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalElevationReport:Z

    move/from16 v70, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalFigureOfMeritReport:Z

    move/from16 v71, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaType:I

    move/from16 v72, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnRange:I

    move/from16 v73, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaAzimuth:I

    move/from16 v74, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaElevation:I

    move/from16 v76, v1

    move/from16 v75, v2

    iget-wide v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingErrorStreakTimeoutMs:J

    .line 2388
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mLinkLayerMode:I

    move-object/from16 v77, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDataRepetitionCount:I

    move/from16 v78, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingTimeStruct:I

    move/from16 v79, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMinFramesPerRr:I

    move/from16 v80, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMtuSize:I

    move/from16 v81, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInterFrameInterval:I

    move/from16 v82, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDlTdoaBlockStriding:I

    move/from16 v83, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxIntervalMs:I

    move/from16 v84, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaRandomWindowMs:I

    move/from16 v85, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceIdType:I

    move/from16 v86, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceId:[B

    move-object/from16 v87, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxTimestampType:I

    move/from16 v88, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFilterType:I

    move/from16 v89, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxNumberOfMeasurements:I

    move/from16 v90, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionDataTransferStatusNtfConfig:Z

    move/from16 v91, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mReferenceTimeBase:I

    move/from16 v92, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mReferenceSessionHandle:I

    move/from16 v93, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionOffsetInMicroSeconds:I

    move/from16 v94, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mApplicationDataEndpoint:I

    const/16 v95, 0x0

    move/from16 v96, v94

    move/from16 v94, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v28

    move/from16 v28, v29

    move/from16 v29, v30

    move/from16 v30, v31

    move/from16 v31, v32

    move/from16 v32, v33

    move-object/from16 v33, v34

    move/from16 v34, v35

    move/from16 v35, v36

    move/from16 v36, v37

    move/from16 v37, v38

    move/from16 v38, v39

    move-object/from16 v39, v40

    move-object/from16 v40, v41

    move/from16 v41, v42

    move/from16 v42, v43

    move/from16 v43, v44

    move/from16 v44, v45

    move/from16 v45, v46

    move/from16 v46, v47

    move-object/from16 v47, v48

    move-object/from16 v48, v49

    move/from16 v49, v50

    move/from16 v50, v51

    move/from16 v51, v52

    move/from16 v52, v53

    move/from16 v53, v54

    move/from16 v54, v55

    move/from16 v55, v56

    move/from16 v56, v57

    move/from16 v57, v58

    move/from16 v58, v60

    move/from16 v97, v76

    move/from16 v76, v2

    move-object/from16 v2, v59

    move-wide/from16 v59, v61

    move-wide/from16 v61, v63

    move-wide/from16 v63, v65

    move-wide/from16 v65, v67

    move/from16 v67, v69

    move/from16 v69, v70

    move/from16 v70, v71

    move/from16 v71, v72

    move/from16 v72, v73

    move/from16 v73, v74

    move/from16 v68, v75

    move/from16 v74, v97

    move-object/from16 v75, v77

    move/from16 v77, v78

    move/from16 v78, v79

    move/from16 v79, v80

    move/from16 v80, v81

    move/from16 v81, v82

    move/from16 v82, v83

    move/from16 v83, v84

    move/from16 v84, v85

    move/from16 v85, v86

    move-object/from16 v86, v87

    move/from16 v87, v88

    move/from16 v88, v89

    move/from16 v89, v90

    move/from16 v90, v91

    move/from16 v91, v92

    move/from16 v92, v93

    move/from16 v93, v96

    invoke-direct/range {v1 .. v95}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;-><init>(Lcom/google/uwb/support/fira/FiraProtocolVersion;IIIIIILandroid/uwb/UwbAddress;Ljava/util/List;JJIIIIIIIIZZZIIIIIII[BIIIII[B[BIIIZII[B[BZZBBZIIIIIDDDDZZZZIIIILjava/lang/Long;IIIIIIIIII[BIIIZIIIILcom/google/uwb/support/fira/FiraOpenSessionParams$1;)V

    .line 2320
    move-object/from16 v16, v1

    return-object v16
.end method

.method public isTimeScheduledTwrSession()Z
    .locals 3

    .line 2288
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mScheduledMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2289
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingRoundUsage:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingRoundUsage:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingRoundUsage:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingRoundUsage:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 2293
    :cond_0
    return v1

    .line 2296
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setAbsoluteInitiationTime(J)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "absoluteInitiationTime"    # J

    .line 1651
    iput-wide p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAbsoluteInitiationTime:J

    .line 1652
    return-object p0
.end method

.method public setAntennaMode(B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "antennaMode"    # B

    .line 1895
    iput-byte p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAntennaMode:B

    .line 1896
    return-object p0
.end method

.method public setAoaResultRequest(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "aoaResultRequest"    # I

    .line 1911
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaResultRequest:I

    .line 1912
    return-object p0
.end method

.method public setAoaType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "aoaType"    # I

    .line 1994
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaType:I

    .line 1995
    return-object p0
.end method

.method public setApplicationDataEndpoint(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "applicationDataEndpoint"    # I

    .line 2125
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mApplicationDataEndpoint:I

    .line 2126
    return-object p0
.end method

.method public setBlockStrideLength(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "blockStrideLength"    # I

    .line 1671
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBlockStrideLength:I

    .line 1672
    return-object p0
.end method

.method public setBprfPhrDataRate(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "bprfPhrDataRate"    # I

    .line 1828
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBprfPhrDataRate:I

    .line 1829
    return-object p0
.end method

.method public setCapSize([B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "capSize"    # [B

    .line 1778
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mCapSize:[B

    .line 1779
    return-object p0
.end method

.method public setChannelNumber(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "channelNumber"    # I

    .line 1757
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mChannelNumber:I

    .line 1758
    return-object p0
.end method

.method public setDataRepetitionCount(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "dataRepetitionCount"    # I

    .line 2010
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDataRepetitionCount:I

    .line 2011
    return-object p0
.end method

.method public setDestAddressList(Ljava/util/List;)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/uwb/UwbAddress;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;"
        }
    .end annotation

    .line 1624
    .local p1, "destAddressList":Ljava/util/List;, "Ljava/util/List<Landroid/uwb/UwbAddress;>;"
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    .line 1625
    return-object p0
.end method

.method public setDeviceAddress(Landroid/uwb/UwbAddress;)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "deviceAddress"    # Landroid/uwb/UwbAddress;

    .line 1619
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    .line 1620
    return-object p0
.end method

.method public setDeviceRole(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 2
    .param p1, "deviceRole"    # I

    .line 1603
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceRole:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1604
    return-object p0
.end method

.method public setDeviceType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 2
    .param p1, "deviceType"    # I

    .line 1598
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1599
    return-object p0
.end method

.method public setDiagramsFrameReportsFieldsFlags(B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "diagramsFrameReportsFieldsFlags"    # B

    .line 1889
    iput-byte p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDiagramsFrameReportsFieldsFlags:B

    .line 1890
    return-object p0
.end method

.method public setDlTdoaBlockStriding(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "dlTdoaBlockStriding"    # I

    .line 2036
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDlTdoaBlockStriding:I

    .line 2037
    return-object p0
.end method

.method public setFcsType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "fcsType"    # I

    .line 1833
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFcsType:I

    .line 1834
    return-object p0
.end method

.method public setFilterType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "filterType"    # I

    .line 2279
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFilterType:I

    .line 2280
    return-object p0
.end method

.method public setHasAngleOfArrivalAzimuthReport(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "hasAngleOfArrivalAzimuthReport"    # Z

    .line 1977
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalAzimuthReport:Z

    .line 1978
    return-object p0
.end method

.method public setHasAngleOfArrivalElevationReport(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "hasAngleOfArrivalElevationReport"    # Z

    .line 1983
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalElevationReport:Z

    .line 1984
    return-object p0
.end method

.method public setHasAngleOfArrivalFigureOfMeritReport(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "hasAngleOfArrivalFigureOfMeritReport"    # Z

    .line 1989
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalFigureOfMeritReport:Z

    .line 1990
    return-object p0
.end method

.method public setHasControlMessage(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "hasControlMessage"    # Z

    .line 1728
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasControlMessage:Z

    .line 1729
    return-object p0
.end method

.method public setHasRangingControlPhase(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "hasRangingControlPhase"    # Z

    .line 1734
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingControlPhase:Z

    .line 1735
    return-object p0
.end method

.method public setHasRangingResultReportMessage(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "hasRangingResultReportMessage"    # Z

    .line 1723
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingResultReportMessage:Z

    .line 1724
    return-object p0
.end method

.method public setHasTimeOfFlightReport(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "hasTimeOfFlightReport"    # Z

    .line 1971
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasTimeOfFlightReport:Z

    .line 1972
    return-object p0
.end method

.method public setHoppingMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "hoppingMode"    # I

    .line 1676
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHoppingMode:I

    .line 1677
    return-object p0
.end method

.method public setInBandTerminationAttemptCount(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "inBandTerminationAttemptCount"    # I

    .line 1752
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInBandTerminationAttemptCount:I

    .line 1753
    return-object p0
.end method

.method public setInitiationTime(J)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "initiationTime"    # J

    .line 1639
    iput-wide p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInitiationTime:J

    .line 1640
    return-object p0
.end method

.method public setInterFrameInterval(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "interFrameInterval"    # I

    .line 2031
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInterFrameInterval:I

    .line 2032
    return-object p0
.end method

.method public setIsDiagnosticsEnabled(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "isDiagnosticsEnabled"    # Z

    .line 1877
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsDiagnosticsEnabled:Z

    .line 1878
    return-object p0
.end method

.method public setIsKeyRotationEnabled(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "isKeyRotationEnabled"    # Z

    .line 1900
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsKeyRotationEnabled:Z

    .line 1901
    return-object p0
.end method

.method public setIsRssiReportingEnabled(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "isRssiReportingEnabled"    # Z

    .line 1871
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsRssiReportingEnabled:Z

    .line 1872
    return-object p0
.end method

.method public setIsTxAdaptivePayloadPowerEnabled(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "isTxAdaptivePayloadPowerEnabled"    # Z

    .line 1839
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsTxAdaptivePayloadPowerEnabled:Z

    .line 1840
    return-object p0
.end method

.method public setKeyRotationRate(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "keyRotationRate"    # I

    .line 1905
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mKeyRotationRate:I

    .line 1906
    return-object p0
.end method

.method public setLinkLayerMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "linkLayerMode"    # I

    .line 2005
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mLinkLayerMode:I

    .line 2006
    return-object p0
.end method

.method public setMacAddressMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "macAddressMode"    # I

    .line 1717
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    .line 1718
    return-object p0
.end method

.method public setMaxNumberOfMeasurements(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "maxNumberOfMeasurements"    # I

    .line 2094
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxNumberOfMeasurements:I

    .line 2095
    return-object p0
.end method

.method public setMaxRangingRoundRetries(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "maxRangingRoundRetries"    # I

    .line 1682
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxRangingRoundRetries:I

    .line 1683
    return-object p0
.end method

.method public setMeasurementFocusRatio(III)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "numOfMsrmtFocusOnRange"    # I
    .param p2, "numOfMsrmtFocusOnAoaAzimuth"    # I
    .param p3, "numOfMsrmtFocusOnAoaElevation"    # I

    .line 2086
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnRange:I

    .line 2087
    iput p2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaAzimuth:I

    .line 2088
    iput p3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaElevation:I

    .line 2089
    return-object p0
.end method

.method public setMeasurementReportPhase(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "measurementReportPhase"    # I

    .line 1746
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportPhase:I

    .line 1747
    return-object p0
.end method

.method public setMeasurementReportType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "measurementReportType"    # I

    .line 1740
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportType:I

    .line 1741
    return-object p0
.end method

.method public setMinFramePerRr(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "minFramePerRr"    # I

    .line 2021
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMinFramesPerRr:I

    .line 2022
    return-object p0
.end method

.method public setMtuSize(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "mtuSize"    # I

    .line 2026
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMtuSize:I

    .line 2027
    return-object p0
.end method

.method public setMultiNodeMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 2
    .param p1, "multiNodeMode"    # I

    .line 1614
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMultiNodeMode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1615
    return-object p0
.end method

.method public setPreambleCodeIndex(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "preambleCodeIndex"    # I

    .line 1763
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleCodeIndex:I

    .line 1764
    return-object p0
.end method

.method public setPreambleDuration(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "preambleDuration"    # I

    .line 1789
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleDuration:I

    .line 1790
    return-object p0
.end method

.method public setPrfMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "prfMode"    # I

    .line 1773
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPrfMode:I

    .line 1774
    return-object p0
.end method

.method public setProtocolVersion(Lcom/google/uwb/support/fira/FiraProtocolVersion;)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 1
    .param p1, "version"    # Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 1578
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v0, p1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1579
    return-object p0
.end method

.method public setPsduDataRate(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "psduDataRate"    # I

    .line 1822
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPsduDataRate:I

    .line 1823
    return-object p0
.end method

.method public setRangeDataNtfAoaAzimuthLower(D)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfAoaAzimuthLower"    # D

    .line 1941
    iput-wide p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 1942
    return-object p0
.end method

.method public setRangeDataNtfAoaAzimuthUpper(D)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfAoaAzimuthUpper"    # D

    .line 1949
    iput-wide p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 1950
    return-object p0
.end method

.method public setRangeDataNtfAoaElevationLower(D)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfAoaElevationLower"    # D

    .line 1957
    iput-wide p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 1958
    return-object p0
.end method

.method public setRangeDataNtfAoaElevationUpper(D)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfAoaElevationUpper"    # D

    .line 1965
    iput-wide p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 1966
    return-object p0
.end method

.method public setRangeDataNtfConfig(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfConfig"    # I

    .line 1917
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    .line 1918
    return-object p0
.end method

.method public setRangeDataNtfProximityFar(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfProximityFar"    # I

    .line 1933
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    .line 1934
    return-object p0
.end method

.method public setRangeDataNtfProximityNear(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfProximityNear"    # I

    .line 1925
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    .line 1926
    return-object p0
.end method

.method public setRangingErrorStreakTimeoutMs(J)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "rangingErrorStreakTimeoutMs"    # J

    .line 2000
    iput-wide p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingErrorStreakTimeoutMs:J

    .line 2001
    return-object p0
.end method

.method public setRangingIntervalMs(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "rangingIntervalMs"    # I

    .line 1666
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingIntervalMs:I

    .line 1667
    return-object p0
.end method

.method public setRangingRoundUsage(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "rangingRoundUsage"    # I

    .line 1609
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingRoundUsage:I

    .line 1610
    return-object p0
.end method

.method public setRangingTimeStruct(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "rangingTimeStruct"    # I

    .line 2016
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingTimeStruct:I

    .line 2017
    return-object p0
.end method

.method public setRframeConfig(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "rframeConfig"    # I

    .line 1768
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRframeConfig:I

    .line 1769
    return-object p0
.end method

.method public setScheduledMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "scheduledMode"    # I

    .line 1783
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mScheduledMode:I

    .line 1784
    return-object p0
.end method

.method public setSessionDataTransferStatusNtfConfig(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "sessionDataTransferStatusNtfConfig"    # Z

    .line 2100
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionDataTransferStatusNtfConfig:Z

    .line 2101
    return-object p0
.end method

.method public setSessionId(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 2
    .param p1, "sessionId"    # I

    .line 1583
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1584
    return-object p0
.end method

.method public setSessionId(J)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 1
    .param p1, "sessionId"    # J

    .line 1589
    invoke-static {p1, p2}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->asUnsigned(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSessionId(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSessionKey([B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "sessionKey"    # [B

    .line 1811
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    .line 1812
    return-object p0
.end method

.method public setSessionPriority(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "sessionPriority"    # I

    .line 1712
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionPriority:I

    .line 1713
    return-object p0
.end method

.method public setSessionTimeBase(III)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "referenceTimeBase"    # I
    .param p2, "referenceSessionHandle"    # I
    .param p3, "sessionOffsetInMicroSecond"    # I

    .line 2107
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mReferenceTimeBase:I

    .line 2108
    iput p2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mReferenceSessionHandle:I

    .line 2109
    iput p3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionOffsetInMicroSeconds:I

    .line 2110
    return-object p0
.end method

.method public setSessionTimeBase(IJI)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 1
    .param p1, "referenceTimeBase"    # I
    .param p2, "referenceSessionHandle"    # J
    .param p4, "sessionOffsetInMicroSecond"    # I

    .line 2119
    invoke-static {p2, p3}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->asUnsigned(J)I

    move-result v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSessionTimeBase(III)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSessionType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "sessionType"    # I

    .line 1593
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionType:I

    .line 1594
    return-object p0
.end method

.method public setSfdId(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "sfdId"    # I

    .line 1794
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSfdId:I

    .line 1795
    return-object p0
.end method

.method public setSlotDurationRstu(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "slotDurationRstu"    # I

    .line 1656
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotDurationRstu:I

    .line 1657
    return-object p0
.end method

.method public setSlotsPerRangingRound(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "slotsPerRangingRound"    # I

    .line 1661
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotsPerRangingRound:I

    .line 1662
    return-object p0
.end method

.method public setStaticStsIV([B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "staticStsIV"    # [B

    .line 1864
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStaticStsIV:[B

    .line 1865
    return-object p0
.end method

.method public setStsConfig(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "stsConfig"    # I

    .line 1844
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    .line 1845
    return-object p0
.end method

.method public setStsLength(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "stsLength"    # I

    .line 1805
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsLength:I

    .line 1806
    return-object p0
.end method

.method public setStsSegmentCount(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "stsSegmentCount"    # I

    .line 1800
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsSegmentCount:I

    .line 1801
    return-object p0
.end method

.method public setSubSessionId(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 2
    .param p1, "subSessionId"    # I

    .line 1849
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 1850
    return-object p0
.end method

.method public setSubSessionId(J)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 1
    .param p1, "subSessionId"    # J

    .line 1855
    invoke-static {p1, p2}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->asUnsigned(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSubSessionId(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSubsessionKey([B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "subsessionKey"    # [B

    .line 1817
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubsessionKey:[B

    .line 1818
    return-object p0
.end method

.method public setUlTdoaDeviceId([B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "ulTdoaDeviceId"    # [B

    .line 2060
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceId:[B

    .line 2061
    return-object p0
.end method

.method public setUlTdoaDeviceIdType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "ulTdoaDeviceIdType"    # I

    .line 2054
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceIdType:I

    .line 2055
    return-object p0
.end method

.method public setUlTdoaRandomWindowMs(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "ulTdoaRandomWindowMs"    # I

    .line 2048
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaRandomWindowMs:I

    .line 2049
    return-object p0
.end method

.method public setUlTdoaTxIntervalMs(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "ulTdoaTxIntervalMs"    # I

    .line 2042
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxIntervalMs:I

    .line 2043
    return-object p0
.end method

.method public setUlTdoaTxTimestampType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "ulTdoatxTimestampType"    # I

    .line 2066
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxTimestampType:I

    .line 2067
    return-object p0
.end method

.method public setVendorId([B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 0
    .param p1, "vendorId"    # [B

    .line 1859
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mVendorId:[B

    .line 1860
    return-object p0
.end method
