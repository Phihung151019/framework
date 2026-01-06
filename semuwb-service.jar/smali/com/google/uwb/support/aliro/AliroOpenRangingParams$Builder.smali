.class public final Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
.super Ljava/lang/Object;
.source "AliroOpenRangingParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/aliro/AliroOpenRangingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAbsoluteInitiationTimeUs:J

.field private mChannel:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHopModeKey:I

.field private mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInitiationTimeMs:J

.field private mMacModeOffset:I

.field private mMacModeRound:I

.field private mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Lcom/google/uwb/support/aliro/AliroProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;",
            ">;"
        }
    .end annotation
.end field

.field private mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRangeDataNtfAoaAzimuthLower:D

.field private mRangeDataNtfAoaAzimuthUpper:D

.field private mRangeDataNtfAoaElevationLower:D

.field private mRangeDataNtfAoaElevationUpper:D

.field private mRangeDataNtfConfig:I

.field private mRangeDataNtfProximityFar:I

.field private mRangeDataNtfProximityNear:I

.field private mSessionId:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionKey:[B

.field private mSessionType:I

.field private mStsConfig:I

.field private mStsIndex:I

.field private mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    .line 429
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;

    .line 430
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;

    .line 431
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 432
    const/16 v0, 0xa2

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionType:I

    .line 433
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    .line 434
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mChannel:Lcom/google/uwb/support/base/RequiredParam;

    .line 435
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;

    .line 436
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;

    .line 437
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;

    .line 438
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    .line 440
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 443
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsIndex:I

    .line 447
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mInitiationTimeMs:J

    .line 448
    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    .line 450
    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHopModeKey:I

    .line 452
    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    .line 455
    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    .line 458
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    .line 461
    const-wide v1, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 464
    const-wide v1, 0x400921fb54442d18L    # Math.PI

    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 467
    const-wide v1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 470
    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 472
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsConfig:I

    .line 476
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionKey:[B

    .line 477
    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeRound:I

    .line 478
    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeOffset:I

    .line 481
    return-void
.end method

.method public constructor <init>(Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    .line 429
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;

    .line 430
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;

    .line 431
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 432
    const/16 v0, 0xa2

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionType:I

    .line 433
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    .line 434
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mChannel:Lcom/google/uwb/support/base/RequiredParam;

    .line 435
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;

    .line 436
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;

    .line 437
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;

    .line 438
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    .line 440
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 443
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsIndex:I

    .line 447
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mInitiationTimeMs:J

    .line 448
    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    .line 450
    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHopModeKey:I

    .line 452
    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    .line 455
    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    .line 458
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    .line 461
    const-wide v1, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 464
    const-wide v1, 0x400921fb54442d18L    # Math.PI

    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 467
    const-wide v1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 470
    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 472
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsConfig:I

    .line 476
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionKey:[B

    .line 477
    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeRound:I

    .line 478
    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeOffset:I

    .line 484
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/uwb/support/aliro/AliroProtocolVersion;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 486
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 487
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 488
    iget v0, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionType:I

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionType:I

    .line 489
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mChannel:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mChannel:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 492
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 493
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 494
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 495
    iget v0, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHopModeKey:I

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHopModeKey:I

    .line 496
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 497
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 498
    iget v0, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsIndex:I

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsIndex:I

    .line 499
    iget-wide v0, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mInitiationTimeMs:J

    iput-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mInitiationTimeMs:J

    .line 500
    iget-wide v0, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    iput-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    .line 501
    iget v0, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    .line 502
    iget v0, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    .line 503
    iget v0, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    .line 504
    iget-wide v0, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    iput-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 505
    iget-wide v0, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    iput-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 506
    iget-wide v0, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    iput-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 507
    iget-wide v0, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    iput-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 508
    iget v0, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsConfig:I

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsConfig:I

    .line 509
    iget-object v0, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionKey:[B

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionKey:[B

    .line 510
    iget v0, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeRound:I

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeRound:I

    .line 511
    iget v0, p1, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeOffset:I

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeOffset:I

    .line 512
    return-void
.end method

.method public constructor <init>(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)V
    .locals 3
    .param p1, "params"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    .line 429
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;

    .line 430
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;

    .line 431
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 432
    const/16 v0, 0xa2

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionType:I

    .line 433
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    .line 434
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mChannel:Lcom/google/uwb/support/base/RequiredParam;

    .line 435
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;

    .line 436
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;

    .line 437
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;

    .line 438
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    .line 440
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 443
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsIndex:I

    .line 447
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mInitiationTimeMs:J

    .line 448
    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    .line 450
    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHopModeKey:I

    .line 452
    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    .line 455
    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    .line 458
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    .line 461
    const-wide v1, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 464
    const-wide v1, 0x400921fb54442d18L    # Math.PI

    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 467
    const-wide v1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 470
    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    iput-wide v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 472
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsConfig:I

    .line 476
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionKey:[B

    .line 477
    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeRound:I

    .line 478
    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeOffset:I

    .line 515
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$000(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)Lcom/google/uwb/support/aliro/AliroProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 516
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$100(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 517
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$200(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 518
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$300(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 519
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$400(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionType:I

    .line 520
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$500(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 521
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mChannel:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$600(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 522
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$700(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 523
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$800(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 524
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$900(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 525
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$1000(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 526
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$1100(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsIndex:I

    .line 527
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$1200(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHopModeKey:I

    .line 528
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$1300(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 529
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$1400(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 530
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$1500(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    .line 531
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$1600(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    .line 532
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$1700(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    .line 533
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$1800(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 534
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$1900(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 535
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$2000(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 536
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$2100(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 537
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$2200(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsConfig:I

    .line 538
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$2300(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionKey:[B

    .line 539
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$2400(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeRound:I

    .line 540
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->access$2500(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeOffset:I

    .line 541
    return-void
.end method

.method private checkRangeDataNtfConfig()V
    .locals 14

    .line 710
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide v3, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    const-wide v7, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const/16 v9, 0x4e20

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_6

    .line 711
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    if-nez v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 713
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    if-ne v0, v9, :cond_1

    move v0, v10

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 715
    iget-wide v12, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    cmpl-double v0, v12, v7

    if-nez v0, :cond_2

    move v0, v10

    goto :goto_2

    :cond_2
    move v0, v11

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 717
    iget-wide v7, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    cmpl-double v0, v7, v5

    if-nez v0, :cond_3

    move v0, v10

    goto :goto_3

    :cond_3
    move v0, v11

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 719
    iget-wide v5, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    cmpl-double v0, v5, v3

    if-nez v0, :cond_4

    move v0, v10

    goto :goto_4

    :cond_4
    move v0, v11

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 721
    iget-wide v3, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    cmpl-double v0, v3, v1

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    move v10, v11

    :goto_5
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto/16 :goto_12

    .line 723
    :cond_6
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x2

    if-eq v0, v12, :cond_11

    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x5

    if-ne v0, v12, :cond_7

    goto/16 :goto_b

    .line 736
    :cond_7
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x3

    if-eq v0, v12, :cond_c

    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x6

    if-ne v0, v12, :cond_8

    goto :goto_7

    .line 750
    :cond_8
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x4

    if-eq v0, v12, :cond_9

    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x7

    if-ne v0, v12, :cond_18

    .line 753
    :cond_9
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    if-ne v0, v9, :cond_b

    iget-wide v12, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    cmpl-double v0, v12, v7

    if-nez v0, :cond_b

    iget-wide v7, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    cmpl-double v0, v7, v5

    if-nez v0, :cond_b

    iget-wide v5, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    cmpl-double v0, v5, v3

    if-nez v0, :cond_b

    iget-wide v3, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    move v10, v11

    :cond_b
    :goto_6
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto/16 :goto_12

    .line 738
    :cond_c
    :goto_7
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    if-nez v0, :cond_d

    move v0, v10

    goto :goto_8

    :cond_d
    move v0, v11

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 740
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    if-ne v0, v9, :cond_e

    move v0, v10

    goto :goto_9

    :cond_e
    move v0, v11

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 742
    iget-wide v12, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    cmpl-double v0, v12, v7

    if-nez v0, :cond_10

    iget-wide v7, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    cmpl-double v0, v7, v5

    if-nez v0, :cond_10

    iget-wide v5, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    cmpl-double v0, v5, v3

    if-nez v0, :cond_10

    iget-wide v3, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_f

    goto :goto_a

    :cond_f
    move v10, v11

    :cond_10
    :goto_a
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_12

    .line 725
    :cond_11
    :goto_b
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    if-nez v0, :cond_13

    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

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

    .line 728
    iget-wide v12, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    cmpl-double v0, v12, v7

    if-nez v0, :cond_14

    move v0, v10

    goto :goto_e

    :cond_14
    move v0, v11

    :goto_e
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 730
    iget-wide v7, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    cmpl-double v0, v7, v5

    if-nez v0, :cond_15

    move v0, v10

    goto :goto_f

    :cond_15
    move v0, v11

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 732
    iget-wide v5, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    cmpl-double v0, v5, v3

    if-nez v0, :cond_16

    move v0, v10

    goto :goto_10

    :cond_16
    move v0, v11

    :goto_10
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 734
    iget-wide v3, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    cmpl-double v0, v3, v1

    if-nez v0, :cond_17

    goto :goto_11

    :cond_17
    move v10, v11

    :goto_11
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 765
    :cond_18
    :goto_12
    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/aliro/AliroOpenRangingParams;
    .locals 38

    .line 768
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->checkRangeDataNtfConfig()V

    .line 769
    iget v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsConfig:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionKey:[B

    if-nez v1, :cond_1

    :cond_0
    iget v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsConfig:I

    if-ne v1, v4, :cond_2

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionKey:[B

    if-nez v1, :cond_2

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 771
    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionKey:[B

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionKey:[B

    array-length v1, v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_4

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionKey:[B

    array-length v1, v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v4

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 773
    iget v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeRound:I

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeRound:I

    if-ne v1, v4, :cond_5

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    :goto_3
    move v1, v4

    :goto_4
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 774
    iget v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeOffset:I

    if-nez v1, :cond_7

    move v1, v4

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    iget v2, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeRound:I

    if-ne v2, v4, :cond_8

    move v3, v4

    :cond_8
    xor-int/2addr v1, v3

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 775
    new-instance v2, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    .line 776
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/uwb/support/aliro/AliroProtocolVersion;

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;

    .line 777
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;

    .line 778
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 779
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionType:I

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    .line 781
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mChannel:Lcom/google/uwb/support/base/RequiredParam;

    .line 782
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;

    .line 783
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;

    .line 784
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;

    .line 785
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    .line 786
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget v14, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHopModeKey:I

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 788
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;

    .line 789
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsIndex:I

    move/from16 v18, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mInitiationTimeMs:J

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    move-wide/from16 v21, v1

    iget v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    iget v2, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    move/from16 v23, v1

    iget v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    move/from16 v25, v1

    move/from16 v24, v2

    iget-wide v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    move-wide/from16 v26, v1

    iget-wide v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    move-wide/from16 v28, v1

    iget-wide v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    move-wide/from16 v30, v1

    iget-wide v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    move-wide/from16 v32, v1

    iget v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsConfig:I

    iget-object v2, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionKey:[B

    move/from16 v34, v1

    iget v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeRound:I

    move/from16 v35, v1

    iget v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeOffset:I

    const/16 v37, 0x0

    move/from16 v36, v34

    move-object/from16 v34, v2

    move-object/from16 v2, v17

    move/from16 v17, v18

    move-wide/from16 v18, v19

    move-wide/from16 v20, v21

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move-wide/from16 v25, v26

    move-wide/from16 v27, v28

    move-wide/from16 v29, v30

    move-wide/from16 v31, v32

    move/from16 v33, v36

    move/from16 v36, v1

    invoke-direct/range {v2 .. v37}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;-><init>(Lcom/google/uwb/support/aliro/AliroProtocolVersion;ILcom/google/uwb/support/aliro/AliroPulseShapeCombo;IIIIIIIIIIIIJJIIIDDDDI[BIILcom/google/uwb/support/aliro/AliroOpenRangingParams$1;)V

    .line 775
    move-object/from16 v17, v2

    return-object v17
.end method

.method public setAbsoluteInitiationTimeUs(J)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 0
    .param p1, "absoluteInitiationTimeUs"    # J

    .line 627
    iput-wide p1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    .line 628
    return-object p0
.end method

.method public setChannel(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 2
    .param p1, "channel"    # I

    .line 569
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mChannel:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 570
    return-object p0
.end method

.method public setHopModeKey(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 0
    .param p1, "hopModeKey"    # I

    .line 595
    iput p1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHopModeKey:I

    .line 596
    return-object p0
.end method

.method public setHoppingConfigMode(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 2
    .param p1, "hoppingConfigMode"    # I

    .line 600
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 601
    return-object p0
.end method

.method public setHoppingSequence(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 2
    .param p1, "hoppingSequence"    # I

    .line 605
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 606
    return-object p0
.end method

.method public setInitiationTimeMs(J)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 0
    .param p1, "initiationTimeMs"    # J

    .line 616
    iput-wide p1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mInitiationTimeMs:J

    .line 617
    return-object p0
.end method

.method public setMacModeOffset(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 0
    .param p1, "macModeOffset"    # I

    .line 705
    iput p1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeOffset:I

    .line 706
    return-object p0
.end method

.method public setMacModeRound(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 0
    .param p1, "macModeRound"    # I

    .line 699
    iput p1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mMacModeRound:I

    .line 700
    return-object p0
.end method

.method public setNumChapsPerSlot(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 2
    .param p1, "numChapsPerSlot"    # I

    .line 574
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 575
    return-object p0
.end method

.method public setNumResponderNodes(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 2
    .param p1, "numResponderNodes"    # I

    .line 579
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 580
    return-object p0
.end method

.method public setNumSlotsPerRound(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 2
    .param p1, "numSlotsPerRound"    # I

    .line 584
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 585
    return-object p0
.end method

.method public setProtocolVersion(Lcom/google/uwb/support/aliro/AliroProtocolVersion;)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 1
    .param p1, "version"    # Lcom/google/uwb/support/aliro/AliroProtocolVersion;

    .line 544
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v0, p1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 545
    return-object p0
.end method

.method public setPulseShapeCombo(Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 1
    .param p1, "pulseShapeCombo"    # Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    .line 554
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v0, p1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 555
    return-object p0
.end method

.method public setRanMultiplier(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 2
    .param p1, "ranMultiplier"    # I

    .line 564
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 565
    return-object p0
.end method

.method public setRangeDataNtfAoaAzimuthLower(D)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfAoaAzimuthLower"    # D

    .line 657
    iput-wide p1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 658
    return-object p0
.end method

.method public setRangeDataNtfAoaAzimuthUpper(D)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfAoaAzimuthUpper"    # D

    .line 665
    iput-wide p1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 666
    return-object p0
.end method

.method public setRangeDataNtfAoaElevationLower(D)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfAoaElevationLower"    # D

    .line 673
    iput-wide p1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 674
    return-object p0
.end method

.method public setRangeDataNtfAoaElevationUpper(D)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfAoaElevationUpper"    # D

    .line 681
    iput-wide p1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 682
    return-object p0
.end method

.method public setRangeDataNtfConfig(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfConfig"    # I

    .line 633
    iput p1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    .line 634
    return-object p0
.end method

.method public setRangeDataNtfProximityFar(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfProximityFar"    # I

    .line 649
    iput p1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    .line 650
    return-object p0
.end method

.method public setRangeDataNtfProximityNear(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfProximityNear"    # I

    .line 641
    iput p1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    .line 642
    return-object p0
.end method

.method public setSessionId(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 2
    .param p1, "sessionId"    # I

    .line 559
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 560
    return-object p0
.end method

.method public setSessionKey([B)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 0
    .param p1, "sessionKey"    # [B

    .line 693
    iput-object p1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSessionKey:[B

    .line 694
    return-object p0
.end method

.method public setStsConfig(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 0
    .param p1, "stsConfig"    # I

    .line 687
    iput p1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsConfig:I

    .line 688
    return-object p0
.end method

.method public setStsIndex(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 0
    .param p1, "stsIndex"    # I

    .line 610
    iput p1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mStsIndex:I

    .line 611
    return-object p0
.end method

.method public setSyncCodeIndex(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 2
    .param p1, "syncCodeIndex"    # I

    .line 589
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 590
    return-object p0
.end method

.method public setUwbConfig(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 2
    .param p1, "uwbConfig"    # I

    .line 549
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 550
    return-object p0
.end method
