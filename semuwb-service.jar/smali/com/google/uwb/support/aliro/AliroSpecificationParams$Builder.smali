.class public Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;
.super Ljava/lang/Object;
.source "AliroSpecificationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/aliro/AliroSpecificationParams;
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

.field private mMacModes:Ljava/util/List;
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
            "Lcom/google/uwb/support/aliro/AliroProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mPulseShapeCombos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
    .locals 1

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mProtocolVersions:Ljava/util/List;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mUwbConfigs:Ljava/util/List;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mPulseShapeCombos:Ljava/util/List;

    .line 326
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    .line 327
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mMinUwbInitiationTimeMs:I

    .line 328
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mMaxRangingSessionNumber:I

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mChapsPerSlot:Ljava/util/List;

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mSyncCodes:Ljava/util/List;

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mChannels:Ljava/util/List;

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mHoppingSequences:Ljava/util/List;

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mHoppingConfigModes:Ljava/util/List;

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mUwbsMaxPPM:I

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mMacModes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addChannel(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;
    .locals 2
    .param p1, "channel"    # I

    .line 392
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mChannels:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    return-object p0
.end method

.method public addChapsPerSlot(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;
    .locals 2
    .param p1, "chapsPerSlot"    # I

    .line 382
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mChapsPerSlot:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    return-object p0
.end method

.method public addHoppingConfigMode(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;
    .locals 2
    .param p1, "hoppingConfigMode"    # I

    .line 397
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mHoppingConfigModes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    return-object p0
.end method

.method public addHoppingSequence(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;
    .locals 2
    .param p1, "hoppingSequence"    # I

    .line 402
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mHoppingSequences:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    return-object p0
.end method

.method public addMacMode(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;
    .locals 2
    .param p1, "macMode"    # I

    .line 423
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mMacModes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    return-object p0
.end method

.method public addProtocolVersion(Lcom/google/uwb/support/aliro/AliroProtocolVersion;)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;
    .locals 1
    .param p1, "version"    # Lcom/google/uwb/support/aliro/AliroProtocolVersion;

    .line 339
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mProtocolVersions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    return-object p0
.end method

.method public addPulseShapeCombo(Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;
    .locals 1
    .param p1, "pulseShapeCombo"    # Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    .line 349
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mPulseShapeCombos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    return-object p0
.end method

.method public addSyncCode(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;
    .locals 2
    .param p1, "syncCode"    # I

    .line 387
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mSyncCodes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    return-object p0
.end method

.method public addUwbConfig(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;
    .locals 2
    .param p1, "uwbConfig"    # I

    .line 344
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mUwbConfigs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    return-object p0
.end method

.method public build()Lcom/google/uwb/support/aliro/AliroSpecificationParams;
    .locals 17

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mProtocolVersions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 432
    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mUwbConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 436
    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mPulseShapeCombos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 440
    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mChapsPerSlot:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 444
    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mSyncCodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 448
    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mHoppingConfigModes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mHoppingSequences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    new-instance v2, Lcom/google/uwb/support/aliro/AliroSpecificationParams;

    iget-object v3, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mProtocolVersions:Ljava/util/List;

    iget-object v4, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mUwbConfigs:Ljava/util/List;

    iget-object v5, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mPulseShapeCombos:Ljava/util/List;

    iget-object v1, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    .line 460
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mMaxRangingSessionNumber:I

    iget v8, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mMinUwbInitiationTimeMs:I

    iget-object v9, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mChapsPerSlot:Ljava/util/List;

    iget-object v10, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mSyncCodes:Ljava/util/List;

    iget-object v11, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mChannels:Ljava/util/List;

    iget-object v12, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mHoppingConfigModes:Ljava/util/List;

    iget-object v13, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mHoppingSequences:Ljava/util/List;

    iget v14, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mUwbsMaxPPM:I

    iget-object v15, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mMacModes:Ljava/util/List;

    const/16 v16, 0x0

    invoke-direct/range {v2 .. v16}, Lcom/google/uwb/support/aliro/AliroSpecificationParams;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/List;Lcom/google/uwb/support/aliro/AliroSpecificationParams$1;)V

    .line 456
    return-object v2

    .line 453
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No hopping sequences set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No hopping config modes set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 445
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No Sync Codes set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No Slot Durations set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No Pulse Shape Combos set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No UWB Configs set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No protocol versions set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMaxRangingSessionNumber(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;
    .locals 0
    .param p1, "maxRangingSessionNumber"    # I

    .line 367
    iput p1, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mMaxRangingSessionNumber:I

    .line 368
    return-object p0
.end method

.method public setMinUwbInitiationTimeMs(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;
    .locals 0
    .param p1, "minUwbInitiationTimeMs"    # I

    .line 377
    iput p1, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mMinUwbInitiationTimeMs:I

    .line 378
    return-object p0
.end method

.method public setRanMultiplier(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;
    .locals 2
    .param p1, "ranMultiplier"    # I

    .line 354
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 358
    return-object p0

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid RAN Multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUwbsMaxPPM(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;
    .locals 0
    .param p1, "uwbsMaxPPM"    # I

    .line 413
    iput p1, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->mUwbsMaxPPM:I

    .line 414
    return-object p0
.end method
