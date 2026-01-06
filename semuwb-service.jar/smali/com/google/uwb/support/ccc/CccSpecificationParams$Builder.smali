.class public Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;
.super Ljava/lang/Object;
.source "CccSpecificationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/ccc/CccSpecificationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mChapsPerSlot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHoppingConfigModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHoppingSequences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxRangingSessionNumber:I

.field private mMinUwbInitiationTimeMs:I

.field private mProtocolVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/uwb/support/ccc/CccProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mPulseShapeCombos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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

.field private mSyncCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUwbConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUwbsMaxPPM:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mProtocolVersions:Ljava/util/List;

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mUwbConfigs:Ljava/util/List;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mPulseShapeCombos:Ljava/util/List;

    .line 307
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mMinUwbInitiationTimeMs:I

    .line 309
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mMaxRangingSessionNumber:I

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mChapsPerSlot:Ljava/util/List;

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mSyncCodes:Ljava/util/List;

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mChannels:Ljava/util/List;

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mHoppingSequences:Ljava/util/List;

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mHoppingConfigModes:Ljava/util/List;

    .line 315
    iput v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mUwbsMaxPPM:I

    return-void
.end method


# virtual methods
.method public addChannel(I)Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;
    .locals 2
    .param p1, "channel"    # I

    .line 371
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mChannels:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    return-object p0
.end method

.method public addChapsPerSlot(I)Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;
    .locals 2
    .param p1, "chapsPerSlot"    # I

    .line 361
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mChapsPerSlot:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    return-object p0
.end method

.method public addHoppingConfigMode(I)Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;
    .locals 2
    .param p1, "hoppingConfigMode"    # I

    .line 376
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mHoppingConfigModes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    return-object p0
.end method

.method public addHoppingSequence(I)Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;
    .locals 2
    .param p1, "hoppingSequence"    # I

    .line 381
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mHoppingSequences:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    return-object p0
.end method

.method public addProtocolVersion(Lcom/google/uwb/support/ccc/CccProtocolVersion;)Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;
    .locals 1
    .param p1, "version"    # Lcom/google/uwb/support/ccc/CccProtocolVersion;

    .line 318
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mProtocolVersions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    return-object p0
.end method

.method public addPulseShapeCombo(Lcom/google/uwb/support/ccc/CccPulseShapeCombo;)Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;
    .locals 1
    .param p1, "pulseShapeCombo"    # Lcom/google/uwb/support/ccc/CccPulseShapeCombo;

    .line 328
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mPulseShapeCombos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    return-object p0
.end method

.method public addSyncCode(I)Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;
    .locals 2
    .param p1, "syncCode"    # I

    .line 366
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mSyncCodes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    return-object p0
.end method

.method public addUwbConfig(I)Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;
    .locals 2
    .param p1, "uwbConfig"    # I

    .line 323
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mUwbConfigs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    return-object p0
.end method

.method public build()Lcom/google/uwb/support/ccc/CccSpecificationParams;
    .locals 15

    .line 397
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mProtocolVersions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 401
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mUwbConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 405
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mPulseShapeCombos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 409
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mChapsPerSlot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 413
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mSyncCodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mHoppingConfigModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mHoppingSequences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    new-instance v1, Lcom/google/uwb/support/ccc/CccSpecificationParams;

    iget-object v2, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mProtocolVersions:Ljava/util/List;

    iget-object v3, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mUwbConfigs:Ljava/util/List;

    iget-object v4, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mPulseShapeCombos:Ljava/util/List;

    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    .line 429
    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mMaxRangingSessionNumber:I

    iget v7, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mMinUwbInitiationTimeMs:I

    iget-object v8, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mChapsPerSlot:Ljava/util/List;

    iget-object v9, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mSyncCodes:Ljava/util/List;

    iget-object v10, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mChannels:Ljava/util/List;

    iget-object v11, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mHoppingConfigModes:Ljava/util/List;

    iget-object v12, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mHoppingSequences:Ljava/util/List;

    iget v13, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mUwbsMaxPPM:I

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v14}, Lcom/google/uwb/support/ccc/CccSpecificationParams;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILcom/google/uwb/support/ccc/CccSpecificationParams$1;)V

    .line 425
    return-object v1

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No hopping sequences set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No hopping config modes set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No Sync Codes set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No Slot Durations set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No Pulse Shape Combos set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No UWB Configs set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No protocol versions set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxRangingSessionNumber(I)Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;
    .locals 0
    .param p1, "maxRangingSessionNumber"    # I

    .line 346
    iput p1, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mMaxRangingSessionNumber:I

    .line 347
    return-object p0
.end method

.method public setMinUwbInitiationTimeMs(I)Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;
    .locals 0
    .param p1, "minUwbInitiationTimeMs"    # I

    .line 356
    iput p1, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mMinUwbInitiationTimeMs:I

    .line 357
    return-object p0
.end method

.method public setRanMultiplier(I)Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;
    .locals 2
    .param p1, "ranMultiplier"    # I

    .line 333
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 337
    return-object p0

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid RAN Multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUwbsMaxPPM(I)Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;
    .locals 0
    .param p1, "uwbsMaxPPM"    # I

    .line 392
    iput p1, p0, Lcom/google/uwb/support/ccc/CccSpecificationParams$Builder;->mUwbsMaxPPM:I

    .line 393
    return-object p0
.end method
