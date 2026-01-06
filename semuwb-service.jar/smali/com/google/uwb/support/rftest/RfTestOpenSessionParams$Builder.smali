.class public final Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
.super Ljava/lang/Object;
.source "RfTestOpenSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDestAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/uwb/UwbAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceAddress:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Landroid/uwb/UwbAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceRole:I

.field private mFcsType:I

.field private mNoOfControlee:I

.field private mNoOfPackets:I

.field private mPhrRangingBit:I

.field private mPreambleCodeIndex:I

.field private mPreambleDuration:I

.field private mPrfMode:I

.field private mPsduDataRate:I

.field private mRandomizePsdu:I

.field private mRframeConfig:I

.field private mRmarkerRxStart:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRmarkerTxStart:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionId:I

.field private mSessionType:I

.field private mSfdId:I

.field private mSlotDurationRstu:I

.field private mStsDetectBitmap:I

.field private mStsIndex:I

.field private mStsIndexAutoIncr:I

.field private mStsSegmentCount:I

.field private mTgap:I

.field private mTstart:I

.field private mTwin:I

.field private mUwbChannel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSessionId:I

    .line 419
    const/16 v1, 0xd0

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSessionType:I

    .line 423
    const/16 v1, 0x9

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mUwbChannel:I

    .line 426
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mNoOfControlee:I

    .line 428
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDeviceAddress:Lcom/google/uwb/support/base/RequiredParam;

    .line 430
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    .line 433
    const/16 v1, 0x960

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSlotDurationRstu:I

    .line 435
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsIndex:I

    .line 438
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mFcsType:I

    .line 442
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRframeConfig:I

    .line 445
    const/16 v1, 0xa

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPreambleCodeIndex:I

    .line 448
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSfdId:I

    .line 451
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPsduDataRate:I

    .line 454
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPreambleDuration:I

    .line 457
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPrfMode:I

    .line 460
    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsSegmentCount:I

    .line 463
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mNoOfPackets:I

    .line 466
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTgap:I

    .line 469
    const/16 v1, 0x1c2

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTstart:I

    .line 472
    const/16 v1, 0x2ee

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTwin:I

    .line 475
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRandomizePsdu:I

    .line 478
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPhrRangingBit:I

    .line 480
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRmarkerTxStart:Lcom/google/uwb/support/base/RequiredParam;

    .line 482
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRmarkerRxStart:Lcom/google/uwb/support/base/RequiredParam;

    .line 485
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsIndexAutoIncr:I

    .line 488
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsDetectBitmap:I

    .line 491
    return-void
.end method

