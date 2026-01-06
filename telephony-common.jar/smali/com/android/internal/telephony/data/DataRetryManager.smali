.class public Lcom/android/internal/telephony/data/DataRetryManager;
.super Landroid/os/Handler;
.source "DataRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;
    }
.end annotation


# static fields
.field private static final blacklist IpReviseFeature:Z

.field private static final blacklist RETRY_LONG_DELAY_TIMER_THRESHOLD_MILLIS:J


# instance fields
.field private final blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private blacklist mDataHandoverRetryRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

.field private final blacklist mDataRetryEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataRetryManagerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataServiceManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDataSetupRetryRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataThrottlingEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mRil:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method public static synthetic blacklist $r8$lambda$2QPrTWFJEQfbXxiMrCfcU1tGRbQ(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .locals 1

    .line 1149
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda29;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2q08wreD8SQji4p9oZIL5QxnSn0(Lcom/android/internal/telephony/data/DataRetryManager;IIZJLjava/lang/Integer;)Landroid/telephony/data/ThrottleStatus;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$notifyThrottleStatus$31(IIZJLjava/lang/Integer;)Landroid/telephony/data/ThrottleStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$4NP1fiIxH8cn1w05neFQX07Jv0s(JLjava/lang/String;ILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .locals 2

    .line 1760
    iget-wide v0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->expirationTimeMillis:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    iget-object p0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 1761
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 1762
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    if-ne p0, p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$4aEoOheSlaQMJFfyFR-mjg_GIJ8(Lcom/android/internal/telephony/data/DataNetwork;JLcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .locals 2

    .line 1929
    iget-object v0, p3, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    if-ne p0, v0, :cond_0

    iget-wide v0, p3, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->expirationTimeMillis:J

    cmp-long p0, v0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$7h92yHyDCkt77qYpC0cq-5KlJhI(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V
    .locals 1

    const/4 v0, 0x4

    .line 1476
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7ttgD3WsaIHopRhNyeyiFT7pKAQ(Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .locals 0

    .line 1749
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$9-CMb2XMELRP4aV3junWUYEGUsQ(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .locals 1

    .line 1696
    iget-object v0, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$9GoZvHPKvGNPYXAAm8t_75Y7Swc(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z
    .locals 2

    .line 1530
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1531
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic blacklist $r8$lambda$Fzy-6RsrPC52T6QyrWA45WqIu8M(Lcom/android/internal/telephony/data/DataRetryManager;Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$evaluateDataSetupRetry$8(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$H8IUUnwufPoIcbXqpNR0QS-y7u4(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .locals 0

    .line 1750
    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p1

    .line 1751
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$I-PkEF0vda2B8hTECYFVQbC5Ldc(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .locals 0

    .line 1753
    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p1

    .line 1754
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p0

    .line 1753
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Ke3msQQPmxByOCRA4oy16gprf3A(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Ljava/util/List;)V
    .locals 0

    .line 1978
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;->onThrottleStatusChanged(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LtkR_mhEvJdztkfg9U0UCjGNspE(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)Z
    .locals 2

    .line 1992
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    if-ne p1, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$N2WMLP-EwXreHZY16e7Kw94cahA(Lcom/android/internal/telephony/data/DataRetryManager;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$removeLastRetryEntry$14(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$N_AfLWgT3hSYr95y0RpMRl0dv-k(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .locals 0

    .line 1146
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;->onScreenDataRetry()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RCiDpDPuCMwZfE5txSNSnzuoLbs(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .locals 0

    .line 1115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;->onDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UUIvSgaAON5yBXmuT5FhIDkhT9c(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .locals 1

    .line 1114
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda28;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda28;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UwHzxSO00TZ4wbgZU7r72R8TAbE(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V
    .locals 0

    .line 1108
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;->onDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_qXdm1Cd3vvU1Px1776RFwUvp9U(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z
    .locals 2

    .line 1831
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1832
    instance-of v0, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    if-eqz v0, :cond_0

    .line 1833
    check-cast p2, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    .line 1834
    iget-object v0, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->transport:I

    if-ne p1, p0, :cond_1

    return v1

    .line 1836
    :cond_0
    instance-of p1, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    if-eqz p1, :cond_1

    .line 1837
    check-cast p2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    .line 1838
    iget-object p1, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ajxEg5VA5gP9WKDZYpB_CB642-I(Lcom/android/internal/telephony/data/DataRetryManager;Lcom/android/internal/telephony/data/DataNetwork;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$evaluateDataHandoverRetry$9(Lcom/android/internal/telephony/data/DataNetwork;IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$b7l5hzDzV7M17D26t3_DO1qsu-k(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .locals 0

    .line 1150
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;->onDataRetryPermanent()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fBd_WT5R2Y_bnJfOo3l9fhzYr4A(Landroid/telephony/data/DataProfile;JILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .locals 2

    .line 1902
    iget-object v0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, p0}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-wide v0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->expirationTimeMillis:J

    cmp-long p0, v0, p1

    if-lez p0, :cond_0

    iget p0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    if-ne p0, p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$j3MLF-1AJO4fMhlOQfcyvMAqQyo(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z
    .locals 1

    .line 1922
    instance-of v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    iget-object v0, v0, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    if-ne v0, p0, :cond_0

    .line 1924
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$lX5rw9diLy1OGKk6btd-Nm9HNYY(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V
    .locals 1

    const/4 v0, 0x4

    .line 1925
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$miuplOrHB0xSUIllb9kyCXfOtQ0(JILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .locals 2

    .line 1745
    iget-wide v0, p3, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->expirationTimeMillis:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    iget p0, p3, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$o_67D2wRhkL2r3buKAobcRwl1p0(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)Z
    .locals 0

    .line 1534
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$obIqCxcul86c1jaKv9VAwxeJGdI(Ljava/util/List;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .locals 1

    .line 1977
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda37;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda37;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sFrftEt7V4UEsc2poOcYnV4U4c8(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .locals 1

    .line 1107
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda25;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda25;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uwAielCH_oqHGk8fDu9Qb8yDp84(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .locals 1

    .line 1145
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda33;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$v_Y5ybnLKGcxdmgn7jvcW7uO_qk(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V
    .locals 1

    const/4 v0, 0x4

    .line 1843
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wGpU2rI8KRacnvNJa6MpJtTMQqY(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z
    .locals 1

    .line 1559
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$wruKB8rmG3FZ3m2SvvBMO1dIMZQ(Lcom/android/internal/telephony/data/DataRetryManager;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$schedule$16(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xzjAlo9LFB_qpZozhqkO5Y8f7PA(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z
    .locals 1

    .line 1475
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$zHCwBWp2OEANnmxKPMa754M473Y(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .locals 0

    .line 1941
    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monCarrierConfigUpdated(Lcom/android/internal/telephony/data/DataRetryManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataRetryManager;->onCarrierConfigUpdated()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monReset(Lcom/android/internal/telephony/data/DataRetryManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->onReset(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 86
    const-string v0, "ro.boot.carrierid"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "XXV"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "XEV"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/internal/telephony/data/DataRetryManager;->IpReviseFeature:Z

    .line 124
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 125
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/data/DataRetryManager;->RETRY_LONG_DELAY_TIMER_THRESHOLD_MILLIS:J

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/util/SparseArray;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Lcom/android/internal/telephony/data/DataNetworkController;",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;",
            "Landroid/os/Looper;",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;",
            ")V"
        }
    .end annotation

    .line 1038
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 176
    new-instance p4, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p4, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 187
    new-instance p4, Landroid/util/ArraySet;

    invoke-direct {p4}, Landroid/util/ArraySet;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    .line 1039
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1040
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    .line 1041
    iput-object p5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 1042
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DRM-"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLogTag:Ljava/lang/String;

    .line 1043
    invoke-interface {p4, p6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1045
    iput-object p3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataServiceManagers:Landroid/util/SparseArray;

    .line 1046
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 1047
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataProfileManager()Lcom/android/internal/telephony/data/DataProfileManager;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 1048
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p4

    const-class p5, Landroid/app/AlarmManager;

    invoke-virtual {p4, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/AlarmManager;

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1050
    new-instance p4, Lcom/android/internal/telephony/data/DataRetryManager$1;

    new-instance p5, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda2;

    invoke-direct {p5, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;)V

    invoke-direct {p4, p0, p5}, Lcom/android/internal/telephony/data/DataRetryManager$1;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p3, p4}, Lcom/android/internal/telephony/data/DataConfigManager;->registerCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 1057
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object p1

    array-length p3, p1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    aget p5, p1, p4

    .line 1058
    iget-object p6, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataServiceManagers:Landroid/util/SparseArray;

    invoke-virtual {p6, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/internal/telephony/data/DataServiceManager;

    const/4 p6, 0x6

    .line 1059
    invoke-virtual {p5, p0, p6}, Lcom/android/internal/telephony/data/DataServiceManager;->registerForApnUnthrottled(Landroid/os/Handler;I)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1061
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    new-instance p3, Lcom/android/internal/telephony/data/DataRetryManager$2;

    new-instance p4, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;)V

    invoke-direct {p3, p0, p4}, Lcom/android/internal/telephony/data/DataRetryManager$2;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/data/DataProfileManager;->registerCallback(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    .line 1067
    new-instance p1, Lcom/android/internal/telephony/data/DataRetryManager$3;

    new-instance p3, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;)V

    invoke-direct {p1, p0, p3}, Lcom/android/internal/telephony/data/DataRetryManager$3;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 1091
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0x8

    const/4 p3, 0x0

    invoke-interface {p1, p0, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1092
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0x9

    invoke-interface {p1, p0, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1094
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldResetDataThrottlingWhenTacChanges()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1095
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForAreaCodeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private blacklist cancelRetriesForDataProfile(Landroid/telephony/data/DataProfile;I)V
    .locals 2

    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelRetriesForDataProfile: Canceling pending retries for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1829
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda26;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda26;-><init>(Landroid/telephony/data/DataProfile;I)V

    .line 1830
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda27;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda27;-><init>()V

    .line 1843
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist getRetryFailedCount(ILcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;I)I
    .locals 6

    .line 1584
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 1585
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    if-eqz v3, :cond_2

    .line 1586
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    .line 1588
    iget v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->setupRetryType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->transport:I

    if-ne v4, p3, :cond_2

    .line 1590
    iget-object v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1592
    const-string v3, "Invalid data retry entry detected"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1593
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDataRetryEntries="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataRetryManager;->loge(Ljava/lang/String;)V

    .line 1594
    const-string v4, "afeab78c-c0b0-49fc-a51f-f766814d7aa6"

    .line 1595
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1597
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v5

    .line 1594
    invoke-static {v4, v3, v5}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    goto :goto_1

    .line 1600
    :cond_0
    iget-object v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1601
    invoke-virtual {v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPrioritySupportedNetworkCapability()I

    move-result v4

    if-ne v4, p1, :cond_2

    iget-object v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->appliedDataRetryRule:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;

    .line 1603
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1604
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 1605
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v2
.end method

.method private blacklist getRetryFailedCount(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;)I
    .locals 5

    .line 1499
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 1500
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    if-eqz v2, :cond_1

    .line 1501
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    .line 1502
    iget-object v3, v2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    if-ne v3, p1, :cond_1

    iget-object v3, v2, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->appliedDataRetryRule:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;

    .line 1503
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1504
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 1505
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private blacklist isKorSim()Z
    .locals 4

    .line 1517
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1518
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    goto :goto_0

    .line 1522
    :cond_0
    const-string p0, "450"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1519
    :cond_1
    :goto_0
    const-string v0, "isKorSim: failed to get SIM operator"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return v2
.end method

.method private blacklist isRetryCancelled(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1163
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1166
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry was removed earlier. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return v0
.end method

.method private synthetic blacklist lambda$evaluateDataHandoverRetry$9(Lcom/android/internal/telephony/data/DataNetwork;IJ)V
    .locals 0

    .line 1361
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->onEvaluateDataHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;IJ)V

    return-void
.end method

.method private synthetic blacklist lambda$evaluateDataSetupRetry$8(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .locals 0

    .line 1212
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/data/DataRetryManager;->onEvaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyThrottleStatus$31(IIZJLjava/lang/Integer;)Landroid/telephony/data/ThrottleStatus;
    .locals 1

    .line 1965
    new-instance v0, Landroid/telephony/data/ThrottleStatus$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ThrottleStatus$Builder;-><init>()V

    .line 1966
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    invoke-virtual {v0, p6}, Landroid/telephony/data/ThrottleStatus$Builder;->setApnType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p6

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1967
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {p6, p0}, Landroid/telephony/data/ThrottleStatus$Builder;->setSlotIndex(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p0

    .line 1968
    invoke-virtual {p0, p1}, Landroid/telephony/data/ThrottleStatus$Builder;->setRetryType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p0

    .line 1969
    invoke-virtual {p0, p2}, Landroid/telephony/data/ThrottleStatus$Builder;->setTransportType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 1971
    invoke-virtual {p0}, Landroid/telephony/data/ThrottleStatus$Builder;->setNoThrottle()Landroid/telephony/data/ThrottleStatus$Builder;

    goto :goto_0

    .line 1973
    :cond_0
    invoke-virtual {p0, p4, p5}, Landroid/telephony/data/ThrottleStatus$Builder;->setThrottleExpiryTimeMillis(J)Landroid/telephony/data/ThrottleStatus$Builder;

    .line 1975
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/data/ThrottleStatus$Builder;->build()Landroid/telephony/data/ThrottleStatus;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$removeLastRetryEntry$14(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)Z
    .locals 3

    .line 1536
    iget-object v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    const/4 v1, 0x0

    .line 1535
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 1536
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 1537
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ATT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private synthetic blacklist lambda$schedule$16(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V
    .locals 2

    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAlarm retry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1649
    instance-of v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 2038
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 2046
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .locals 0

    .line 2062
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 2063
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method private blacklist notifyThrottleStatus(Landroid/telephony/data/DataProfile;JII)V
    .locals 9

    .line 1956
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    if-eqz v6, :cond_1

    .line 1960
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    .line 1962
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 1963
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda31;

    move-object v3, p0

    move-wide v7, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda31;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;IIZJ)V

    .line 1964
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1976
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1977
    iget-object p0, v3, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda32;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda32;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method private blacklist onCancelPendingHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 8

    .line 1921
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda21;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1922
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda22;-><init>()V

    .line 1925
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1927
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1928
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda23;

    invoke-direct {v3, p1, v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda23;-><init>(Lcom/android/internal/telephony/data/DataNetwork;J)V

    .line 1929
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1930
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    if-nez v0, :cond_0

    return-void

    .line 1934
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelPendingHandoverRetry removed throttling entry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1935
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1936
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v3

    .line 1937
    iget v7, v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    const-wide/16 v4, -0x1

    const/4 v6, 0x3

    move-object v2, p0

    .line 1939
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/data/DataRetryManager;->notifyThrottleStatus(Landroid/telephony/data/DataProfile;JII)V

    .line 1941
    iget-object p0, v2, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-interface {p0, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private blacklist onCarrierConfigUpdated()V
    .locals 2

    const/4 v0, 0x5

    .line 1174
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->onReset(I)V

    .line 1175
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataSetupRetryRules()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    .line 1176
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataHandoverRetryRules()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConfigUpdated: mDataSetupRetryRuleList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDataHandoverRetryRuleList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;Ljava/lang/String;IZZ)V
    .locals 10

    .line 1732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataProfileUnthrottled: dataProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", apn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1733
    invoke-static {p3}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1732
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1736
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1737
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 1744
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    .line 1745
    new-instance v2, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0, v1, p3}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda12;-><init>(JI)V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 1747
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1748
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda13;-><init>()V

    .line 1749
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/data/DataProfile;)V

    .line 1750
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 1753
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/data/DataProfile;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1756
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1759
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0, v1, p2, p3}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda16;-><init>(JLjava/lang/String;I)V

    .line 1760
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1764
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 1767
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1768
    const-string p1, "onDataProfileUnthrottled: Nothing to unthrottle."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return-void

    .line 1773
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x0

    .line 1776
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    iget p2, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->retryType:I

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    .line 1777
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    move-object v5, p1

    move v8, v3

    goto :goto_1

    .line 1779
    :cond_4
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    iget p2, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->retryType:I

    if-ne p2, v1, :cond_5

    .line 1780
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object p1

    move-object v5, p1

    move v8, v1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    move-object v5, p1

    move v8, v0

    :goto_1
    if-eqz v5, :cond_6

    const-wide/16 v6, -0x1

    move-object v4, p0

    move v9, p3

    .line 1788
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/data/DataRetryManager;->notifyThrottleStatus(Landroid/telephony/data/DataProfile;JII)V

    .line 1791
    invoke-direct {v4, v5, v9}, Lcom/android/internal/telephony/data/DataRetryManager;->cancelRetriesForDataProfile(Landroid/telephony/data/DataProfile;I)V

    goto :goto_2

    :cond_6
    move-object v4, p0

    .line 1794
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onDataProfileUnthrottled: Removing the following throttling entries. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    if-eqz p5, :cond_9

    .line 1797
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    .line 1799
    iget p2, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->retryType:I

    const-wide/16 v5, 0x0

    if-ne p2, v3, :cond_8

    .line 1800
    new-instance p2, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    invoke-direct {p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;-><init>()V

    iget-object p3, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 1801
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setDataProfile(Landroid/telephony/data/DataProfile;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p2

    iget p3, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    .line 1802
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setTransport(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p2

    .line 1803
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setSetupRetryType(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p2

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 1804
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p1

    .line 1805
    invoke-virtual {p1, v5, v6}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    .line 1806
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    move-result-object p1

    .line 1800
    invoke-direct {v4, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    goto :goto_3

    :cond_8
    if-ne p2, v1, :cond_7

    .line 1808
    new-instance p2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    invoke-direct {p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;-><init>()V

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1809
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->setDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    move-result-object p1

    .line 1810
    invoke-virtual {p1, v5, v6}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    .line 1811
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    move-result-object p1

    .line 1808
    invoke-direct {v4, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    goto :goto_3

    :cond_9
    if-eqz p4, :cond_a

    .line 1816
    iget-object p0, v4, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_a
    return-void
.end method

.method private blacklist onEvaluateDataHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;IJ)V
    .locals 9

    .line 1366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvaluateDataHandoverRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retryDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1366
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result v6

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    :cond_0
    move-object v1, p0

    move-object v4, p1

    goto/16 :goto_2

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_2

    .line 1380
    new-instance p2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    invoke-direct {p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;-><init>()V

    .line 1381
    invoke-virtual {p2, p3, p4}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    .line 1382
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->setDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    move-result-object p2

    .line 1383
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    move-result-object p2

    .line 1385
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v2

    .line 1386
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v3

    iget-wide v7, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryElapsedTime:J

    const/4 v5, 0x3

    move-object v1, p0

    move-object v4, p1

    .line 1385
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/data/DataRetryManager;->throttleDataProfile(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V

    .line 1389
    invoke-direct {v1, p2}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    return-void

    :cond_2
    move-object v1, p0

    move-object v4, p1

    .line 1394
    iget-object p0, v1, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;

    .line 1395
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getFailCauses()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    .line 1396
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getFailCauses()Ljava/util/Set;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1397
    :cond_4
    invoke-direct {v1, v4, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->getRetryFailedCount(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;)I

    move-result p3

    .line 1398
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found matching rule "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", failed count="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    const/16 p4, 0x45

    if-ne p2, p4, :cond_5

    const-wide/16 v2, 0xbb8

    goto :goto_1

    .line 1415
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getRetryIntervalsMillis()Ljava/util/List;

    move-result-object p4

    .line 1416
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getRetryIntervalsMillis()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1415
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1419
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Data handover retry failed for "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " times. But handover will retry infinitely with time : "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1421
    new-instance p3, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    invoke-direct {p3}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;-><init>()V

    .line 1422
    invoke-virtual {p3, v2, v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    .line 1423
    invoke-virtual {p3, v4}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->setDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    move-result-object p3

    .line 1424
    invoke-virtual {p3, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setAppliedRetryRule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    .line 1425
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    move-result-object p1

    .line 1421
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    goto/16 :goto_0

    :cond_6
    return-void

    .line 1370
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Network suggested never retry handover for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v2

    .line 1376
    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v3

    const/4 v5, 0x3

    const-wide v7, 0x7fffffffffffffffL

    .line 1375
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/data/DataRetryManager;->throttleDataProfile(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V

    return-void
.end method

.method private blacklist onEvaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v6, p5

    .line 1219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onEvaluateDataSetupRetry: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", transport="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    invoke-static {v5}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", cause="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    invoke-static {v3}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", retryDelayMillis="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "ms, "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1219
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    .line 1228
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    .line 1232
    :cond_0
    sget-boolean v4, Lcom/android/internal/telephony/data/DataRetryManager;->IpReviseFeature:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x32

    if-eq v3, v4, :cond_1

    const/16 v4, 0x33

    if-ne v3, v4, :cond_2

    .line 1233
    :cond_1
    const-string v4, "DRM-Revise IP for retrying:"

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1234
    iget-object v4, v0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->updateProfileForRetry(Landroid/telephony/data/DataProfile;)Landroid/telephony/data/DataProfile;

    move-result-object v1

    :cond_2
    const-wide v9, 0x7fffffffffffffffL

    cmp-long v4, v6, v9

    if-eqz v4, :cond_d

    const-wide/32 v9, 0x7fffffff

    cmp-long v4, v6, v9

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const-wide/16 v9, -0x1

    cmp-long v4, v6, v9

    const/4 v9, 0x1

    if-eqz v4, :cond_4

    .line 1248
    new-instance v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    invoke-direct {v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;-><init>()V

    .line 1249
    invoke-virtual {v3, v6, v7}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    .line 1250
    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setSetupRetryType(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v3

    .line 1251
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v3

    .line 1252
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setDataProfile(Landroid/telephony/data/DataProfile;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v3

    .line 1253
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setTransport(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v3

    .line 1254
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    move-result-object v8

    .line 1255
    iget-wide v6, v8, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryElapsedTime:J

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/data/DataRetryManager;->throttleDataProfile(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V

    .line 1258
    invoke-direct {v0, v8}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    return-void

    .line 1263
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDataSetupRetryRuleList="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/data/DataRetryManager;->logv(Ljava/lang/String;)V

    .line 1266
    iget-object v4, v0, Lcom/android/internal/telephony/data/DataRetryManager;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 1267
    invoke-static {v2, v4}, Lcom/android/internal/telephony/data/DataUtils;->getGroupedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Ljava/util/List;

    move-result-object v4

    .line 1268
    iget-object v6, v0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v8

    :cond_5
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;

    .line 1269
    invoke-virtual {v10}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;->isPermanentFailCauseRule()Z

    move-result v11

    const/4 v12, 0x2

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getFailCauses()Ljava/util/Set;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1270
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1271
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    .line 1276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Marked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " permanently failed, but still schedule retry to see if another data profile can be used for setup data."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1282
    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;-><init>()V

    .line 1283
    invoke-virtual {v10}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getRetryIntervalsMillis()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    .line 1284
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setAppliedRetryRule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    .line 1285
    invoke-virtual {v1, v12}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setSetupRetryType(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v1

    .line 1286
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setTransport(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v1

    .line 1287
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v1

    .line 1288
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    move-result-object v1

    .line 1282
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    return-void

    .line 1292
    :cond_6
    const-string v1, "Stopped timer-based retry for TD-based data profile. Will retry only when environment changes."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return-void

    .line 1297
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 1298
    invoke-virtual {v13, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1299
    invoke-virtual {v14}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPrioritySupportedNetworkCapability()I

    move-result v14

    .line 1300
    invoke-virtual {v10, v14, v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;->canBeMatched(II)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1303
    invoke-virtual {v13, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1302
    invoke-virtual {v0, v7, v5}, Lcom/android/internal/telephony/data/DataRetryManager;->isSimilarNetworkRequestRetryScheduled(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already had similar retry scheduled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return-void

    .line 1309
    :cond_9
    invoke-direct {v0, v14, v10, v5}, Lcom/android/internal/telephony/data/DataRetryManager;->getRetryFailedCount(ILcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;I)I

    move-result v7

    .line 1310
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "For capability "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", found matching rule "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", failed count="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {v10}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getMaxRetries()I

    move-result v11

    if-ne v7, v11, :cond_a

    .line 1314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data retry failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    invoke-static {v5}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Stopped timer-based data retry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    invoke-static {v14}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Condition-based retry will still happen when condition changes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1314
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return-void

    .line 1323
    :cond_a
    invoke-virtual {v10}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getRetryIntervalsMillis()Ljava/util/List;

    move-result-object v11

    .line 1325
    invoke-virtual {v10}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getRetryIntervalsMillis()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v9

    .line 1324
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1323
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1328
    new-instance v7, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    invoke-direct {v7}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;-><init>()V

    .line 1329
    invoke-virtual {v7, v14, v15}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    .line 1330
    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setAppliedRetryRule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    .line 1331
    invoke-virtual {v7, v12}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setSetupRetryType(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v7

    .line 1332
    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setTransport(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v7

    .line 1333
    invoke-virtual {v7, v13}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v7

    .line 1334
    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setDataProfile(Landroid/telephony/data/DataProfile;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v7

    .line 1335
    invoke-virtual {v7}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    move-result-object v7

    .line 1328
    invoke-direct {v0, v7}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    move v7, v9

    goto/16 :goto_0

    :cond_b
    if-nez v7, :cond_c

    .line 1343
    const-string v1, "onEvaluateDataSetupRetry: Did not match any retry rule. Stop timer-based retry."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    :cond_c
    return-void

    .line 1238
    :cond_d
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network suggested never retry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    const/4 v4, 0x2

    const-wide v6, 0x7fffffffffffffffL

    const/4 v3, 0x0

    .line 1243
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/data/DataRetryManager;->throttleDataProfile(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V

    return-void
.end method

.method private blacklist onReset(I)V
    .locals 7

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove all retry and throttling entries, reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataRetryManager;->resetReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 1469
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x4

    .line 1470
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1472
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataProfileManager;->clearAllDataProfilePermanentFailures()V

    .line 1474
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda34;-><init>()V

    .line 1475
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda35;-><init>()V

    .line 1476
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1478
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    .line 1479
    iget-object v2, v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 1480
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1481
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v3, v1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1482
    :goto_2
    iget v4, v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/data/DataRetryManager;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;Ljava/lang/String;IZZ)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 1485
    iget-object p0, v1, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static blacklist resetReasonToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 2029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2028
    :pswitch_0
    const-string p0, "TAC_CHANGED"

    return-object p0

    .line 2027
    :pswitch_1
    const-string p0, "DATA_CONFIG_CHANGED"

    return-object p0

    .line 2026
    :pswitch_2
    const-string p0, "DATA_SERVICE_BOUND"

    return-object p0

    .line 2025
    :pswitch_3
    const-string p0, "MODEM_RESTART"

    return-object p0

    .line 2024
    :pswitch_4
    const-string p0, "RADIO_ON"

    return-object p0

    .line 2023
    :pswitch_5
    const-string p0, "DATA_PROFILES_CHANGED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V
    .locals 11

    .line 1622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduled data retry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hashcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1623
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1624
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1633
    :cond_0
    iget-wide v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryDelayMillis:J

    sget-wide v2, Lcom/android/internal/telephony/data/DataRetryManager;->RETRY_LONG_DELAY_TIMER_THRESHOLD_MILLIS:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 1634
    instance-of v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryDelayMillis:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1641
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v5, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryElapsedTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dataRetryHash-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    new-instance v10, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda30;

    invoke-direct {v10, p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda30;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    const/4 v4, 0x2

    const/4 v9, 0x0

    .line 1641
    invoke-virtual/range {v3 .. v10}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method private blacklist throttleDataProfile(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V
    .locals 8

    .line 1690
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v4, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;-><init>(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V

    move-wide p2, v6

    .line 1695
    iget-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    new-instance p6, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda36;

    invoke-direct {p6, p1, p5}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda36;-><init>(Landroid/telephony/data/DataProfile;I)V

    invoke-interface {p4, p6}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1699
    iget-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    const/16 p6, 0x64

    if-lt p4, p6, :cond_0

    .line 1702
    const-string p4, "24fd4d46-1d0f-4b13-b7d6-7bad70b8289b"

    .line 1703
    invoke-static {p4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p4

    iget-object p6, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1705
    invoke-virtual {p6}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p6

    .line 1702
    const-string p7, "DataRetryManager throttling more than 100 data profiles"

    invoke-static {p4, p7, p6}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    .line 1706
    iget-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    const/4 p6, 0x0

    invoke-interface {p4, p6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1708
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Add throttling entry "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1709
    iget-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide p6, 0x7fffffffffffffffL

    cmp-long p4, p2, p6

    if-nez p4, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    move p4, v5

    .line 1716
    :goto_0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataRetryManager;->notifyThrottleStatus(Landroid/telephony/data/DataProfile;JII)V

    return-void
.end method


# virtual methods
.method public blacklist cancelPendingHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 1

    const/4 v0, 0x7

    .line 1912
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 2074
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2075
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2077
    const-string p2, "Data Setup Retry rules:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2078
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2079
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2080
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2081
    const-string p2, "Data Handover Retry rules:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2083
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2084
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2086
    const-string p2, "Retry entries:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2088
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;

    .line 2089
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 2091
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2093
    const-string p2, "Throttling entries:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2094
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2095
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    .line 2096
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 2098
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2100
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2101
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2102
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2103
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2104
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist evaluateDataHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;IJ)V
    .locals 6

    .line 1361
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda17;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda17;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;Lcom/android/internal/telephony/data/DataNetwork;IJ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist evaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .locals 8

    .line 1212
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1154
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->loge(Ljava/lang/String;)V

    return-void

    .line 1149
    :pswitch_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1145
    :pswitch_2
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_3
    const/4 p1, 0x6

    .line 1125
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->onReset(I)V

    return-void

    :pswitch_4
    const/4 p1, 0x3

    .line 1122
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->onReset(I)V

    return-void

    :pswitch_5
    const/4 p1, 0x2

    .line 1119
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->onReset(I)V

    return-void

    .line 1141
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->onCancelPendingHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void

    .line 1128
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1129
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1133
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1134
    check-cast p1, Ljava/lang/String;

    move-object v3, p1

    move-object v2, v1

    goto :goto_0

    .line 1135
    :cond_0
    instance-of v0, p1, Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_1

    .line 1136
    check-cast p1, Landroid/telephony/data/DataProfile;

    move-object v2, p1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v2, v1

    move-object v3, v2

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    .line 1138
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/data/DataRetryManager;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;Ljava/lang/String;IZZ)V

    return-void

    :pswitch_8
    move-object v1, p0

    .line 1112
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    .line 1113
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataRetryManager;->isRetryCancelled(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1114
    iget-object p1, v1, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_9
    move-object v1, p0

    .line 1105
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    .line 1106
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataRetryManager;->isRetryCancelled(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1107
    iget-object p1, v1, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist isAnyHandoverRetryScheduled(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 2

    .line 1989
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    .line 1990
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda8;

    const-class v1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1991
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda19;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1992
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isDataNetworkHandoverRetryStopped(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Z
    .locals 3

    .line 1442
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;

    .line 1453
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->VOICE_CALL_ENDED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-ne p2, v1, :cond_0

    .line 1454
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 1455
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result v2

    .line 1454
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/data/DataRetryManager;->isDataProfileThrottled(Landroid/telephony/data/DataProfile;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1456
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Data handover retry stopped for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with target Transport = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1456
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isDataProfileThrottled(Landroid/telephony/data/DataProfile;I)Z
    .locals 3

    .line 1900
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1901
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/data/DataProfile;JI)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isSimilarNetworkRequestRetryScheduled(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z
    .locals 8

    .line 1858
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1859
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, 0x0

    if-ltz v2, :cond_2

    .line 1860
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    if-eqz v5, :cond_1

    .line 1861
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    .line 1862
    invoke-virtual {v5}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v6

    if-ne v6, v3, :cond_1

    iget v6, v5, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->setupRetryType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    iget-wide v6, v5, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryElapsedTime:J

    cmp-long v6, v6, v0

    if-lez v6, :cond_1

    .line 1866
    iget-object v6, v5, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1868
    const-string v4, "Invalid data retry entry detected"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1869
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDataRetryEntries="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataRetryManager;->loge(Ljava/lang/String;)V

    .line 1870
    const-string v5, "781af571-f55d-476d-b510-7a5381f633dc"

    .line 1871
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1873
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v6

    .line 1870
    invoke-static {v5, v4, v6}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    goto :goto_1

    .line 1876
    :cond_0
    iget-object v6, v5, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1877
    invoke-virtual {v6}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPrioritySupportedNetworkCapability()I

    move-result v6

    .line 1878
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPrioritySupportedNetworkCapability()I

    move-result v7

    if-ne v6, v7, :cond_1

    iget v6, v5, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->transport:I

    if-ne v6, p2, :cond_1

    iget-object v5, v5, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 1881
    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasSameOsAppId(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_2
    return v4
.end method

.method public blacklist onDataNetworkConnected(ILandroid/telephony/data/DataProfile;)V
    .locals 8

    .line 1189
    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1190
    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v5, p1

    move-object v3, p2

    .line 1193
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/data/DataRetryManager;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .locals 0

    .line 2002
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist removeLastRetryEntry(Z)V
    .locals 3

    .line 1528
    const-string v0, "RemoveLastRetryEntry: from device screen-on"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda7;-><init>()V

    .line 1530
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1532
    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda8;

    const-class v2, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1533
    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda10;-><init>()V

    .line 1534
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;)V

    .line 1535
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1538
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1540
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1541
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    const/4 v2, 0x4

    .line 1542
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 1545
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataRetryManager;->isKorSim()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    .line 1546
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const/16 p1, 0xc

    .line 1548
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public blacklist retryHandoverRatChanged()V
    .locals 3

    .line 1557
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 1558
    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda8;

    const-class v2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;-><init>()V

    .line 1559
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1560
    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda19;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1561
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1563
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1564
    const-string v1, "Retry Handover due to Rat change"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1565
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    const/4 v2, 0x4

    .line 1566
    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .locals 0

    .line 2011
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
