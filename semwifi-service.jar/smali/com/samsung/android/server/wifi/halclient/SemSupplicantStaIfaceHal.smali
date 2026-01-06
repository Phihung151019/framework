.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyStatus;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyRequest;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyRequestType;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$SupplicantEventCode;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$StaIfaceStatusCode;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$StaIfaceReasonCode;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$MboAssocDisallowedReasonCode;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppProgressCode;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppFailureCode;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppEventType;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppNetRole;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppCurve;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppAkm;
    }
.end annotation


# static fields
.field protected static final QOS_POLICY_REQUEST_ADD:I = 0x0

.field protected static final QOS_POLICY_REQUEST_REMOVE:I = 0x1

.field protected static final SUPPLICANT_EVENT_ASSOCIATED:I = 0x3

.field protected static final SUPPLICANT_EVENT_ASSOCIATING:I = 0x2

.field protected static final SUPPLICANT_EVENT_CONNECTED:I = 0x0

.field protected static final SUPPLICANT_EVENT_DISCONNECTED:I = 0x1

.field protected static final SUPPLICANT_EVENT_EAP_FAILURE:I = 0x5

.field protected static final SUPPLICANT_EVENT_EAP_METHOD_SELECTED:I = 0x4

.field protected static final SUPPLICANT_EVENT_OPEN_SSL_FAILURE:I = 0x7

.field protected static final SUPPLICANT_EVENT_SSID_TEMP_DISABLED:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SupplicantStaIfaceHal"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mLock:Ljava/lang/Object;

.field private mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mEventHandler:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->createStaIfaceHalMockable()Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    const-string p0, "SupplicantStaIfaceHal"

    .line 28
    .line 29
    const-string p1, "Failed to get internal ISupplicantStaIfaceHal instance."

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private handleErrorHal(Ljava/lang/String;)I
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "Cannot call "

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, " because HAL object is null."

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p1, "SupplicantStaIfaceHal"

    .line 21
    .line 22
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/4 p0, -0x1

    .line 26
    return p0
.end method

