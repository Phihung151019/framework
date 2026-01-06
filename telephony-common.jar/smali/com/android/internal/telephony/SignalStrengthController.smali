.class public Lcom/android/internal/telephony/SignalStrengthController;
.super Landroid/os/Handler;
.source "SignalStrengthController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;,
        Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_POLL_SIGNAL_STRENGTH_DONE:I = 0x9

.field private static final blacklist POLL_PERIOD_MILLIS:J

.field private static final blacklist SIGNAL_STRENGTH_REFRESH_THRESHOLD_IN_MS:J


# instance fields
.field private blacklist mCarrierConfig:Landroid/os/PersistableBundle;

.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mLastSignalStrength:Landroid/telephony/SignalStrength;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mLteRsrpBoost:I

.field private final blacklist mNTNConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mNrRsrpBoost:[I

.field private blacklist mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mRsrpBoostLock:Ljava/lang/Object;

.field private blacklist mSignalBarInfo:Landroid/telephony/SignalBarInfo;

.field private final blacklist mSignalRequestRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSignalStrength:Landroid/telephony/SignalStrength;

.field private final blacklist mSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mSignalStrengthLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mSignalStrengthUpdatedTime:J


# direct methods
.method public static synthetic blacklist $r8$lambda$3ab7jdXS7yyfbCNCA9jhrT6c0Z4(ILcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)Z
    .locals 1

    .line 1100
    iget v0, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    if-ne v0, p0, :cond_0

    iget-object p0, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-static {p0}, Lcom/android/internal/telephony/SignalStrengthController;->isSignalReportRequestedWhileIdle(Landroid/telephony/SignalStrengthUpdateRequest;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$BHo4qyiF2lMWm-WtdRmeLKgOJLk(Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)Z
    .locals 2

    .line 216
    iget v0, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mCallingUid:I

    iget v1, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mCallingUid:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    iget p0, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Pz2aXYJs5pfiFRl_aqMzGKEFgJ0(ILcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)Z
    .locals 1

    .line 997
    iget v0, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    if-ne p0, v0, :cond_0

    iget-object p0, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    .line 998
    invoke-virtual {p0}, Landroid/telephony/SignalStrengthUpdateRequest;->isSystemThresholdReportingRequestedWhileIdle()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$mHsdxhdo_O3rsbeExrHsUbGvWbY(ILjava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 947
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, p0

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p0

    if-gt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 950
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$xpn0JUCwYcdRZnbUJw4F5I0XulM(Lcom/android/internal/telephony/SignalStrengthController;IIII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SignalStrengthController;->lambda$new$0(IIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlocalLog(Lcom/android/internal/telephony/SignalStrengthController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/internal/telephony/SignalStrengthController;->SIGNAL_STRENGTH_REFRESH_THRESHOLD_IN_MS:J

    const-wide/16 v1, 0x14

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/SignalStrengthController;->POLL_PERIOD_MILLIS:J

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 5

    .line 170
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 121
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 130
    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalBarInfo:Landroid/telephony/SignalBarInfo;

    .line 133
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthLog:Lcom/android/internal/telephony/LocalLog;

    .line 141
    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 146
    iput v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLteRsrpBoost:I

    .line 152
    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;

    .line 154
    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    .line 156
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mRsrpBoostLock:Ljava/lang/Object;

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    .line 165
    new-instance v3, Lcom/android/internal/telephony/LocalLog;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 168
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNTNConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 171
    iput-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 172
    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x4

    .line 174
    invoke-interface {v1, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v3, 0x5

    .line 175
    invoke-interface {v1, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 176
    invoke-interface {v1, p0, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->setSignalStrengthDefaultValues()V

    .line 179
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 180
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_0

    .line 183
    new-instance v2, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/SignalStrengthController;)V

    new-instance v3, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/SignalStrengthController;)V

    invoke-virtual {v1, v2, v3}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    :cond_0
    const/16 v1, 0xa

    .line 188
    invoke-virtual {p1, p0, v1, v0}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    new-instance v1, Landroid/telephony/SignalBarInfo;

    invoke-direct {v1}, Landroid/telephony/SignalBarInfo;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalBarInfo:Landroid/telephony/SignalBarInfo;

    .line 193
    iget-object p1, p1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v1, 0x3e9

    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForSignalBarInfoChange(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist computeHysteresisDbOnSmallestThresholdDelta(I[I)I
    .locals 4

    .line 804
    array-length p0, p2

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    const/4 p0, 0x0

    .line 805
    :goto_0
    array-length v1, p2

    sub-int/2addr v1, v0

    if-eq p0, v1, :cond_1

    add-int/lit8 v1, p0, 0x1

    .line 806
    aget v2, p2, v1

    aget p0, p2, p0

    sub-int v3, v2, p0

    if-ge v3, p1, :cond_0

    sub-int/2addr v2, p0

    move p1, v2

    :cond_0
    move p0, v1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private blacklist consolidatedAndSetReportingCriteria(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;)V"
        }
    .end annotation

    .line 658
    new-instance v0, Ljava/util/ArrayList;

    .line 659
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 660
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalThresholdInfo;

    .line 661
    invoke-virtual {v1}, Landroid/telephony/SignalThresholdInfo;->getRadioAccessNetworkType()I

    move-result v2

    .line 662
    invoke-virtual {v1}, Landroid/telephony/SignalThresholdInfo;->getSignalMeasurementType()I

    move-result v3

    .line 664
    invoke-virtual {v1}, Landroid/telephony/SignalThresholdInfo;->isEnabled()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->shouldHonorSystemThresholds()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    if-eqz v4, :cond_1

    .line 670
    invoke-virtual {v1}, Landroid/telephony/SignalThresholdInfo;->getThresholds()[I

    move-result-object v1

    goto :goto_2

    .line 671
    :cond_1
    new-array v1, v5, [I

    .line 666
    :goto_2
    invoke-virtual {p0, v2, v3, v1, v6}, Lcom/android/internal/telephony/SignalStrengthController;->getConsolidatedSignalThresholds(II[II)[I

    move-result-object v1

    .line 673
    iget-object v7, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 677
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 678
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->isDeviceIdle()Z

    move-result v8

    .line 674
    invoke-virtual {p0, v2, v3, v7, v8}, Lcom/android/internal/telephony/SignalStrengthController;->shouldEnableSignalThresholdForAppRequest(IIIZ)Z

    move-result v7

    .line 679
    invoke-virtual {p0, v7, v2, v3, v1}, Lcom/android/internal/telephony/SignalStrengthController;->getMinimumHysteresisDb(ZII[I)I

    move-result v8

    .line 681
    new-instance v9, Landroid/telephony/SignalThresholdInfo$Builder;

    invoke-direct {v9}, Landroid/telephony/SignalThresholdInfo$Builder;-><init>()V

    .line 683
    invoke-virtual {v9, v2}, Landroid/telephony/SignalThresholdInfo$Builder;->setRadioAccessNetworkType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v2

    .line 684
    invoke-virtual {v2, v3}, Landroid/telephony/SignalThresholdInfo$Builder;->setSignalMeasurementType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v2

    const/16 v3, 0xbb8

    .line 685
    invoke-virtual {v2, v3}, Landroid/telephony/SignalThresholdInfo$Builder;->setHysteresisMs(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v2

    .line 686
    invoke-virtual {v2, v8}, Landroid/telephony/SignalThresholdInfo$Builder;->setHysteresisDb(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v2

    .line 687
    invoke-virtual {v2, v1, v6}, Landroid/telephony/SignalThresholdInfo$Builder;->setThresholds([IZ)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v1

    if-nez v4, :cond_2

    if-eqz v7, :cond_3

    :cond_2
    move v5, v6

    .line 688
    :cond_3
    invoke-virtual {v1, v5}, Landroid/telephony/SignalThresholdInfo$Builder;->setIsEnabled(Z)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v1

    .line 689
    invoke-virtual {v1}, Landroid/telephony/SignalThresholdInfo$Builder;->build()Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 681
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 691
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSignalStrengthReportingCriteria(Ljava/util/List;Landroid/os/Message;)V

    .line 693
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSignalStrengthReportingCriteria consolidatedSignalThresholdInfos="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist containsEarfcnInEarfcnRange(Ljava/util/ArrayList;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;I)I"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1179
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/util/Pair;

    .line 1180
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt p1, v4, :cond_0

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt p1, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist convertEarfcnStringArrayToPairList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    move v2, v1

    .line 1204
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    .line 1206
    :try_start_0
    aget-object v4, p0, v2

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1207
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    return-object v3

    .line 1214
    :cond_0
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    .line 1215
    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v5, v4, :cond_1

    return-object v3

    .line 1224
    :cond_1
    new-instance v6, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    return-object v3

    :cond_2
    return-object v0
.end method

.method private static blacklist createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;
    .locals 1

    .line 1260
    new-instance v0, Landroid/telephony/SignalThresholdInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/SignalThresholdInfo$Builder;-><init>()V

    .line 1261
    invoke-virtual {v0, p0}, Landroid/telephony/SignalThresholdInfo$Builder;->setSignalMeasurementType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object p0

    .line 1262
    invoke-virtual {p0, p1}, Landroid/telephony/SignalThresholdInfo$Builder;->setThresholds([I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object p0

    .line 1263
    invoke-virtual {p0, p2}, Landroid/telephony/SignalThresholdInfo$Builder;->setRadioAccessNetworkType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object p0

    .line 1264
    invoke-virtual {p0, p3}, Landroid/telephony/SignalThresholdInfo$Builder;->setIsEnabled(Z)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object p0

    .line 1265
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo$Builder;->build()Landroid/telephony/SignalThresholdInfo;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getCarrierConfig()Landroid/os/PersistableBundle;
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    .line 1057
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 1060
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 1066
    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getHysteresisDbFromCarrierConfig(II)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_8

    if-eq p1, v1, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 783
    const-string p1, "No matching configuration"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 775
    const-string p1, "ngran_ssrsrp_hysteresis_db_int"

    goto :goto_1

    :cond_1
    const/4 p1, 0x7

    if-ne p2, p1, :cond_2

    .line 777
    const-string p1, "ngran_ssrsrq_hysteresis_db_int"

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    if-ne p2, p1, :cond_9

    .line 779
    const-string p1, "ngran_sssinr_hysteresis_db_int"

    goto :goto_1

    :cond_3
    if-ne p2, v0, :cond_4

    .line 766
    const-string p1, "eutran_rsrp_hysteresis_db_int"

    goto :goto_1

    :cond_4
    const/4 p1, 0x4

    if-ne p2, p1, :cond_5

    .line 768
    const-string p1, "eutran_rsrq_hysteresis_db_int"

    goto :goto_1

    :cond_5
    const/4 p1, 0x5

    if-ne p2, p1, :cond_9

    .line 770
    const-string p1, "eutran_rssnr_hysteresis_db_int"

    goto :goto_1

    :cond_6
    if-ne p2, v1, :cond_7

    .line 759
    const-string p1, "utran_rscp_hysteresis_db_int"

    goto :goto_1

    :cond_7
    const/16 p1, 0x9

    if-ne p2, p1, :cond_9

    .line 761
    const-string p1, "utran_ecno_hysteresis_db_int"

    goto :goto_1

    :cond_8
    if-ne p2, v0, :cond_9

    .line 754
    const-string p1, "geran_rssi_hysteresis_db_int"

    goto :goto_1

    :cond_9
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_a

    .line 786
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-virtual {p0, p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_2

    :cond_a
    move p0, v1

    :goto_2
    if-ltz p0, :cond_b

    return p0

    :cond_b
    return v1
.end method

.method private blacklist getHysteresisDbFromSignalThresholdInfoRequests(II)I
    .locals 4

    .line 735
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x2

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 736
    iget-object v1, v1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v1}, Landroid/telephony/SignalStrengthUpdateRequest;->getSignalThresholdInfos()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SignalThresholdInfo;

    .line 737
    invoke-static {p1, p2, v2}, Lcom/android/internal/telephony/SignalStrengthController;->isRanAndSignalMeasurementTypeMatch(IILandroid/telephony/SignalThresholdInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 738
    invoke-virtual {v2}, Landroid/telephony/SignalThresholdInfo;->getHysteresisDb()I

    move-result v3

    if-ltz v3, :cond_1

    .line 739
    invoke-virtual {v2}, Landroid/telephony/SignalThresholdInfo;->getHysteresisDb()I

    move-result v0

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static blacklist isRanAndSignalMeasurementTypeMatch(IILandroid/telephony/SignalThresholdInfo;)Z
    .locals 1

    .line 1038
    invoke-virtual {p2}, Landroid/telephony/SignalThresholdInfo;->getRadioAccessNetworkType()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 1039
    invoke-virtual {p2}, Landroid/telephony/SignalThresholdInfo;->getSignalMeasurementType()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isSignalReportRequestedWhileIdle(Landroid/telephony/SignalStrengthUpdateRequest;)Z
    .locals 1

    .line 1044
    invoke-virtual {p0}, Landroid/telephony/SignalStrengthUpdateRequest;->isSystemThresholdReportingRequestedWhileIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1045
    invoke-virtual {p0}, Landroid/telephony/SignalStrengthUpdateRequest;->isReportingRequestedWhileIdle()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isUsingNonTerrestrialNetwork()Z
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1446
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->onCarrierConfigurationChanged(I)V

    return-void
.end method

.method private blacklist localLog(Ljava/lang/String;)V
    .locals 2

    .line 1459
    const-string v0, "SSCtr"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSCtr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 2

    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SSCtr"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    .line 1454
    const-string v0, "SSCtr"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist maybeOverrideSignalStrengthForTest(Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 1

    .line 404
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyTester()Lcom/android/internal/telephony/TelephonyTester;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getTelephonyTester()Lcom/android/internal/telephony/TelephonyTester;

    move-result-object p0

    .line 406
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyTester;->getOverriddenSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    .line 405
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SignalStrength;

    return-object p0

    :cond_0
    return-object p1
.end method

.method private blacklist onCarrierConfigurationChanged(I)V
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 1245
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 1250
    const-string p1, "Carrier Config changed."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->logd(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateArfcnLists()V

    .line 1254
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateReportingCriteria()V

    .line 1255
    new-instance p1, Landroid/telephony/SignalStrength;

    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p1, v0}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method private blacklist onReset()V
    .locals 0

    .line 344
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->setDefaultSignalStrengthReportingCriteria()V

    return-void
.end method

.method private blacklist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 1431
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1435
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNTNConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged: update it to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SignalStrengthController;->log(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateReportingCriteria()V

    .line 1438
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNTNConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist onSignalStrengthResult(Landroid/os/AsyncResult;)V
    .locals 2

    .line 360
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 361
    check-cast v0, Landroid/telephony/SignalStrength;

    .line 363
    iget-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result p1

    if-nez p1, :cond_2

    .line 364
    iget-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 365
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalBarInfo:Landroid/telephony/SignalBarInfo;

    invoke-virtual {v0, p1}, Landroid/telephony/SignalStrength;->setSignalBar(Landroid/telephony/SignalBarInfo;)V

    goto :goto_0

    .line 368
    :cond_0
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    goto :goto_0

    .line 373
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/SignalStrengthController;->loge(Ljava/lang/String;)V

    .line 374
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 376
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SignalStrengthController;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method private blacklist setDefaultSignalStrengthReportingCriteria()V
    .locals 7

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 587
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->GERAN:[I

    const/4 v2, 0x1

    .line 588
    invoke-static {v2, v1, v2, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 587
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->UTRAN:[I

    const/4 v3, 0x2

    .line 594
    invoke-static {v3, v1, v3, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 593
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSRP:[I

    const/4 v4, 0x3

    .line 600
    invoke-static {v4, v1, v4, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 599
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->CDMA2000:[I

    const/4 v5, 0x4

    .line 606
    invoke-static {v2, v1, v5, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 605
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSRQ:[I

    const/4 v6, 0x0

    .line 614
    invoke-static {v5, v1, v4, v6}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 613
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    .line 619
    sget-object v5, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSSNR:[I

    .line 620
    invoke-static {v1, v5, v4, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 619
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSRSRP:[I

    const/4 v4, 0x6

    .line 628
    invoke-static {v4, v1, v4, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 627
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    .line 633
    sget-object v2, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSRSRQ:[I

    .line 634
    invoke-static {v1, v2, v4, v6}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 633
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    .line 639
    sget-object v2, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSSINR:[I

    .line 640
    invoke-static {v1, v2, v4, v6}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 639
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x9

    .line 645
    sget-object v2, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->UTRAN_ECNO:[I

    .line 646
    invoke-static {v1, v2, v3, v6}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 645
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SignalStrengthController;->consolidatedAndSetReportingCriteria(Ljava/util/List;)V

    return-void
.end method

.method private blacklist shouldRefreshSignalStrength()Z
    .locals 6

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 426
    iget-wide v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthUpdatedTime:J

    cmp-long v4, v2, v0

    const/4 v5, 0x0

    if-gtz v4, :cond_1

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/internal/telephony/SignalStrengthController;->SIGNAL_STRENGTH_REFRESH_THRESHOLD_IN_MS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return v5

    .line 430
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 431
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 432
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 431
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 434
    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 435
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 439
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 440
    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 441
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 442
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 444
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_3
    return v5
.end method

.method private blacklist updateAlwaysReportSignalStrength()V
    .locals 3

    .line 1098
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 1099
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 1104
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->setAlwaysReportSignalStrength(Z)V

    return-void
.end method

.method private blacklist updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 2

    .line 386
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->maybeOverrideSignalStrengthForTest(Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 387
    iget-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/SignalStrength;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 391
    :cond_0
    const-string p1, "updateSignalStrength: serviceStateTracker is null"

    invoke-static {p1}, Lcom/android/internal/telephony/SignalStrengthController;->loge(Ljava/lang/String;)V

    .line 393
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthUpdatedTime:J

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->notifySignalStrength()V

    return-void
.end method

.method private static blacklist validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;
    .locals 4

    .line 1277
    :try_start_0
    new-instance v0, Landroid/telephony/SignalThresholdInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/SignalThresholdInfo$Builder;-><init>()V

    .line 1278
    invoke-virtual {v0, p0}, Landroid/telephony/SignalThresholdInfo$Builder;->setSignalMeasurementType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    .line 1279
    invoke-virtual {v0, p1}, Landroid/telephony/SignalThresholdInfo$Builder;->setThresholds([I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    .line 1280
    invoke-virtual {v0, p3}, Landroid/telephony/SignalThresholdInfo$Builder;->setRadioAccessNetworkType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    .line 1281
    invoke-virtual {v0, p4}, Landroid/telephony/SignalThresholdInfo$Builder;->setIsEnabled(Z)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    .line 1282
    invoke-virtual {v0}, Landroid/telephony/SignalThresholdInfo$Builder;->build()Landroid/telephony/SignalThresholdInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1287
    :catch_0
    new-instance v0, Landroid/telephony/SignalThresholdInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/SignalThresholdInfo$Builder;-><init>()V

    .line 1288
    invoke-virtual {v0, p0}, Landroid/telephony/SignalThresholdInfo$Builder;->setSignalMeasurementType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    .line 1289
    invoke-virtual {v0, p2}, Landroid/telephony/SignalThresholdInfo$Builder;->setThresholds([I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    .line 1290
    invoke-virtual {v0, p3}, Landroid/telephony/SignalThresholdInfo$Builder;->setRadioAccessNetworkType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    .line 1291
    invoke-virtual {v0, p4}, Landroid/telephony/SignalThresholdInfo$Builder;->setIsEnabled(Z)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    .line 1292
    invoke-virtual {v0}, Landroid/telephony/SignalThresholdInfo$Builder;->build()Landroid/telephony/SignalThresholdInfo;

    move-result-object v0

    .line 1294
    const-string v1, "28232bc4-78ff-447e-b597-7c054c802407"

    .line 1295
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid parameter to generate SignalThresholdInfo: measurementType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", thresholds="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", RAN="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isEnabled="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ". Replaced with default thresholds: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1294
    invoke-static {v1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public blacklist clearSignalStrengthUpdateRequest(IILandroid/telephony/SignalStrengthUpdateRequest;Landroid/os/Message;)V
    .locals 2

    .line 919
    new-instance v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;-><init>(Lcom/android/internal/telephony/SignalStrengthController;IILandroid/telephony/SignalStrengthUpdateRequest;)V

    .line 920
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p4, 0x2

    invoke-virtual {p0, p4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 923
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearSignalStrengthUpdateRequest subId="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " callingUid="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " request="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method blacklist dispose()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->unregisterForSignalBarInfoChange(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrengthController - phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    const-string v0, "SignalStrengthController - Log Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 877
    const-string v0, "SignalStrengthController - Log End ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 880
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSignalRequestRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLastSignalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSignalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLteRsrpBoost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLteRsrpBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNrRsrpBoost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mEarfcnPairListForRsrpBoost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNrarfcnRangeListForRsrpBoost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 889
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 891
    const-string p2, " RSSI level Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 893
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 894
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 895
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getConsolidatedSignalThresholds(II[II)[I
    .locals 7

    .line 946
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p4}, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 954
    array-length v1, p3

    move v2, p4

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p3, v2

    .line 955
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 959
    :cond_0
    iget-object p3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->isDeviceIdle()Z

    move-result p3

    .line 960
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 964
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 965
    iget v3, v2, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    if-ne v1, v3, :cond_1

    if-eqz p3, :cond_2

    iget-object v3, v2, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    .line 966
    invoke-virtual {v3}, Landroid/telephony/SignalStrengthUpdateRequest;->isReportingRequestedWhileIdle()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 969
    :cond_2
    iget-object v2, v2, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v2}, Landroid/telephony/SignalStrengthUpdateRequest;->getSignalThresholdInfos()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SignalThresholdInfo;

    .line 970
    invoke-static {p1, p2, v3}, Lcom/android/internal/telephony/SignalStrengthController;->isRanAndSignalMeasurementTypeMatch(IILandroid/telephony/SignalThresholdInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 971
    invoke-virtual {v3}, Landroid/telephony/SignalThresholdInfo;->getThresholds()[I

    move-result-object v3

    array-length v4, v3

    move v5, p4

    :goto_2
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    .line 972
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 978
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 980
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p3, p4, 0x1

    .line 981
    aput p2, p0, p4

    move p4, p3

    goto :goto_3

    :cond_5
    return-object p0
.end method

.method public blacklist getMinimumHysteresisDb(ZII[I)I
    .locals 1

    .line 707
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/SignalStrengthController;->getHysteresisDbFromCarrierConfig(II)I

    move-result v0

    if-eqz p1, :cond_0

    .line 712
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/SignalStrengthController;->getHysteresisDbFromSignalThresholdInfoRequests(II)I

    move-result p1

    .line 715
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 718
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/SignalStrengthController;->computeHysteresisDbOnSmallestThresholdDelta(I[I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public blacklist getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .line 414
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->shouldRefreshSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const-string v0, "getSignalStrength() refreshing signal strength."

    invoke-static {v0}, Lcom/android/internal/telephony/SignalStrengthController;->log(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 416
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 418
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p0
.end method

.method blacklist getSignalStrengthFromCi()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 202
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_4

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 327
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled message with number: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SignalStrengthController;->log(Ljava/lang/String;)V

    return-void

    .line 308
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ServiceState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void

    .line 302
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 303
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    return-void

    .line 295
    :pswitch_2
    iget-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    return-void

    .line 283
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 287
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 288
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    return-void

    .line 205
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->onReset()V

    return-void

    .line 274
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateReportingCriteria()V

    return-void

    .line 244
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 246
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 247
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    .line 250
    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 251
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 253
    iget-object v4, v3, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v4}, Landroid/telephony/SignalStrengthUpdateRequest;->getLiveToken()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v5}, Landroid/telephony/SignalStrengthUpdateRequest;->getLiveToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    :try_start_0
    iget-object v4, v3, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v4}, Landroid/telephony/SignalStrengthUpdateRequest;->getLiveToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :catch_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 263
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateAlwaysReportSignalStrength()V

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateReportingCriteria()V

    if-eqz p1, :cond_6

    .line 267
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 268
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 208
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 210
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 211
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    .line 212
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    .line 215
    iget-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 219
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setSignalStrengthUpdateRequest called again with same subId"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 221
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 226
    :cond_3
    :try_start_1
    iget-object v3, v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v3}, Landroid/telephony/SignalStrengthUpdateRequest;->getLiveToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateAlwaysReportSignalStrength()V

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateReportingCriteria()V

    .line 239
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 228
    :catch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Signal request client is already dead."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 230
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 314
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 315
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_6

    .line 316
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SignalBarInfo;

    iput-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalBarInfo:Landroid/telephony/SignalBarInfo;

    if-nez p1, :cond_5

    .line 318
    const-string p1, "EVENT_SIGNAL_LEVEL_INFO_CHANGED - mSignalBarInfo is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->logd(Ljava/lang/String;)V

    return-void

    .line 321
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_SIGNAL_LEVEL_INFO_CHANGED - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalBarInfo:Landroid/telephony/SignalBarInfo;

    invoke-virtual {v0}, Landroid/telephony/SignalBarInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->logd(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method blacklist notifySignalStrength()V
    .locals 4

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 826
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 828
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 829
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->notifySignalStrength()V

    .line 830
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLastSignalStrength:Landroid/telephony/SignalStrength;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSignalStrength() Phone already destroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "SignalStrength not notified"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SignalStrengthController;->loge(Ljava/lang/String;)V

    .line 837
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_1

    .line 839
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getSignalBar()Landroid/telephony/SignalBarInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getSignalBar()Landroid/telephony/SignalBarInfo;

    move-result-object v0

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getSignalBar()Landroid/telephony/SignalBarInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/SignalBarInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 840
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v0

    .line 841
    invoke-static {v0}, Lcom/android/internal/telephony/SignalStrengthController;->log(Ljava/lang/String;)V

    .line 842
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public blacklist onDeviceIdleStateChanged(Z)V
    .locals 2

    .line 1006
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceIdleStateChanged isDeviceIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist registerForSignalStrengthChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 854
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 855
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method blacklist setSignalStrengthDefaultValues()V
    .locals 2

    .line 818
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SignalStrengthController;->maybeOverrideSignalStrengthForTest(Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 819
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthUpdatedTime:J

    return-void
.end method

.method public blacklist setSignalStrengthUpdateRequest(IILandroid/telephony/SignalStrengthUpdateRequest;Landroid/os/Message;)V
    .locals 2

    .line 904
    new-instance v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;-><init>(Lcom/android/internal/telephony/SignalStrengthController;IILandroid/telephony/SignalStrengthUpdateRequest;)V

    .line 905
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p4, 0x1

    invoke-virtual {p0, p4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 908
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSignalStrengthUpdateRequest subId="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " callingUid="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " request="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist shouldEnableSignalThresholdForAppRequest(IIIZ)Z
    .locals 3

    .line 1020
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 1021
    iget v1, v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    if-eq p3, v1, :cond_1

    goto :goto_0

    .line 1024
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v1}, Landroid/telephony/SignalStrengthUpdateRequest;->getSignalThresholdInfos()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SignalThresholdInfo;

    .line 1025
    invoke-static {p1, p2, v2}, Lcom/android/internal/telephony/SignalStrengthController;->isRanAndSignalMeasurementTypeMatch(IILandroid/telephony/SignalThresholdInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p4, :cond_3

    iget-object v2, v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    .line 1026
    invoke-static {v2}, Lcom/android/internal/telephony/SignalStrengthController;->isSignalReportRequestedWhileIdle(Landroid/telephony/SignalStrengthUpdateRequest;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist shouldHonorSystemThresholds()Z
    .locals 2

    .line 991
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isDeviceIdle()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 996
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist unregisterForSignalStrengthChanged(Landroid/os/Handler;)V
    .locals 0

    .line 863
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method blacklist updateArfcnLists()V
    .locals 4

    .line 1108
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mRsrpBoostLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1109
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "lte_earfcns_rsrp_boost_int"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLteRsrpBoost:I

    .line 1111
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "boosted_lte_earfcns_string_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1113
    invoke-static {v1}, Lcom/android/internal/telephony/SignalStrengthController;->convertEarfcnStringArrayToPairList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    .line 1116
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "nrarfcns_rsrp_boost_int_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    .line 1118
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "boosted_nrarfcns_string_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1120
    invoke-static {v1}, Lcom/android/internal/telephony/SignalStrengthController;->convertEarfcnStringArrayToPairList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;

    .line 1123
    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    if-nez v2, :cond_0

    if-nez v1, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    array-length v2, v2

    .line 1126
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v2, v1, :cond_3

    .line 1127
    :cond_2
    const-string v1, "Invalid parameters for NR RSRP boost"

    invoke-static {v1}, Lcom/android/internal/telephony/SignalStrengthController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1128
    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    .line 1129
    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1131
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist updateReportingCriteria()V
    .locals 11

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "gsm_rssi_thresholds_int_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 464
    sget-object v3, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->GERAN:[I

    .line 465
    invoke-static {v2, v1, v3, v2, v2}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 464
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v3, "wcdma_rscp_thresholds_int_array"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    .line 476
    sget-object v4, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->UTRAN:[I

    .line 477
    invoke-static {v3, v1, v4, v3, v2}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 476
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->isUsingNonTerrestrialNetwork()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 486
    const-string v4, "parameters_used_for_ntn_lte_signal_bar_int"

    goto :goto_0

    .line 487
    :cond_2
    const-string v4, "parameters_used_for_lte_signal_bar_int"

    .line 485
    :goto_0
    invoke-virtual {v1, v4, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 489
    iget-object v4, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->isUsingNonTerrestrialNetwork()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 490
    const-string v5, "ntn_lte_rsrp_thresholds_int_array"

    goto :goto_1

    .line 491
    :cond_3
    const-string v5, "lte_rsrp_thresholds_int_array"

    .line 489
    :goto_1
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    .line 493
    sget-object v7, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSRP:[I

    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_4

    move v8, v2

    goto :goto_2

    :cond_4
    move v8, v6

    .line 494
    :goto_2
    invoke-static {v5, v4, v7, v5, v8}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v4

    .line 493
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v4

    sget-object v8, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 503
    iget-object v4, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->isUsingNonTerrestrialNetwork()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 504
    const-string v8, "ntn_lte_rsrq_thresholds_int_array"

    goto :goto_3

    .line 505
    :cond_6
    const-string v8, "lte_rsrq_thresholds_int_array"

    .line 503
    :goto_3
    invoke-virtual {v4, v8}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_8

    .line 507
    sget-object v8, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSRQ:[I

    and-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_7

    move v9, v2

    goto :goto_4

    :cond_7
    move v9, v6

    .line 508
    :goto_4
    invoke-static {v7, v4, v8, v5, v9}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v4

    .line 507
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->isUsingNonTerrestrialNetwork()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 517
    const-string v8, "ntn_lte_rssnr_thresholds_int_array"

    goto :goto_5

    .line 518
    :cond_9
    const-string v8, "lte_rssnr_thresholds_int_array"

    .line 516
    :goto_5
    invoke-virtual {v4, v8}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_b

    .line 520
    sget-object v8, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSSNR:[I

    and-int/2addr v1, v7

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_6

    :cond_a
    move v1, v6

    :goto_6
    const/4 v9, 0x5

    .line 521
    invoke-static {v9, v4, v8, v5, v1}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 520
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v4, "parameters_use_for_5g_nr_signal_bar_int"

    invoke-virtual {v1, v4, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 531
    iget-object v4, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v5, "5g_nr_ssrsrp_thresholds_int_array"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const/4 v5, 0x6

    if-eqz v4, :cond_d

    .line 534
    sget-object v8, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSRSRP:[I

    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_c

    move v9, v2

    goto :goto_7

    :cond_c
    move v9, v6

    .line 535
    :goto_7
    invoke-static {v5, v4, v8, v5, v9}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v4

    .line 534
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_d
    iget-object v4, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v8, "5g_nr_ssrsrq_thresholds_int_array"

    invoke-virtual {v4, v8}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_f

    .line 546
    sget-object v8, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSRSRQ:[I

    and-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_e

    move v9, v2

    goto :goto_8

    :cond_e
    move v9, v6

    :goto_8
    const/4 v10, 0x7

    .line 547
    invoke-static {v10, v4, v8, v5, v9}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v4

    .line 546
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_f
    iget-object v4, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v8, "5g_nr_sssinr_thresholds_int_array"

    invoke-virtual {v4, v8}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_11

    .line 558
    sget-object v8, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSSINR:[I

    and-int/2addr v1, v7

    if-eqz v1, :cond_10

    goto :goto_9

    :cond_10
    move v2, v6

    :goto_9
    const/16 v1, 0x8

    .line 559
    invoke-static {v1, v4, v8, v5, v2}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 558
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_11
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "wcdma_ecno_thresholds_int_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_12

    const/16 v2, 0x9

    .line 570
    sget-object v4, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->UTRAN_ECNO:[I

    .line 571
    invoke-static {v2, v1, v4, v3, v6}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 570
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_12
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SignalStrengthController;->consolidatedAndSetReportingCriteria(Ljava/util/List;)V

    return-void
.end method

.method blacklist updateServiceStateArfcnRsrpBoost(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mRsrpBoostLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1144
    :try_start_0
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 1154
    :cond_1
    check-cast p2, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result p2

    if-eq p2, v3, :cond_3

    .line 1156
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SignalStrengthController;->containsEarfcnInEarfcnRange(Ljava/util/ArrayList;I)I

    move-result p2

    if-eq p2, v3, :cond_3

    .line 1158
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    if-eqz p0, :cond_3

    .line 1159
    aget v4, p0, p2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1146
    :cond_2
    check-cast p2, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result p2

    if-eq p2, v3, :cond_3

    .line 1147
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    .line 1148
    invoke-static {v1, p2}, Lcom/android/internal/telephony/SignalStrengthController;->containsEarfcnInEarfcnRange(Ljava/util/ArrayList;I)I

    move-result p2

    if-eq p2, v3, :cond_3

    .line 1150
    iget v4, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLteRsrpBoost:I

    .line 1166
    :cond_3
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setArfcnRsrpBoost(I)V

    return-void

    .line 1166
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
