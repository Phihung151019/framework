.class public final Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
.super Ljava/lang/Object;
.source "CccOpenRangingParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/ccc/CccOpenRangingParams;
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
            "Lcom/google/uwb/support/ccc/CccProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Lcom/google/uwb/support/ccc/CccPulseShapeCombo;",
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

.field private mSessionType:I

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

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    .line 367
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;

    .line 368
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;

    .line 369
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 370
    const/16 v0, 0xa0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSessionType:I

    .line 371
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    .line 372
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mChannel:Lcom/google/uwb/support/base/RequiredParam;

    .line 373
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;

    .line 374
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;

    .line 375
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;

    .line 376
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    .line 378
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 381
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mStsIndex:I

    .line 385
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mInitiationTimeMs:J

    .line 386
    iput-wide v1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    .line 388
    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHopModeKey:I

    .line 391
    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    .line 394
    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    .line 397
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    .line 400
    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 403
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 406
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 409
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 411
    return-void
.end method

.method public constructor <init>(Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    .line 367
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;

    .line 368
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;

    .line 369
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 370
    const/16 v0, 0xa0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSessionType:I

    .line 371
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    .line 372
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mChannel:Lcom/google/uwb/support/base/RequiredParam;

    .line 373
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;

    .line 374
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;

    .line 375
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;

    .line 376
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    .line 378
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 381
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mStsIndex:I

    .line 385
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mInitiationTimeMs:J

    .line 386
    iput-wide v1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    .line 388
    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHopModeKey:I

    .line 391
    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    .line 394
    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    .line 397
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    .line 400
    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 403
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 406
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 409
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 414
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/uwb/support/ccc/CccProtocolVersion;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/uwb/support/ccc/CccPulseShapeCombo;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 418
    iget v0, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSessionType:I

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSessionType:I

    .line 419
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 420
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mChannel:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mChannel:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 421
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 423
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 425
    iget v0, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHopModeKey:I

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHopModeKey:I

    .line 426
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 428
    iget v0, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mStsIndex:I

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mStsIndex:I

    .line 429
    iget-wide v0, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mInitiationTimeMs:J

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mInitiationTimeMs:J

    .line 430
    iget-wide v0, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    .line 431
    iget v0, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    .line 432
    iget v0, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    .line 433
    iget v0, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    .line 434
    iget-wide v0, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 435
    iget-wide v0, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 436
    iget-wide v0, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 437
    iget-wide v0, p1, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 438
    return-void
.end method

.method public constructor <init>(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)V
    .locals 3
    .param p1, "params"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    .line 367
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;

    .line 368
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;

    .line 369
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 370
    const/16 v0, 0xa0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSessionType:I

    .line 371
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    .line 372
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mChannel:Lcom/google/uwb/support/base/RequiredParam;

    .line 373
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;

    .line 374
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;

    .line 375
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;

    .line 376
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    .line 378
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 381
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mStsIndex:I

    .line 385
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mInitiationTimeMs:J

    .line 386
    iput-wide v1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    .line 388
    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHopModeKey:I

    .line 391
    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    .line 394
    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    .line 397
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    .line 400
    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 403
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 406
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 409
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 441
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$000(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)Lcom/google/uwb/support/ccc/CccProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$100(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$200(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)Lcom/google/uwb/support/ccc/CccPulseShapeCombo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 444
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$300(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 445
    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$400(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSessionType:I

    .line 446
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$500(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 447
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mChannel:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$600(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$700(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 449
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$800(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$900(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$1000(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 452
    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$1100(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mStsIndex:I

    .line 453
    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$1200(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHopModeKey:I

    .line 454
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$1300(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$1400(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 456
    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$1500(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    .line 457
    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$1600(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    .line 458
    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$1700(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    .line 459
    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$1800(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 460
    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$1900(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 461
    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$2000(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 462
    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->access$2100(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 463
    return-void
.end method

.method private checkRangeDataNtfConfig()V
    .locals 14

    .line 608
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide v3, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    const-wide v7, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const/16 v9, 0x4e20

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_6

    .line 609
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    if-nez v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 611
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    if-ne v0, v9, :cond_1

    move v0, v10

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 613
    iget-wide v12, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    cmpl-double v0, v12, v7

    if-nez v0, :cond_2

    move v0, v10

    goto :goto_2

    :cond_2
    move v0, v11

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 615
    iget-wide v7, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    cmpl-double v0, v7, v5

    if-nez v0, :cond_3

    move v0, v10

    goto :goto_3

    :cond_3
    move v0, v11

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 617
    iget-wide v5, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    cmpl-double v0, v5, v3

    if-nez v0, :cond_4

    move v0, v10

    goto :goto_4

    :cond_4
    move v0, v11

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 619
    iget-wide v3, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    cmpl-double v0, v3, v1

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    move v10, v11

    :goto_5
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto/16 :goto_12

    .line 621
    :cond_6
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x2

    if-eq v0, v12, :cond_11

    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x5

    if-ne v0, v12, :cond_7

    goto/16 :goto_b

    .line 634
    :cond_7
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x3

    if-eq v0, v12, :cond_c

    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x6

    if-ne v0, v12, :cond_8

    goto :goto_7

    .line 648
    :cond_8
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x4

    if-eq v0, v12, :cond_9

    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    const/4 v12, 0x7

    if-ne v0, v12, :cond_18

    .line 651
    :cond_9
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    if-ne v0, v9, :cond_b

    iget-wide v12, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    cmpl-double v0, v12, v7

    if-nez v0, :cond_b

    iget-wide v7, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    cmpl-double v0, v7, v5

    if-nez v0, :cond_b

    iget-wide v5, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    cmpl-double v0, v5, v3

    if-nez v0, :cond_b

    iget-wide v3, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    move v10, v11

    :cond_b
    :goto_6
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto/16 :goto_12

    .line 636
    :cond_c
    :goto_7
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    if-nez v0, :cond_d

    move v0, v10

    goto :goto_8

    :cond_d
    move v0, v11

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 638
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    if-ne v0, v9, :cond_e

    move v0, v10

    goto :goto_9

    :cond_e
    move v0, v11

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 640
    iget-wide v12, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    cmpl-double v0, v12, v7

    if-nez v0, :cond_10

    iget-wide v7, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    cmpl-double v0, v7, v5

    if-nez v0, :cond_10

    iget-wide v5, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    cmpl-double v0, v5, v3

    if-nez v0, :cond_10

    iget-wide v3, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_f

    goto :goto_a

    :cond_f
    move v10, v11

    :cond_10
    :goto_a
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_12

    .line 623
    :cond_11
    :goto_b
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    if-nez v0, :cond_13

    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

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

    .line 626
    iget-wide v12, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    cmpl-double v0, v12, v7

    if-nez v0, :cond_14

    move v0, v10

    goto :goto_e

    :cond_14
    move v0, v11

    :goto_e
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 628
    iget-wide v7, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    cmpl-double v0, v7, v5

    if-nez v0, :cond_15

    move v0, v10

    goto :goto_f

    :cond_15
    move v0, v11

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 630
    iget-wide v5, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    cmpl-double v0, v5, v3

    if-nez v0, :cond_16

    move v0, v10

    goto :goto_10

    :cond_16
    move v0, v11

    :goto_10
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 632
    iget-wide v3, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    cmpl-double v0, v3, v1

    if-nez v0, :cond_17

    goto :goto_11

    :cond_17
    move v10, v11

    :goto_11
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 663
    :cond_18
    :goto_12
    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/ccc/CccOpenRangingParams;
    .locals 35

    .line 666
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->checkRangeDataNtfConfig()V

    .line 667
    new-instance v1, Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    iget-object v2, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    .line 668
    invoke-virtual {v2}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/uwb/support/ccc/CccProtocolVersion;

    iget-object v3, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;

    .line 669
    invoke-virtual {v3}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;

    .line 670
    invoke-virtual {v4}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/uwb/support/ccc/CccPulseShapeCombo;

    iget-object v5, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 671
    invoke-virtual {v5}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSessionType:I

    iget-object v7, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    .line 673
    invoke-virtual {v7}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mChannel:Lcom/google/uwb/support/base/RequiredParam;

    .line 674
    invoke-virtual {v8}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;

    .line 675
    invoke-virtual {v9}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;

    .line 676
    invoke-virtual {v10}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;

    .line 677
    invoke-virtual {v11}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    .line 678
    invoke-virtual {v12}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget v13, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHopModeKey:I

    iget-object v14, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 680
    invoke-virtual {v14}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v15, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;

    .line 681
    invoke-virtual {v15}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v16, v1

    iget v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mStsIndex:I

    move/from16 v18, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mInitiationTimeMs:J

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    move-wide/from16 v21, v1

    iget v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    iget v2, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    move/from16 v23, v1

    iget v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    move/from16 v25, v1

    move/from16 v24, v2

    iget-wide v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    move-wide/from16 v26, v1

    iget-wide v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    move-wide/from16 v28, v1

    iget-wide v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    move-wide/from16 v30, v1

    iget-wide v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    const/16 v32, 0x0

    move-wide/from16 v33, v1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v16, v18

    move-wide/from16 v17, v19

    move-wide/from16 v19, v21

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v25

    move-wide/from16 v24, v26

    move-wide/from16 v26, v28

    move-wide/from16 v28, v30

    move-wide/from16 v30, v33

    invoke-direct/range {v1 .. v32}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;-><init>(Lcom/google/uwb/support/ccc/CccProtocolVersion;ILcom/google/uwb/support/ccc/CccPulseShapeCombo;IIIIIIIIIIIIJJIIIDDDDLcom/google/uwb/support/ccc/CccOpenRangingParams$1;)V

    .line 667
    move-object/from16 v16, v1

    return-object v16
.end method

.method public setAbsoluteInitiationTimeUs(J)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 0
    .param p1, "absoluteInitiationTimeUs"    # J

    .line 549
    iput-wide p1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    .line 550
    return-object p0
.end method

.method public setChannel(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 2
    .param p1, "channel"    # I

    .line 491
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mChannel:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 492
    return-object p0
.end method

.method public setHopModeKey(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 0
    .param p1, "hopModeKey"    # I

    .line 517
    iput p1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHopModeKey:I

    .line 518
    return-object p0
.end method

.method public setHoppingConfigMode(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 2
    .param p1, "hoppingConfigMode"    # I

    .line 522
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHoppingConfigMode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 523
    return-object p0
.end method

.method public setHoppingSequence(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 2
    .param p1, "hoppingSequence"    # I

    .line 527
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mHoppingSequence:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 528
    return-object p0
.end method

.method public setInitiationTimeMs(J)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 0
    .param p1, "initiationTimeMs"    # J

    .line 538
    iput-wide p1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mInitiationTimeMs:J

    .line 539
    return-object p0
.end method

.method public setNumChapsPerSlot(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 2
    .param p1, "numChapsPerSlot"    # I

    .line 496
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumChapsPerSlot:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 497
    return-object p0
.end method

.method public setNumResponderNodes(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 2
    .param p1, "numResponderNodes"    # I

    .line 501
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumResponderNodes:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 502
    return-object p0
.end method

.method public setNumSlotsPerRound(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 2
    .param p1, "numSlotsPerRound"    # I

    .line 506
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mNumSlotsPerRound:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 507
    return-object p0
.end method

.method public setProtocolVersion(Lcom/google/uwb/support/ccc/CccProtocolVersion;)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 1
    .param p1, "version"    # Lcom/google/uwb/support/ccc/CccProtocolVersion;

    .line 466
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v0, p1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 467
    return-object p0
.end method

.method public setPulseShapeCombo(Lcom/google/uwb/support/ccc/CccPulseShapeCombo;)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 1
    .param p1, "pulseShapeCombo"    # Lcom/google/uwb/support/ccc/CccPulseShapeCombo;

    .line 476
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mPulseShapeCombo:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v0, p1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 477
    return-object p0
.end method

.method public setRanMultiplier(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 2
    .param p1, "ranMultiplier"    # I

    .line 486
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 487
    return-object p0
.end method

.method public setRangeDataNtfAoaAzimuthLower(D)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfAoaAzimuthLower"    # D

    .line 579
    iput-wide p1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthLower:D

    .line 580
    return-object p0
.end method

.method public setRangeDataNtfAoaAzimuthUpper(D)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfAoaAzimuthUpper"    # D

    .line 587
    iput-wide p1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaAzimuthUpper:D

    .line 588
    return-object p0
.end method

.method public setRangeDataNtfAoaElevationLower(D)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfAoaElevationLower"    # D

    .line 595
    iput-wide p1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationLower:D

    .line 596
    return-object p0
.end method

.method public setRangeDataNtfAoaElevationUpper(D)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfAoaElevationUpper"    # D

    .line 603
    iput-wide p1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfAoaElevationUpper:D

    .line 604
    return-object p0
.end method

.method public setRangeDataNtfConfig(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfConfig"    # I

    .line 555
    iput p1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfConfig:I

    .line 556
    return-object p0
.end method

.method public setRangeDataNtfProximityFar(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfProximityFar"    # I

    .line 571
    iput p1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityFar:I

    .line 572
    return-object p0
.end method

.method public setRangeDataNtfProximityNear(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 0
    .param p1, "rangeDataNtfProximityNear"    # I

    .line 563
    iput p1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mRangeDataNtfProximityNear:I

    .line 564
    return-object p0
.end method

.method public setSessionId(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 2
    .param p1, "sessionId"    # I

    .line 481
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 482
    return-object p0
.end method

.method public setStsIndex(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 0
    .param p1, "stsIndex"    # I

    .line 532
    iput p1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mStsIndex:I

    .line 533
    return-object p0
.end method

.method public setSyncCodeIndex(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 2
    .param p1, "syncCodeIndex"    # I

    .line 511
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 512
    return-object p0
.end method

.method public setUwbConfig(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 2
    .param p1, "uwbConfig"    # I

    .line 471
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->mUwbConfig:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 472
    return-object p0
.end method