.method private handleNullHal(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "Cannot call "

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, " because HAL object is null."

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p1, "SupplicantStaIfaceHal"

    .line 21
    .line 22
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method protected static supplicantEventCodeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string v0, "Invalid SupplicantEventCode: "

    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string p0, "OPEN_SSL_FAILURE"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_1
    const-string p0, "SSID_TEMP_DISABLED"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_2
    const-string p0, "EAP_FAILURE"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_3
    const-string p0, "EAP_METHOD_SELECTED"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_4
    const-string p0, "ASSOCIATED"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_5
    const-string p0, "ASSOCIATING"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_6
    const-string p0, "DISCONNECTED"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_7
    const-string p0, "CONNECTED"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addNetworkExternal(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "addNetwork"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->addNetworkExternal(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public addQosPolicyRequestForScs(Ljava/lang/String;[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsData;)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsRequestStatus;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "addQosPolicyRequestForScs"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->addQosPolicyRequestForScs(Ljava/lang/String;[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsData;)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsRequestStatus;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public addRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "addRoamScanChannels"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->addRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public addRoamScanChannelsLegacy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "addRoamScanChannelsLegacy"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->addRoamScanChannelsLegacy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public addRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "addRoamScanFrequencies"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->addRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public addRoamScanFrequenciesLegacy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "addRoamScanFrequenciesLegacy"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->addRoamScanFrequenciesLegacy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public addRxFilter(Ljava/lang/String;B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "addRxFilter"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->addRxFilter(Ljava/lang/String;B)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "asBinder"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->asBinder()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public associationCtl(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "associationCtl"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->associationCtl(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public changePktlogSize(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "changePktlogSize"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->changePktlogSize(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public clearTwtStatistics(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "clearTwtStatistics"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->clearTwtStatistics(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method protected createStaIfaceHalMockable()Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->serviceDeclared()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "SupplicantStaIfaceHal"

    .line 11
    .line 12
    const-string v2, "Initializing SemSupplicantStaIfaceHal using AIDL implementation."

    .line 13
    .line 14
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mEventHandler:Landroid/os/Handler;

    .line 24
    .line 25
    invoke-direct {v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Landroid/os/Handler;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-object v1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->serviceDeclared()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const-string v1, "SupplicantStaIfaceHal"

    .line 39
    .line 40
    const-string v2, "Initializing SemSupplicantStaIfaceHal using HIDL implementation."

    .line 41
    .line 42
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mEventHandler:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-direct {v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Landroid/os/Handler;)V

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-object v1

    .line 58
    :cond_1
    const-string p0, "SupplicantStaIfaceHal"

    .line 59
    .line 60
    const-string v1, "No HIDL or AIDL service available for SemSupplicantStaIfaceHal."

    .line 61
    .line 62
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    monitor-exit v0

    .line 67
    return-object p0

    .line 68
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public deregisterDeathHandler()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "deregisterDeathHandler"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->deregisterDeathHandler()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "disconnect"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->disconnect(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public doLeakyApActiveDetection(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "doLeakyApActiveDetection"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->doLeakyApActiveDetection(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public eLnaControl(Ljava/lang/String;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "eLnaControl"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->eLnaControl(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public eLnaStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "eLnaStatus"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->eLnaStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public enable80211be(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "enable80211be"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->enable80211be(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public enableAutoReconnect(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "enableAutoReconnect"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->enableAutoReconnect(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public enableBeaconInterval(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "enableBeaconInterval"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->enableBeaconInterval(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public enablePktlogFilter(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "enablePktlogFilter"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->enablePktlogFilter(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method enableVerboseLogging(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->enableVerboseLogging(Z)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public endLeakyApPassiveDetection(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "endLeakyApPassiveDetection"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->endLeakyApPassiveDetection(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public filsHlpAddRequest(Ljava/lang/String;[B[B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "filsHlpAddRequest"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->filsHlpAddRequest(Ljava/lang/String;[B[B)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public filsHlpFlushRequest(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "filsHlpFlushRequest"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->filsHlpFlushRequest(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public generateSelfDppConfiguration(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "generateSelfDppConfiguration"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->generateSelfDppConfiguration(Ljava/lang/String;Ljava/lang/String;[B)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getAverageTxPower(Ljava/lang/String;Z)[I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    const-string v1, "getAverageTxPower"

    .line 3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_0

    .line 4
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleErrorHal(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    filled-new-array {p0, p1}, [I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getAverageTxPower(Ljava/lang/String;Z)[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAverageTxPower(Ljava/lang/String;ZI)[I
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    const-string v1, "getAverageTxPower"

    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_0

    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleErrorHal(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    filled-new-array {p0, p1}, [I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getAverageTxPower(Ljava/lang/String;ZI)[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 12
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getChannelUtilization(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getChannelUtilization"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getChannelUtilization(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getChannelUtilizationExtended(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getChannelUtilizationExtended"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const-string p0, "-1"

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getChannelUtilizationExtended(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    monitor-exit v0

    .line 24
    return-object p0

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public getConnectionCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ConnectionCapabilities;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getConnectionCapabilities"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getConnectionCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ConnectionCapabilities;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getConnectionMloLinksInfo(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/MloLinksInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getConnectionMloLinksInfo"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getConnectionMloLinksInfo(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/MloLinksInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getCountryRev(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getCountryRev"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getCountryRev(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getCurrentBss(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/BssInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getCurrentBss"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getCurrentBss(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/BssInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getInterfaceVersion()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getInterfaceVersion"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getInterfaceVersion()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getKeyMgmtCapabilities(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getKeyMgmtCapabilities"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getKeyMgmtCapabilities(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getLqcmReport(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getLqcmReport"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getLqcmReport(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getMacAddress(Ljava/lang/String;)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getMacAddress"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getMacAddress(Ljava/lang/String;)[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getMaxBandwidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getWifiMaxBandwidth"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getMaxBandwidth(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getMaxTdlsSession(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getMaxTdlsSession"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getMaxTdlsSession(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getMlState(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getMlState"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getMlState(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getNetworkExternal(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getNetwork"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getNetworkExternal(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getNumOfTdlsSession(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getNumOfTdlsSession"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getNumOfTdlsSession(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getPcieMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getPcieMode"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getPcieMode(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getRoamBand(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getRoamBand"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getRoamBand(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getRoamDelta(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getRoamDelta"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getRoamDelta(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getRoamScanChannels(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getRoamScanChannels"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getRoamScanChannels(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getRoamScanChannelsLegacy(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getRoamScanChannelsLegacy"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getRoamScanChannelsLegacy(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getRoamScanControl(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getRoamScanControl"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getRoamScanControl(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getRoamScanPeriod(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getRoamScanPeriod"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getRoamScanPeriod(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getRoamTrigger(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getRoamTrigger"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getRoamTrigger(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getRoamTriggerLegacy(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getRoamTriggerLegacy"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getRoamTriggerLegacy(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getSignalPollResults(Ljava/lang/String;)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SignalPollResult;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getSignalPollResults"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getSignalPollResults(Ljava/lang/String;)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SignalPollResult;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getSnr(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getSnr"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getSnr(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getSupportedTasMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getSupportedTasMode"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getSupportedTasMode(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getTidMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getTidMode"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getTidMode(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getTxMode(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getWifiTxMode"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getTxMode(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getTxPower(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getTxPower"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getTxPower(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getTxPowerFromDsiTable(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getTxPowerFromDsiTable"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getTxPowerFromDsiTable(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getWifiStaInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getWifiStaInfo"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getWifiStaInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getWifiUwbCoexMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getWifiUwbCoexMode"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getWifiUwbCoexMode(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public getWpaDriverCapabilities(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getWpaDriverCapabilities"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->getWpaDriverCapabilities(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public initialize()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, "SupplicantStaIfaceHal"

    .line 10
    .line 11
    const-string v2, "Internal ISupplicantStaIfaceHal instance does not exist."

    .line 12
    .line 13
    invoke-static {p0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return v1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->initialize()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    const-string p0, "SupplicantStaIfaceHal"

    .line 27
    .line 28
    const-string v2, "Failed to init ISupplicantStaIfaceHal, stopping startup."

    .line 29
    .line 30
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return v1

    .line 35
    :cond_1
    const/4 p0, 0x1

    .line 36
    monitor-exit v0

    .line 37
    return p0

    .line 38
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public initiateAnqpQuery(Ljava/lang/String;[B[I[I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "initiateAnqpQuery"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->initiateAnqpQuery(Ljava/lang/String;[B[I[I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public initiateHs20IconQuery(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "initiateHs20IconQuery"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->initiateHs20IconQuery(Ljava/lang/String;[BLjava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public initiateTdlsDiscover(Ljava/lang/String;[B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "initiateTdlsDiscover"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->initiateTdlsDiscover(Ljava/lang/String;[B)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public initiateTdlsSetup(Ljava/lang/String;[B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "initiateTdlsSetup"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->initiateTdlsSetup(Ljava/lang/String;[B)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public initiateTdlsTeardown(Ljava/lang/String;[B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "initiateTdlsTeardown"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->initiateTdlsTeardown(Ljava/lang/String;[B)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public initiateVenueUrlAnqpQuery(Ljava/lang/String;[B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "initiateVenueUrlAnqpQuery"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->initiateVenueUrlAnqpQuery(Ljava/lang/String;[B)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public isAvailableTdls(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "isAvailableTdls"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->isAvailableTdls(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public isCaptureRunning(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "IsCaptureRunning"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->isCaptureRunning(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public isInitializationComplete()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "isInitializationComplete"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->isInitializationComplete()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public isInitializationStarted()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "isInitializationStarted"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->isInitializationStarted()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public isNCHOModeEnabled(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "isNCHOModeEnabled"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->isNCHOModeEnabled(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public isWesModeEnabled(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "isWesModeEnabled"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->isWesModeEnabled(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public isWiderBandwidthTdlsSupported(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "isWiderBandwidthTdlsSupported"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->isWiderBandwidthTdlsSupported(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public listNetworksExternal(Ljava/lang/String;)[I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "listNetworks"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->listNetworksExternal(Ljava/lang/String;)[I

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public probeStaIfaceNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "probeStaIfaceNames"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->probeStaIfaceNames()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    monitor-exit v0

    .line 24
    return-object p0

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public queryScheduledPmStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "queryScheduledPmStatus"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->queryScheduledPmStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public queryTwtCapabilities(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "queryTwtCapabilities"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->queryTwtCapabilities(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public queryTwtStatistics(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "queryTwtStatistics"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->queryTwtStatistics(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public queryTwtStatus(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "queryTwtStatus"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->queryTwtStatus(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public reassociate(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "reassociate"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->reassociate(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public reconnect(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "reconnect"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->reconnect(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public registerCallbackExternalForISehSupplicantStaIface(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "registerCallback"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->registerCallbackExternalForISehSupplicantStaIface(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public registerCallbackForISupplicantStaIface(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "registerCallback"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->registerCallbackExternalForISupplicantStaIface(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public registerDeathHandler(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "registerDeathHandler"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->registerDeathHandler(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public removeAllNetworks(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "removeAllNetworks"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->removeAllNetworks(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public removeAllQosPolicies(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "removeAllQosPolicies"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->removeAllQosPolicies(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public removeDppUri(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "removeDppUri"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->removeDppUri(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "removePktlogFilter"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public removeQosPolicyForScs(Ljava/lang/String;[B)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsRequestStatus;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "removeQosPolicyForScs"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->removeQosPolicyForScs(Ljava/lang/String;[B)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsRequestStatus;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public removeRxFilter(Ljava/lang/String;B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "removeRxFilter"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->removeRxFilter(Ljava/lang/String;B)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public resumeTwt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "resumeTwt"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->resumeTwt(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public saveDebugDump(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "saveDebugDump"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->saveDebugDump(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public sendLegacyReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "sendLegacyReassociationFrequencyRequestFrame"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->sendLegacyReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public sendLegacyReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "sendLegacyReassociationRequestFrame"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->sendLegacyReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public sendQosPolicyResponse(Ljava/lang/String;IZ[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "sendQosPolicyResponse"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->sendQosPolicyResponse(Ljava/lang/String;IZ[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public sendReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "sendReassociationFrequencyRequestFrame"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->sendReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "sendReassociationRequestFrame"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "sendVendorSpecificActionFrame"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setAdpsEnabled(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setAdpsEnabled"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setAdpsEnabled(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setAffinityBooster(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setAffinityBooster"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setAffinityBooster(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setBtCoexistenceMode(Ljava/lang/String;B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setBtCoexistenceMode"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setBtCoexistenceMode(Ljava/lang/String;B)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setBtCoexistenceScanModeEnabled(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setBtCoexistenceScanModeEnabled"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setBtCoexistenceScanModeEnabled(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setConcurrencyPriority(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setConcurrencyPriority"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setConcurrencyPriority(I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setCountryCode(Ljava/lang/String;[B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setCountryCode"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setCountryCode(Ljava/lang/String;[B)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setCountryRev"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setDebugParams(IZZ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setDebugParams"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setDebugParams(IZZ)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setDelayedWakeupType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setDelayedWakeupType"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setDelayedWakeupType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setDtimInSuspendMode(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setDtimInSuspendMode"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setDtimInSuspendMode(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setExternalSim(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setExternalSim"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setExternalSim(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setFccChannelBackoffEnabled(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setFccChannelBackoffEnabled"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setFccChannelBackoffEnabled(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setIndoorChannels(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setIndoorChannels"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setIndoorChannels(Ljava/lang/String;ILjava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setInterwokingEnabled(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setInterwokingEnabled"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setInterwokingEnabled(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setLatencyCritical(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setLatencyCritical"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setLatencyCritical(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setLeakyApGracePeriod(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setLeakyApGracePeriod"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setLeakyApGracePeriod(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setMaxBandwidth(Ljava/lang/String;III)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setWifiMaxBandwidth"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setMaxBandwidth(Ljava/lang/String;III)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setMaxDtimInSuspendMode(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setMaxDtimInSuspendMode"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setMaxDtimInSuspendMode(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setMboCellularDataStatus(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setMboCellularDataStatus"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setMboCellularDataStatus(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setMlControl(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setMlControl"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setMlControl(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setNCHOModeEnabled(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setNCHOModeEnabled"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setNCHOModeEnabled(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setNumOfAllowedMloLink(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setNumOfAllowedMloLink"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setNumOfAllowedMloLink(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setPcieMode(Ljava/lang/String;II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setPcieMode"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setPcieMode(Ljava/lang/String;II)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setPktlogFilter"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setPowerSave(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getNetwork"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setPowerSave(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setQosPolicyFeatureEnabled(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setQosPolicyFeatureEnabled"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setQosPolicyFeatureEnabled(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setRoamBand(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setRoamBand"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setRoamBand(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setRoamDelta(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setRoamDelta"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setRoamDelta(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setRoamScanChannels"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setRoamScanControl(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setRoamScanControl"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setRoamScanControl(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setRoamScanFrequencies"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setRoamScanPeriod(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setRoamScanPeriod"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setRoamScanPeriod(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setRoamTrigger(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setRoamTrigger"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setRoamTrigger(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setRoamTriggerLegacy(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setRoamTriggerLegacy"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setRoamTriggerLegacy(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setScanDwell(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setScanDwell"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setScanDwell(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setSuspendModeEnabled(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setSuspendModeEnabled"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setSuspendModeEnabled(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setTdlsEnabled(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setTdlsEnabled"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setTdlsEnabled(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setTidMode(Ljava/lang/String;III)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setTidMode"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setTidMode(Ljava/lang/String;III)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setTxMode(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setWifiTxMode"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setTxMode(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setTxPowerBackOff(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    const-string v1, "setTxPowerBackOff"

    .line 3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_0

    .line 4
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setTxPowerBackOff(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setTxPowerBackOff(Ljava/lang/String;II)Z
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    const-string v1, "setTxPowerBackOff"

    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez v2, :cond_0

    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setTxPowerBackOff(Ljava/lang/String;II)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 12
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setWesModeEnabled(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setWesModeEnabled"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setWesModeEnabled(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setWifiCustomBackoff(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setWifiCustomBackoff"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setWifiCustomBackoff(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setWifiToCellular(Ljava/lang/String;IIIIII)Z
    .locals 3

    .line 1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    const-string v0, "setWifiToCellular"

    .line 5
    .line 6
    move-object v2, p0

    .line 7
    iget-object p0, v2, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    monitor-exit v1

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    move-object p0, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface/range {p0 .. p7}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setWifiToCellular(Ljava/lang/String;IIIIII)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    monitor-exit v1

    .line 25
    return p0

    .line 26
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public setWifiUwbCoexEnabled(Ljava/lang/String;ZIIII)Z
    .locals 3

    .line 1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    const-string v0, "setWifiUwbCoexEnabled"

    move-object v2, p0

    .line 3
    iget-object p0, v2, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez p0, :cond_0

    .line 4
    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface/range {p0 .. p6}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setWifiUwbCoexEnabled(Ljava/lang/String;ZIIII)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 6
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setWifiUwbCoexEnabled(Ljava/lang/String;ZIIIII)Z
    .locals 3

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8
    :try_start_0
    const-string v0, "setWifiUwbCoexEnabled"

    move-object v2, p0

    .line 9
    iget-object p0, v2, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez p0, :cond_0

    .line 10
    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface/range {p0 .. p7}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setWifiUwbCoexEnabled(Ljava/lang/String;ZIIIII)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 12
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setWifiUwbCoexEnabled(Ljava/lang/String;ZIIIIII)Z
    .locals 3

    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_0
    const-string v0, "setWifiUwbCoexEnabled"

    move-object v2, p0

    .line 15
    iget-object p0, v2, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    if-nez p0, :cond_0

    .line 16
    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface/range {p0 .. p8}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setWifiUwbCoexEnabled(Ljava/lang/String;ZIIIIII)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 18
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setWsecInfo(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setWsecInfo"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setWsecInfo(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setupIface(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setupIface"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setupIface(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setupScheduledPm(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setupScheduledPm"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setupScheduledPm(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setupTwt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setupTwt"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->setupTwt(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public startCapture(Ljava/lang/String;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "startCapture"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->startCapture(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public startDppEnrolleeResponder(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "startDppEnrolleeResponder"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->startDppEnrolleeResponder(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public startLeakyApPassiveDetection(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "startLeakyApPassiveDetection"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->startLeakyApPassiveDetection(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public startRxFilter(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "startRxFilter"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->startRxFilter(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public stopCapture(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "stopCapture"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->stopCapture(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public stopDppInitiator(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "stopDppInitiator"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->stopDppInitiator(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public stopDppResponder(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "stopDppResponder"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->stopDppResponder(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public stopRxFilter(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "stopRxFilter"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->stopRxFilter(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public suspendTwt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "suspendTwt"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->suspendTwt(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public teardownIface(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "teardownIface"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->teardownIface(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public teardownScheduledPm(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "teardownScheduledPm"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->teardownScheduledPm(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public teardownTwt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "teardownTwt"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->teardownTwt(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public triggerDelayedWakeup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "triggerDelayedWakeup"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->triggerDelayedWakeup(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public updateCellularCapabilities(Ljava/lang/String;BBB[B)Z
    .locals 3

    .line 1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    const-string v0, "updateCellularCapabilities"

    .line 5
    .line 6
    move-object v2, p0

    .line 7
    iget-object p0, v2, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    monitor-exit v1

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    move-object p0, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface/range {p0 .. p5}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->updateCellularCapabilities(Ljava/lang/String;BBB[B)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    monitor-exit v1

    .line 25
    return p0

    .line 26
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public updateConnectionPersonalization(Ljava/lang/String;I[I[Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "updateConnectionPersonalization"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->updateConnectionPersonalization(Ljava/lang/String;I[I[Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public updateConnectionRssiThreshold(Ljava/lang/String;[I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "updateConnectionRssiThreshold"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;->updateConnectionRssiThreshold(Ljava/lang/String;[I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method
