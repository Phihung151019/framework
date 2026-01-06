.class public Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;
.super Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemSehSupplicantP2pIfaceCallbackHidlImpl"

.field private static sVerboseLoggingEnabled:Z = true


# instance fields
.field private final mInterface:Ljava/lang/String;

.field private final mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 7
    .line 8
    return-void
.end method

.method public static enableVerboseLogging(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->sVerboseLoggingEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method protected static logd(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->sVerboseLoggingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemSehSupplicantP2pIfaceCallbackHidlImpl"

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
.method public onApplicationDataReceived([BLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastSconnectEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onBigDataLogging(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastBigDataEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onDeviceFound([B[B[BLjava/lang/String;SBI[BLjava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "SemSehSupplicantP2pIfaceCallbackHidlImpl"

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
    invoke-direct {p2, p1, p4, p9}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

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
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

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

.method public onGoPs(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastGoPsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onGroupStarted(Ljava/lang/String;ZLjava/util/ArrayList;I[BLjava/lang/String;[BZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I[B",
            "Ljava/lang/String;",
            "[BZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p5, "SemSehSupplicantP2pIfaceCallbackHidlImpl"

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
    const-string p9, "Group "

    .line 12
    .line 13
    const-string v0, " started on "

    .line 14
    .line 15
    invoke-static {p9, p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p9

    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p9

    .line 28
    invoke-static {p9}, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p9, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 32
    .line 33
    invoke-direct {p9}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p9, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

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
    invoke-virtual {p9, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p9, p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p9, p6}, Landroid/net/wifi/p2p/WifiP2pGroup;->setPassphrase(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p9, p4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setFrequency(I)V

    .line 57
    .line 58
    .line 59
    if-eqz p8, :cond_1

    .line 60
    .line 61
    const/4 p1, -0x2

    .line 62
    invoke-virtual {p9, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const/4 p1, -0x1

    .line 67
    invoke-virtual {p9, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

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
    invoke-virtual {p9, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, p0, p9}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pGroupStarted(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

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

.method public onP2pEventReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pEventNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onProvisionDiscoveryCompleted([BZBSLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p0, "onProvisionDiscoveryCompleted: "

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
