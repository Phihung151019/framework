.class public Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;
.super Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemSupplicantP2pIfaceCallbackAidlImpl"

.field private static sVerboseLoggingEnabled:Z = true


# instance fields
.field private final mInterface:Ljava/lang/String;

.field private final mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

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

.method private createStaEventDevice([B[BLjava/net/InetAddress;)Landroid/net/wifi/p2p/WifiP2pDevice;
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
    invoke-virtual {p0, p3}, Landroid/net/wifi/p2p/WifiP2pDevice;->setIpAddress(Ljava/net/InetAddress;)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string p1, "SemSupplicantP2pIfaceCallbackAidlImpl"

    .line 35
    .line 36
    const-string p2, "Could not decode MAC address"

    .line 37
    .line 38
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method

.method public static enableVerboseLogging(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->sVerboseLoggingEnabled:Z

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

.method private handleDeviceFound([B[B[BLjava/lang/String;IBI[B[B[BLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B",
            "Ljava/lang/String;",
            "IBI[B[B[B",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p10, :cond_3

    .line 3
    array-length p3, p10

    if-lez p3, :cond_3

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Vendor Element Bytes: "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p10}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 5
    :try_start_1
    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 6
    :goto_0
    invoke-virtual {p3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p5

    const/4 p6, -0x1

    if-eq p5, p6, :cond_3

    .line 7
    invoke-virtual {p3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p7

    if-ne p7, p6, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-array p8, p7, [B

    const/4 p9, 0x0

    .line 9
    invoke-virtual {p3, p8, p9, p7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p10

    if-eq p6, p10, :cond_3

    if-eq p7, p10, :cond_1

    goto :goto_1

    :cond_1
    const/16 p6, 0xdd

    if-eq p5, p6, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    new-instance p6, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {p6, p5, p9, p8}, Landroid/net/wifi/ScanResult$InformationElement;-><init>(II[B)V

    invoke-virtual {p2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 11
    const-string p3, "Cannot parse vendor element bytes: "

    .line 12
    invoke-static {p3, p2}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 14
    :cond_3
    :goto_1
    new-instance p3, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    invoke-direct {p3, p1, p4, p2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Device discovered on "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0, p3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pDeviceFound(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)V

    return-void

    :catch_1
    move-exception p0

    .line 17
    const-string p1, "SemSupplicantP2pIfaceCallbackAidlImpl"

    const-string p2, "Could not decode device address."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private handleGoNegotiationRequestEvent([BILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p3, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2
    .line 3
    invoke-direct {p3}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

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
    iput-object p1, p3, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;
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
    iput-object p1, p3, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    if-eq p2, v0, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eq p2, v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x5

    .line 27
    if-eq p2, v0, :cond_0

    .line 28
    .line 29
    iput v1, p1, Landroid/net/wifi/WpsInfo;->setup:I

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
    iput v1, p1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iput v0, p1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 40
    .line 41
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p2, "Group Owner negotiation initiated on "

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p2, ": "

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, p0, p3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pGoNegotiationRequest(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catch_0
    move-exception p0

    .line 77
    const-string p1, "SemSupplicantP2pIfaceCallbackAidlImpl"

    .line 78
    .line 79
    const-string p2, "Could not decode device address."

    .line 80
    .line 81
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private handleInvitationReceivedEvent([B[B[BIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)V"
        }
    .end annotation

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

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
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private handleProvisionDiscoveryCompletedEvent([BZBILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZBI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p5, "SemSupplicantP2pIfaceCallbackAidlImpl"

    .line 2
    .line 3
    new-instance p6, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string p7, "Provision discovery "

    .line 6
    .line 7
    invoke-direct {p6, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    const-string p7, " for WPS Config method: "

    .line 18
    .line 19
    const-string v0, " status: "

    .line 20
    .line 21
    invoke-static {p6, p2, p7, p4, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 72
    .line 73
    iget-object p4, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    .line 74
    .line 75
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->convertHalProvDiscStatusToFrameworkStatus(I)I

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

.method protected static logd(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->sVerboseLoggingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemSupplicantP2pIfaceCallbackAidlImpl"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private onGroupStarted(Ljava/lang/String;Z[BI[BLjava/lang/String;[BZ[BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pClientEapolIpAddressInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[BI[B",
            "Ljava/lang/String;",
            "[BZ[B",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pClientEapolIpAddressInfo;",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string p5, "SemSupplicantP2pIfaceCallbackAidlImpl"

    if-nez p1, :cond_0

    .line 3
    const-string p0, "Missing group interface name."

    invoke-static {p5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    const-string p11, "Group "

    const-string v0, " started on "

    .line 5
    invoke-static {p11, p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p11

    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p11

    invoke-static {p11}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 7
    new-instance p11, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {p11}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 8
    invoke-virtual {p11, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

    .line 9
    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p11, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 12
    invoke-virtual {p11, p4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setFrequency(I)V

    .line 13
    invoke-virtual {p11, p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 14
    invoke-virtual {p11, p6}, Landroid/net/wifi/p2p/WifiP2pGroup;->setPassphrase(Ljava/lang/String;)V

    if-eqz p8, :cond_1

    const/4 p1, -0x2

    .line 15
    invoke-virtual {p11, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 16
    invoke-virtual {p11, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 17
    :goto_0
    new-instance p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 18
    :try_start_1
    invoke-static {p7}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    iput-object p9, p11, Landroid/net/wifi/p2p/WifiP2pGroup;->interfaceAddress:[B

    .line 20
    invoke-virtual {p11, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    const/4 p1, 0x0

    if-nez p2, :cond_2

    if-eqz p10, :cond_2

    .line 21
    :try_start_2
    new-instance p2, Landroid/net/wifi/p2p/WifiP2pGroup$P2pGroupClientEapolIpAddressData;

    iget p3, p10, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pClientEapolIpAddressInfo;->ipAddressClient:I

    .line 22
    invoke-static {p3}, Lcom/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTL(I)Ljava/net/Inet4Address;

    move-result-object p3

    iget p4, p10, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pClientEapolIpAddressInfo;->ipAddressGo:I

    .line 23
    invoke-static {p4}, Lcom/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTL(I)Ljava/net/Inet4Address;

    move-result-object p4

    iget p6, p10, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pClientEapolIpAddressInfo;->ipAddressMask:I

    .line 24
    invoke-static {p6}, Lcom/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTL(I)Ljava/net/Inet4Address;

    move-result-object p6

    invoke-direct {p2, p3, p4, p6}, Landroid/net/wifi/p2p/WifiP2pGroup$P2pGroupClientEapolIpAddressData;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)V

    iput-object p2, p11, Landroid/net/wifi/p2p/WifiP2pGroup;->p2pClientEapolIpInfo:Landroid/net/wifi/p2p/WifiP2pGroup$P2pGroupClientEapolIpAddressData;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 25
    const-string p3, "Failed to fetch group client EAPOL IP address "

    .line 26
    invoke-static {p3, p2, p5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 27
    iput-object p1, p11, Landroid/net/wifi/p2p/WifiP2pGroup;->p2pClientEapolIpInfo:Landroid/net/wifi/p2p/WifiP2pGroup$P2pGroupClientEapolIpAddressData;

    goto :goto_1

    .line 28
    :cond_2
    iput-object p1, p11, Landroid/net/wifi/p2p/WifiP2pGroup;->p2pClientEapolIpInfo:Landroid/net/wifi/p2p/WifiP2pGroup$P2pGroupClientEapolIpAddressData;

    .line 29
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0, p11}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pGroupStarted(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void

    :catch_1
    move-exception p0

    .line 30
    const-string p1, "Could not decode Group Owner address."

    invoke-static {p5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_2
    move-exception p0

    .line 31
    const-string p1, "Could not encode SSID."

    invoke-static {p5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private onP2pApStaConnected(Ljava/lang/String;[B[BILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[BI",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p5, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "STA authorized on "

    .line 4
    .line 5
    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    if-eqz p4, :cond_1

    .line 27
    .line 28
    invoke-static {p4}, Lcom/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTL(I)Ljava/net/Inet4Address;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance p4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p5, "IP Address of Client: "

    .line 35
    .line 36
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p5

    .line 43
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    invoke-static {p4}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    :goto_0
    invoke-direct {p0, p2, p3, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->createStaEventDevice([B[BLjava/net/InetAddress;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pApStaConnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private onP2pApStaDisconnected(Ljava/lang/String;[B[BLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p4, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "STA deauthorized on "

    .line 4
    .line 5
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-direct {p0, p2, p3, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->createStaEventDevice([B[BLjava/net/InetAddress;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pApStaDisconnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "55b58c9bd6d40c1459073b5d03f4ede5cfc9a212"

    .line 2
    .line 3
    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
.end method

.method public onDeviceFound([B[B[BLjava/lang/String;IBI[B)V
    .locals 0

    .line 1
    const-string p1, "SemSupplicantP2pIfaceCallbackAidlImpl"

    .line 2
    .line 3
    if-nez p4, :cond_0

    .line 4
    .line 5
    const-string p0, "Missing device name."

    .line 6
    .line 7
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    new-instance p2, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    .line 16
    .line 17
    invoke-direct {p2, p1, p4}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x3

    .line 21
    invoke-virtual {p2, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->updateStatus(I)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p3, "Device discovered on "

    .line 27
    .line 28
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p3, ": "

    .line 37
    .line 38
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pDeviceFound(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catch_0
    move-exception p0

    .line 60
    const-string p2, "Could not decode device address."

    .line 61
    .line 62
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onDeviceFoundWithParams(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;)V
    .locals 12

    .line 1
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->srcAddress:[B

    .line 2
    .line 3
    iget-object v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->p2pDeviceAddress:[B

    .line 4
    .line 5
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->primaryDeviceType:[B

    .line 6
    .line 7
    iget-object v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->deviceName:Ljava/lang/String;

    .line 8
    .line 9
    iget v5, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->configMethods:I

    .line 10
    .line 11
    iget-byte v6, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->deviceCapabilities:B

    .line 12
    .line 13
    iget v7, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->groupCapabilities:I

    .line 14
    .line 15
    iget-object v8, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->wfdDeviceInfo:[B

    .line 16
    .line 17
    iget-object v9, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->wfdR2DeviceInfo:[B

    .line 18
    .line 19
    iget-object v10, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->vendorElemBytes:[B

    .line 20
    .line 21
    const/4 v11, 0x0

    .line 22
    move-object v0, p0

    .line 23
    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->handleDeviceFound([B[B[BLjava/lang/String;IBI[B[B[BLjava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onDeviceFoundWithVendorElements([B[B[BLjava/lang/String;IBI[B[B[B)V
    .locals 12

    .line 1
    const/4 v11, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object/from16 v4, p4

    .line 7
    .line 8
    move/from16 v5, p5

    .line 9
    .line 10
    move/from16 v6, p6

    .line 11
    .line 12
    move/from16 v7, p7

    .line 13
    .line 14
    move-object/from16 v8, p8

    .line 15
    .line 16
    move-object/from16 v9, p9

    .line 17
    .line 18
    move-object/from16 v10, p10

    .line 19
    .line 20
    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->handleDeviceFound([B[B[BLjava/lang/String;IBI[B[B[BLjava/util/List;)V

    .line 21
    .line 22
    .line 23
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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

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
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

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
    const-string p1, "SemSupplicantP2pIfaceCallbackAidlImpl"

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

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
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

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
    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->halStatusToP2pStatus(I)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

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

.method public onGoNegotiationRequest([BI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->handleGoNegotiationRequestEvent([BILjava/util/List;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onGoNegotiationRequestWithParams(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGoNegotiationReqEventParams;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGoNegotiationReqEventParams;->srcAddress:[B

    .line 2
    .line 3
    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGoNegotiationReqEventParams;->passwordId:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->handleGoNegotiationRequestEvent([BILjava/util/List;)V

    .line 7
    .line 8
    .line 9
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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

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
    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

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
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onGroupFrequencyChanged(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string p0, "Frequency changed event on "

    .line 2
    .line 3
    const-string v0, ". New frequency: "

    .line 4
    .line 5
    invoke-static {p2, p0, p1, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onGroupRemoved(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "SemSupplicantP2pIfaceCallbackAidlImpl"

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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

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
    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pGroupRemoved(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onGroupStarted(Ljava/lang/String;Z[BI[BLjava/lang/String;[BZ)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 1
    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->onGroupStarted(Ljava/lang/String;Z[BI[BLjava/lang/String;[BZ[BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pClientEapolIpAddressInfo;Ljava/util/List;)V

    return-void
.end method

.method public onGroupStartedWithParams(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;)V
    .locals 12

    .line 1
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->groupInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->isGroupOwner:Z

    .line 4
    .line 5
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->ssid:[B

    .line 6
    .line 7
    iget v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->frequencyMHz:I

    .line 8
    .line 9
    iget-object v5, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->psk:[B

    .line 10
    .line 11
    iget-object v6, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->passphrase:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v7, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->goDeviceAddress:[B

    .line 14
    .line 15
    iget-boolean v8, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->isPersistent:Z

    .line 16
    .line 17
    iget-object v9, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->goInterfaceAddress:[B

    .line 18
    .line 19
    iget-boolean v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->isP2pClientEapolIpAddressInfoPresent:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->p2pClientIpInfo:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pClientEapolIpAddressInfo;

    .line 24
    .line 25
    :goto_0
    move-object v10, p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    goto :goto_0

    .line 29
    :goto_1
    const/4 v11, 0x0

    .line 30
    move-object v0, p0

    .line 31
    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->onGroupStarted(Ljava/lang/String;Z[BI[BLjava/lang/String;[BZ[BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pClientEapolIpAddressInfo;Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onInvitationReceived([B[B[BII)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->handleInvitationReceivedEvent([B[B[BIILjava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onInvitationReceivedWithParams(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pInvitationEventParams;)V
    .locals 7

    .line 1
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pInvitationEventParams;->srcAddress:[B

    .line 2
    .line 3
    iget-object v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pInvitationEventParams;->goDeviceAddress:[B

    .line 4
    .line 5
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pInvitationEventParams;->bssid:[B

    .line 6
    .line 7
    iget v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pInvitationEventParams;->persistentNetworkId:I

    .line 8
    .line 9
    iget v5, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pInvitationEventParams;->operatingFrequencyMHz:I

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->handleInvitationReceivedEvent([B[B[BIILjava/util/List;)V

    .line 14
    .line 15
    .line 16
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
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->halStatusToP2pStatus(I)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

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

.method public onPeerClientDisconnected(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientDisconnectedEventParams;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientDisconnectedEventParams;->groupInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientDisconnectedEventParams;->clientInterfaceAddress:[B

    .line 4
    .line 5
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientDisconnectedEventParams;->clientDeviceAddress:[B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->onP2pApStaDisconnected(Ljava/lang/String;[B[BLjava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPeerClientJoined(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;)V
    .locals 6

    .line 1
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->groupInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->clientInterfaceAddress:[B

    .line 4
    .line 5
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->clientDeviceAddress:[B

    .line 6
    .line 7
    iget v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->clientIpAddress:I

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->onP2pApStaConnected(Ljava/lang/String;[B[BILjava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onProvisionDiscoveryCompleted([BZBILjava/lang/String;)V
    .locals 8

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v7, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move-object v5, p5

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->handleProvisionDiscoveryCompletedEvent([BZBILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onProvisionDiscoveryCompletedEvent(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;)V
    .locals 8

    .line 1
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->p2pDeviceAddress:[B

    .line 2
    .line 3
    iget-boolean v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->isRequest:Z

    .line 4
    .line 5
    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->status:B

    .line 6
    .line 7
    iget v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->configMethods:I

    .line 8
    .line 9
    iget-object v5, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->generatedPin:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->groupInterfaceName:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    move-object v0, p0

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->handleProvisionDiscoveryCompletedEvent([BZBILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onR2DeviceFound([B[B[BLjava/lang/String;IBI[B[B)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->onDeviceFound([B[B[BLjava/lang/String;IBI[B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onServiceDiscoveryResponse([BC[B)V
    .locals 0

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

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
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onStaAuthorized([B[B)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->onP2pApStaConnected(Ljava/lang/String;[B[BILjava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onStaDeauthorized([B[B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->onP2pApStaDisconnected(Ljava/lang/String;[B[BLjava/util/List;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
