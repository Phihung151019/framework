.class public Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;
.super Ljava/lang/Object;
.source "FiraRangingReconfigureParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAction:Ljava/lang/Integer;

.field private mAddressList:[Landroid/uwb/UwbAddress;

.field private mBlockStrideLength:Ljava/lang/Integer;

.field private mRangeDataAoaAzimuthLower:Ljava/lang/Double;

.field private mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

.field private mRangeDataAoaElevationLower:Ljava/lang/Double;

.field private mRangeDataAoaElevationUpper:Ljava/lang/Double;

.field private mRangeDataNtfConfig:Ljava/lang/Integer;

.field private mRangeDataProximityFar:Ljava/lang/Integer;

.field private mRangeDataProximityNear:Ljava/lang/Integer;

.field private mSubSessionIdList:[I

.field private mSubSessionKeyList:[B

.field private mSuspendRangingRounds:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mAction:Ljava/lang/Integer;

    .line 350
    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mAddressList:[Landroid/uwb/UwbAddress;

    .line 351
    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mSubSessionIdList:[I

    .line 352
    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mSubSessionKeyList:[B

    .line 354
    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mBlockStrideLength:Ljava/lang/Integer;

    .line 356
    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataNtfConfig:Ljava/lang/Integer;

    .line 357
    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityNear:Ljava/lang/Integer;

    .line 358
    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityFar:Ljava/lang/Integer;

    .line 359
    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    .line 360
    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    .line 361
    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    .line 362
    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    .line 363
    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mSuspendRangingRounds:Ljava/lang/Integer;

    return-void
.end method

.method private checkAddressList()V
    .locals 8

    .line 447
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mAddressList:[Landroid/uwb/UwbAddress;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mAddressList:[Landroid/uwb/UwbAddress;

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 448
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mAddressList:[Landroid/uwb/UwbAddress;

    array-length v3, v0

    move v4, v2

    :goto_1
    const/4 v5, 0x2

    if-ge v4, v3, :cond_2

    aget-object v6, v0, v4

    .line 449
    .local v6, "uwbAddress":Landroid/uwb/UwbAddress;
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-virtual {v6}, Landroid/uwb/UwbAddress;->size()I

    move-result v7

    if-ne v7, v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 448
    .end local v6    # "uwbAddress":Landroid/uwb/UwbAddress;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mSubSessionIdList:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mSubSessionIdList:[I

    array-length v0, v0

    iget-object v3, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mAddressList:[Landroid/uwb/UwbAddress;

    array-length v3, v3

    if-ne v0, v3, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 456
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mSubSessionKeyList:[B

    if-eqz v0, :cond_8

    .line 457
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mAction:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 458
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mSubSessionKeyList:[B

    array-length v0, v0

    iget-object v3, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mSubSessionIdList:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x10

    if-ne v0, v3, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_7

    .line 460
    :cond_6
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mAction:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    .line 461
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mSubSessionKeyList:[B

    array-length v0, v0

    iget-object v3, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mSubSessionIdList:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x20

    if-ne v0, v3, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 465
    :cond_8
    :goto_7
    return-void
.end method

.method private checkRangeDataNtfConfig()V
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataNtfConfig:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 469
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataNtfConfig:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_7

    .line 472
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityNear:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 473
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityFar:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 474
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 475
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 476
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 477
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto/16 :goto_12

    .line 478
    :cond_7
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataNtfConfig:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_14

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataNtfConfig:Ljava/lang/Integer;

    .line 479
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_8

    goto/16 :goto_b

    .line 486
    :cond_8
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataNtfConfig:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_e

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataNtfConfig:Ljava/lang/Integer;

    .line 487
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_9

    goto :goto_7

    .line 494
    :cond_9
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataNtfConfig:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_a

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataNtfConfig:Ljava/lang/Integer;

    .line 495
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1b

    .line 497
    :cond_a
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityNear:Ljava/lang/Integer;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityFar:Ljava/lang/Integer;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    if-nez v0, :cond_d

    :cond_b
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    move v1, v2

    :cond_d
    :goto_6
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto/16 :goto_12

    .line 488
    :cond_e
    :goto_7
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityNear:Ljava/lang/Integer;

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_8

    :cond_f
    move v0, v2

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 489
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityFar:Ljava/lang/Integer;

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_9

    :cond_10
    move v0, v2

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 490
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    if-nez v0, :cond_13

    :cond_11
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    if-eqz v0, :cond_12

    goto :goto_a

    :cond_12
    move v1, v2

    :cond_13
    :goto_a
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_12

    .line 480
    :cond_14
    :goto_b
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityNear:Ljava/lang/Integer;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityFar:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    goto :goto_c

    :cond_15
    move v0, v2

    goto :goto_d

    :cond_16
    :goto_c
    move v0, v1

    :goto_d
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 482
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    if-nez v0, :cond_17

    move v0, v1

    goto :goto_e

    :cond_17
    move v0, v2

    :goto_e
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 483
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    if-nez v0, :cond_18

    move v0, v1

    goto :goto_f

    :cond_18
    move v0, v2

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 484
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    if-nez v0, :cond_19

    move v0, v1

    goto :goto_10

    :cond_19
    move v0, v2

    :goto_10
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 485
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    if-nez v0, :cond_1a

    goto :goto_11

    :cond_1a
    move v1, v2

    :goto_11
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 504
    :cond_1b
    :goto_12
    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;
    .locals 18

    .line 507
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mAction:Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 508
    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->checkAddressList()V

    .line 510
    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mBlockStrideLength:Ljava/lang/Integer;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataNtfConfig:Ljava/lang/Integer;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityNear:Ljava/lang/Integer;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityFar:Ljava/lang/Integer;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    if-nez v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_0

    .line 520
    :cond_1
    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->checkRangeDataNtfConfig()V

    .line 521
    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mBlockStrideLength:Ljava/lang/Integer;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataNtfConfig:Ljava/lang/Integer;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityNear:Ljava/lang/Integer;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityFar:Ljava/lang/Integer;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    if-nez v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 532
    :goto_0
    new-instance v3, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;

    iget-object v4, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mAction:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mAddressList:[Landroid/uwb/UwbAddress;

    iget-object v6, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mSubSessionIdList:[I

    iget-object v7, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mSubSessionKeyList:[B

    iget-object v8, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mBlockStrideLength:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataNtfConfig:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityNear:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityFar:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    iget-object v13, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    iget-object v14, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    iget-object v15, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mSuspendRangingRounds:Ljava/lang/Integer;

    const/16 v17, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v3 .. v17}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;-><init>(Ljava/lang/Integer;[Landroid/uwb/UwbAddress;[I[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$1;)V

    return-object v3
.end method

.method public setAction(I)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;
    .locals 1
    .param p1, "action"    # I

    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mAction:Ljava/lang/Integer;

    .line 368
    return-object p0
.end method

.method public setAddressList([Landroid/uwb/UwbAddress;)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;
    .locals 0
    .param p1, "addressList"    # [Landroid/uwb/UwbAddress;

    .line 372
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mAddressList:[Landroid/uwb/UwbAddress;

    .line 373
    return-object p0
.end method

.method public setBlockStrideLength(I)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;
    .locals 1
    .param p1, "blockStrideLength"    # I

    .line 388
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mBlockStrideLength:Ljava/lang/Integer;

    .line 389
    return-object p0
.end method

.method public setRangeDataAoaAzimuthLower(D)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;
    .locals 1
    .param p1, "rangeDataAoaAzimuthLower"    # D

    .line 413
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    .line 414
    return-object p0
.end method

.method public setRangeDataAoaAzimuthUpper(D)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;
    .locals 1
    .param p1, "rangeDataAoaAzimuthUpper"    # D

    .line 421
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    .line 422
    return-object p0
.end method

.method public setRangeDataAoaElevationLower(D)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;
    .locals 1
    .param p1, "rangeDataAoaElevationLower"    # D

    .line 429
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    .line 430
    return-object p0
.end method

.method public setRangeDataAoaElevationUpper(D)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;
    .locals 1
    .param p1, "rangeDataAoaElevationUpper"    # D

    .line 437
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    .line 438
    return-object p0
.end method

.method public setRangeDataNtfConfig(I)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;
    .locals 1
    .param p1, "rangeDataNtfConfig"    # I

    .line 393
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataNtfConfig:Ljava/lang/Integer;

    .line 394
    return-object p0
.end method

.method public setRangeDataProximityFar(I)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;
    .locals 1
    .param p1, "rangeDataProximityFar"    # I

    .line 405
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityFar:Ljava/lang/Integer;

    .line 406
    return-object p0
.end method

.method public setRangeDataProximityNear(I)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;
    .locals 1
    .param p1, "rangeDataProximityNear"    # I

    .line 399
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mRangeDataProximityNear:Ljava/lang/Integer;

    .line 400
    return-object p0
.end method

.method public setSubSessionIdList([I)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;
    .locals 0
    .param p1, "subSessionIdList"    # [I

    .line 377
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mSubSessionIdList:[I

    .line 378
    return-object p0
.end method

.method public setSubSessionKeyList([B)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;
    .locals 0
    .param p1, "subSessionKeyList"    # [B

    .line 383
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mSubSessionKeyList:[B

    .line 384
    return-object p0
.end method

.method public setSuspendRangingRounds(Ljava/lang/Integer;)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;
    .locals 0
    .param p1, "suspendRangingRounds"    # Ljava/lang/Integer;

    .line 442
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->mSuspendRangingRounds:Ljava/lang/Integer;

    .line 443
    return-object p0
.end method