.method public constructor <init>(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSessionId:I

    .line 419
    const/16 v1, 0xd0

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSessionType:I

    .line 423
    const/16 v1, 0x9

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mUwbChannel:I

    .line 426
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mNoOfControlee:I

    .line 428
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDeviceAddress:Lcom/google/uwb/support/base/RequiredParam;

    .line 430
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    .line 433
    const/16 v1, 0x960

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSlotDurationRstu:I

    .line 435
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsIndex:I

    .line 438
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mFcsType:I

    .line 442
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRframeConfig:I

    .line 445
    const/16 v1, 0xa

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPreambleCodeIndex:I

    .line 448
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSfdId:I

    .line 451
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPsduDataRate:I

    .line 454
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPreambleDuration:I

    .line 457
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPrfMode:I

    .line 460
    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsSegmentCount:I

    .line 463
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mNoOfPackets:I

    .line 466
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTgap:I

    .line 469
    const/16 v1, 0x1c2

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTstart:I

    .line 472
    const/16 v1, 0x2ee

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTwin:I

    .line 475
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRandomizePsdu:I

    .line 478
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPhrRangingBit:I

    .line 480
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRmarkerTxStart:Lcom/google/uwb/support/base/RequiredParam;

    .line 482
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRmarkerRxStart:Lcom/google/uwb/support/base/RequiredParam;

    .line 485
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsIndexAutoIncr:I

    .line 488
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsDetectBitmap:I

    .line 494
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSessionId:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSessionId:I

    .line 495
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSessionType:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSessionType:I

    .line 496
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mUwbChannel:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mUwbChannel:I

    .line 497
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mNoOfControlee:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mNoOfControlee:I

    .line 498
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDeviceAddress:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDeviceAddress:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/uwb/UwbAddress;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 499
    iget-object v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    iput-object v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    .line 500
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSlotDurationRstu:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSlotDurationRstu:I

    .line 501
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsIndex:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsIndex:I

    .line 502
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mFcsType:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mFcsType:I

    .line 503
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDeviceRole:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDeviceRole:I

    .line 504
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRframeConfig:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRframeConfig:I

    .line 505
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPreambleCodeIndex:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPreambleCodeIndex:I

    .line 506
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSfdId:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSfdId:I

    .line 507
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPsduDataRate:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPsduDataRate:I

    .line 508
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPreambleDuration:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPreambleDuration:I

    .line 509
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPrfMode:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPrfMode:I

    .line 510
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsSegmentCount:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsSegmentCount:I

    .line 511
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mNoOfPackets:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mNoOfPackets:I

    .line 512
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTgap:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTgap:I

    .line 513
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTstart:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTstart:I

    .line 514
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTwin:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTwin:I

    .line 515
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRandomizePsdu:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRandomizePsdu:I

    .line 516
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPhrRangingBit:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPhrRangingBit:I

    .line 517
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRmarkerTxStart:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRmarkerTxStart:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 518
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRmarkerRxStart:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRmarkerRxStart:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 519
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsIndexAutoIncr:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsIndexAutoIncr:I

    .line 520
    iget v0, p1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsDetectBitmap:I

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsDetectBitmap:I

    .line 521
    return-void
.end method

.method public constructor <init>(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)V
    .locals 2
    .param p1, "params"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSessionId:I

    .line 419
    const/16 v1, 0xd0

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSessionType:I

    .line 423
    const/16 v1, 0x9

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mUwbChannel:I

    .line 426
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mNoOfControlee:I

    .line 428
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDeviceAddress:Lcom/google/uwb/support/base/RequiredParam;

    .line 430
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    .line 433
    const/16 v1, 0x960

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSlotDurationRstu:I

    .line 435
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsIndex:I

    .line 438
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mFcsType:I

    .line 442
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRframeConfig:I

    .line 445
    const/16 v1, 0xa

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPreambleCodeIndex:I

    .line 448
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSfdId:I

    .line 451
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPsduDataRate:I

    .line 454
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPreambleDuration:I

    .line 457
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPrfMode:I

    .line 460
    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsSegmentCount:I

    .line 463
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mNoOfPackets:I

    .line 466
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTgap:I

    .line 469
    const/16 v1, 0x1c2

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTstart:I

    .line 472
    const/16 v1, 0x2ee

    iput v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTwin:I

    .line 475
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRandomizePsdu:I

    .line 478
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPhrRangingBit:I

    .line 480
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRmarkerTxStart:Lcom/google/uwb/support/base/RequiredParam;

    .line 482
    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRmarkerRxStart:Lcom/google/uwb/support/base/RequiredParam;

    .line 485
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsIndexAutoIncr:I

    .line 488
    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsDetectBitmap:I

    .line 524
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$000(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSessionId:I

    .line 525
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$100(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSessionType:I

    .line 526
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$200(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mUwbChannel:I

    .line 527
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$300(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mNoOfControlee:I

    .line 528
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDeviceAddress:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$400(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)Landroid/uwb/UwbAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 529
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$500(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    .line 530
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$600(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSlotDurationRstu:I

    .line 531
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$700(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsIndex:I

    .line 532
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$800(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mFcsType:I

    .line 533
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$900(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDeviceRole:I

    .line 534
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$1000(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRframeConfig:I

    .line 535
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$1100(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPreambleCodeIndex:I

    .line 536
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$1200(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSfdId:I

    .line 537
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$1300(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPsduDataRate:I

    .line 538
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$1400(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPreambleDuration:I

    .line 539
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$1500(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPrfMode:I

    .line 540
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$1600(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsSegmentCount:I

    .line 541
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$1700(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mNoOfPackets:I

    .line 542
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$1800(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTgap:I

    .line 543
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$1900(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTstart:I

    .line 544
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$2000(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTwin:I

    .line 545
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$2100(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRandomizePsdu:I

    .line 546
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$2200(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPhrRangingBit:I

    .line 547
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRmarkerTxStart:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$2300(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 548
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRmarkerRxStart:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$2400(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 549
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$2500(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsIndexAutoIncr:I

    .line 550
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->access$2600(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsDetectBitmap:I

    .line 551
    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;
    .locals 31

    .line 681
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    iget v2, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSessionId:I

    iget v3, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSessionType:I

    iget v4, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mUwbChannel:I

    iget v5, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mNoOfControlee:I

    iget-object v6, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDeviceAddress:Lcom/google/uwb/support/base/RequiredParam;

    .line 686
    invoke-virtual {v6}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/uwb/UwbAddress;

    iget-object v7, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    iget v8, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSlotDurationRstu:I

    iget v9, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsIndex:I

    iget v10, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mFcsType:I

    iget v11, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDeviceRole:I

    iget v12, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRframeConfig:I

    iget v13, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPreambleCodeIndex:I

    iget v14, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSfdId:I

    iget v15, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPsduDataRate:I

    move-object/from16 v16, v1

    iget v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPreambleDuration:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPrfMode:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsSegmentCount:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mNoOfPackets:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTgap:I

    move/from16 v21, v1

    iget v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTstart:I

    move/from16 v22, v1

    iget v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTwin:I

    move/from16 v23, v1

    iget v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRandomizePsdu:I

    move/from16 v24, v1

    iget v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPhrRangingBit:I

    move/from16 v25, v1

    iget-object v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRmarkerTxStart:Lcom/google/uwb/support/base/RequiredParam;

    .line 705
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v26, v1

    iget-object v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRmarkerRxStart:Lcom/google/uwb/support/base/RequiredParam;

    .line 706
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v27, v1

    iget v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsIndexAutoIncr:I

    move/from16 v28, v1

    iget v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsDetectBitmap:I

    const/16 v29, 0x0

    move/from16 v30, v28

    move/from16 v28, v1

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

    move/from16 v27, v30

    invoke-direct/range {v1 .. v29}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;-><init>(IIIILandroid/uwb/UwbAddress;Ljava/util/List;IIIIIIIIIIIIIIIIIIIIILcom/google/uwb/support/rftest/RfTestOpenSessionParams$1;)V

    .line 681
    move-object/from16 v16, v1

    return-object v16
.end method

.method public setChannelNumber(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "channelNumber"    # I

    .line 554
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mUwbChannel:I

    .line 555
    return-object p0
.end method

.method public setDestAddressList(Ljava/util/List;)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/uwb/UwbAddress;",
            ">;)",
            "Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;"
        }
    .end annotation

    .line 569
    .local p1, "destAddressList":Ljava/util/List;, "Ljava/util/List<Landroid/uwb/UwbAddress;>;"
    iput-object p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    .line 570
    return-object p0
.end method

.method public setDeviceAddress(Landroid/uwb/UwbAddress;)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 1
    .param p1, "deviceAddress"    # Landroid/uwb/UwbAddress;

    .line 564
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDeviceAddress:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v0, p1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 565
    return-object p0
.end method

.method public setDeviceRole(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "deviceRole"    # I

    .line 589
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mDeviceRole:I

    .line 590
    return-object p0
.end method

.method public setFcsType(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "fcsType"    # I

    .line 584
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mFcsType:I

    .line 585
    return-object p0
.end method

.method public setNumberOfControlee(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "noOfControlee"    # I

    .line 559
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mNoOfControlee:I

    .line 560
    return-object p0
.end method

.method public setNumberOfPackets(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "noOfPackets"    # I

    .line 630
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mNoOfPackets:I

    .line 631
    return-object p0
.end method

.method public setPhrRangingBit(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "phrRangingBit"    # I

    .line 655
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPhrRangingBit:I

    .line 656
    return-object p0
.end method

.method public setPreambleCodeIndex(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "preambleCodeIndex"    # I

    .line 599
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPreambleCodeIndex:I

    .line 600
    return-object p0
.end method

.method public setPreambleDuration(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "preambleDuration"    # I

    .line 614
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPreambleDuration:I

    .line 615
    return-object p0
.end method

.method public setPrfMode(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "prfMode"    # I

    .line 619
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPrfMode:I

    .line 620
    return-object p0
.end method

.method public setPsduDataRate(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "psduDataRate"    # I

    .line 609
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mPsduDataRate:I

    .line 610
    return-object p0
.end method

.method public setRandomizePsdu(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "randomizePsdu"    # I

    .line 650
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRandomizePsdu:I

    .line 651
    return-object p0
.end method

.method public setRframeConfig(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "rframeConfig"    # I

    .line 594
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRframeConfig:I

    .line 595
    return-object p0
.end method

.method public setRmarkerRxStart(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 2
    .param p1, "rmarkerRxStart"    # I

    .line 665
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRmarkerRxStart:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 666
    return-object p0
.end method

.method public setRmarkerTxStart(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 2
    .param p1, "rmarkerTxStart"    # I

    .line 660
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mRmarkerTxStart:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 661
    return-object p0
.end method

.method public setSfdId(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "sfdId"    # I

    .line 604
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSfdId:I

    .line 605
    return-object p0
.end method

.method public setSlotDurationRstu(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "slotDurationRstu"    # I

    .line 574
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mSlotDurationRstu:I

    .line 575
    return-object p0
.end method

.method public setStsDetectBitmap(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "stsDetectBitmap"    # I

    .line 675
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsDetectBitmap:I

    .line 676
    return-object p0
.end method

.method public setStsIndex(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "stsIndex"    # I

    .line 579
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsIndex:I

    .line 580
    return-object p0
.end method

.method public setStsIndexAutoIncr(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "stsIndexAutoIncr"    # I

    .line 670
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsIndexAutoIncr:I

    .line 671
    return-object p0
.end method

.method public setStsSegmentCount(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "stsSegmentCount"    # I

    .line 625
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mStsSegmentCount:I

    .line 626
    return-object p0
.end method

.method public setTgap(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "tGap"    # I

    .line 635
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTgap:I

    .line 636
    return-object p0
.end method

.method public setTstart(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "tStart"    # I

    .line 640
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTstart:I

    .line 641
    return-object p0
.end method

.method public setTwin(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    .locals 0
    .param p1, "tWin"    # I

    .line 645
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->mTwin:I

    .line 646
    return-object p0
.end method
