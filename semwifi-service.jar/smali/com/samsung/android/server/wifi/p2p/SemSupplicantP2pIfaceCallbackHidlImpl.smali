.class public Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;
.super Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemSupplicantP2pIfaceCallbackHidlImpl"

.field private static sVerboseLoggingEnabled:Z = true


# instance fields
.field private final mInterface:Ljava/lang/String;

.field private final mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 7
    .line 8
    return-void
.end method

.method private convertHalProvDiscStatusToFrameworkStatus(I)I
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p1, p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    if-eq p1, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x3

    .line 10
    if-eq p1, p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x4

    .line 13
    if-eq p1, p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x5

    .line 16
    :cond_0
    return p0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method private createStaEventDevice([B[B)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    .line 1
    new-instance p0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->ANY_MAC_BYTES:[B

    .line 7
    .line 8
    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p2, p1

    .line 16
    :goto_0
    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->setInterfaceMacAddress(Landroid/net/MacAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    const-string p1, "SemSupplicantP2pIfaceCallbackHidlImpl"

    .line 32
    .line 33
    const-string p2, "Could not decode MAC address"

    .line 34
    .line 35
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public static enableVerboseLogging(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->sVerboseLoggingEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method private static halStatusToP2pStatus(I)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-object v0

    .line 7
    :pswitch_0
    sget-object p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->REJECTED_BY_USER:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    sget-object p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    sget-object p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->BOTH_GO_INTENT_15:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    sget-object p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    sget-object p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_5
    sget-object p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_6
    sget-object p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_7
    sget-object p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->INVALID_PARAMETER:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_8
    sget-object p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->LIMIT_REACHED:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_9
    sget-object p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PARAMETERS:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_a
    sget-object p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_b
    sget-object p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method protected static logd(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->sVerboseLoggingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemSupplicantP2pIfaceCallbackHidlImpl"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public onDeviceFound([B[B[BLjava/lang/String;SBI[B)V
    .locals 0

    .line 1
    return-void
.end method

.method public onDeviceLost([B)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Device lost on "

    .line 14
    .line 15
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ": "

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pDeviceLost(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    move-exception p0

    .line 47
    const-string p1, "SemSupplicantP2pIfaceCallbackHidlImpl"

    .line 48
    .line 49
    const-string v0, "Could not decode device address."

    .line 50
    .line 51
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onFindStopped()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Search stopped on "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onGoNegotiationCompleted(I)V
    .locals 1

    .line 1
    const-string v0, "Group Owner negotiation completed with status: "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->halStatusToP2pStatus(I)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 20
    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pGoNegotiationFailure(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public onGoNegotiationRequest([BS)V
    .locals 3

    .line 1
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    new-instance p1, Landroid/net/wifi/WpsInfo;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq p2, v1, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eq p2, v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    if-eq p2, v1, :cond_0

    .line 28
    .line 29
    iput v2, p1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p2, 0x2

    .line 33
    iput p2, p1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iput v2, p1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iput v1, p1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 40
    .line 41
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pGoNegotiationRequest(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 46
    .line 47
    .line 48
    :catch_0
    return-void
.end method

.method public onGroupFormationFailure(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Group formation failed on "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ": "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pGroupFormationFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onGroupFormationSuccess()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Group formation successful on "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onGroupRemoved(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "SemSupplicantP2pIfaceCallbackHidlImpl"

    .line 4
    .line 5
    const-string p1, "Missing group name."

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "Group "

    .line 12
    .line 13
    const-string v1, " removed from "

    .line 14
    .line 15
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pGroupRemoved(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onGroupStarted(Ljava/lang/String;ZLjava/util/ArrayList;I[BLjava/lang/String;[BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I[B",
            "Ljava/lang/String;",
            "[BZ)V"
        }
    .end annotation

    .line 1
    const-string p5, "SemSupplicantP2pIfaceCallbackHidlImpl"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "Missing group interface name."

    .line 6
    .line 7
    invoke-static {p5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "Group "

    .line 12
    .line 13
    const-string v1, " started on "

    .line 14
    .line 15
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setFrequency(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p6}, Landroid/net/wifi/p2p/WifiP2pGroup;->setPassphrase(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    if-eqz p8, :cond_1

    .line 60
    .line 61
    const/4 p1, -0x2

    .line 62
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const/4 p1, -0x1

    .line 67
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 68
    .line 69
    .line 70
    :goto_0
    new-instance p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 71
    .line 72
    invoke-direct {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 73
    .line 74
    .line 75
    :try_start_1
    invoke-static {p7}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iput-object p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pGroupStarted(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :catch_0
    move-exception p0

    .line 93
    const-string p1, "Could not decode Group Owner address."

    .line 94
    .line 95
    invoke-static {p5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :catch_1
    move-exception p0

    .line 100
    const-string p1, "Could not encode SSID."

    .line 101
    .line 102
    invoke-static {p5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public onInvitationReceived([B[B[BII)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string p2, "Invitation received on "

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onInvitationResult([BI)V
    .locals 0

    .line 1
    const-string p1, "Invitation completed with status: "

    .line 2
    .line 3
    invoke-static {p2, p1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->halStatusToP2pStatus(I)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pInvitationResult(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onNetworkAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onNetworkRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProvisionDiscoveryCompleted([BZBSLjava/lang/String;)V
    .locals 3

    .line 1
    const-string p5, "SemSupplicantP2pIfaceCallbackHidlImpl"

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "Provision discovery "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const-string p2, "request"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p2, "response"

    .line 16
    .line 17
    :goto_0
    const-string v1, " for WPS Config method: "

    .line 18
    .line 19
    const-string v2, " status: "

    .line 20
    .line 21
    invoke-static {v0, p2, v1, p4, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance p2, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    .line 35
    .line 36
    invoke-direct {p2}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance p4, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 40
    .line 41
    invoke-direct {p4}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p4, p2, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 45
    .line 46
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception p1

    .line 54
    const-string p4, "Could not decode MAC address."

    .line 55
    .line 56
    invoke-static {p5, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    iget-object p1, p2, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 60
    .line 61
    const/4 p4, 0x0

    .line 62
    iput-object p4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 63
    .line 64
    :goto_1
    if-eqz p3, :cond_1

    .line 65
    .line 66
    const-string p1, "Provision discovery failed, status code: "

    .line 67
    .line 68
    invoke-static {p1, p3, p5}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 72
    .line 73
    iget-object p4, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 74
    .line 75
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->convertHalProvDiscStatusToFrameworkStatus(I)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-virtual {p1, p4, p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pProvisionDiscoveryFailure(Ljava/lang/String;ILandroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
.end method

.method public onServiceDiscoveryResponse([BSLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BS",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string p2, "Service discovery response received on "

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onStaAuthorized([B[B)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "STA authorized on "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->createStaEventDevice([B[B)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pApStaConnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onStaDeauthorized([B[B)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "STA deauthorized on "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->createStaEventDevice([B[B)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pApStaDisconnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
