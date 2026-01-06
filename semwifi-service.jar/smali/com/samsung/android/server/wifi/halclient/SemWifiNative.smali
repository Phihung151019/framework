.class public Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;
.implements Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;
.implements Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;
.implements Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceCallback;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiNative"


# instance fields
.field private final mIfaceMgr:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

.field private final mLock:Ljava/lang/Object;

.field private final mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

.field private final mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIfaceMgr(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mIfaceMgr:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$monInterfaceDestroyed(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->onInterfaceDestroyed(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mVerboseLoggingEnabled:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mIfaceMgr:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 26
    .line 27
    return-void
.end method

.method private createStaIface(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->isVendorHalSupported()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 13
    .line 14
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;

    .line 15
    .line 16
    iget v3, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->id:I

    .line 17
    .line 18
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->createStaIface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    monitor-exit v0

    .line 28
    return-object p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p0, "SemWifiNative"

    .line 32
    .line 33
    const-string p1, "Vendor Hal not supported, ignoring createStaIface."

    .line 34
    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    monitor-exit v0

    .line 40
    return-object p0

    .line 41
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method private onInterfaceDestroyed(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->stopMonitoring(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->externalListener:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceCallback;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceCallback;->onDestroyed(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method private startHal()Z
    .locals 2

    .line 1
    const-string v0, "SemWifiNative"

    .line 2
    .line 3
    const-string v1, "startHal"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mIfaceMgr:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->hasAnyIface()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->isVendorHalSupported()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->startVendorHal()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    const-string p0, "SemWifiNative"

    .line 36
    .line 37
    const-string v1, "Failed to start vendor HAL"

    .line 38
    .line 39
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    monitor-exit v0

    .line 44
    return p0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string p0, "SemWifiNative"

    .line 48
    .line 49
    const-string v1, "Vendor Hal not supported, ignoring start."

    .line 50
    .line 51
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_1
    const/4 p0, 0x1

    .line 55
    monitor-exit v0

    .line 56
    return p0

    .line 57
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method private toBytes(I)[B
    .locals 2

    .line 1
    shr-int/lit8 p0, p1, 0x8

    .line 2
    .line 3
    int-to-byte p0, p0

    .line 4
    int-to-byte p1, p1

    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aput-byte p0, v0, v1

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    aput-byte p1, v0, p0

    .line 13
    .line 14
    return-object v0
.end method

.method private wifiConfigurationToSupplicantKeyMgmtMask(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, "Invalid protoMask bit in keyMgmt: "

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "SemWifiNative"

    .line 23
    .line 24
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_1
    const/high16 p0, 0x800000

    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_2
    const/high16 p0, 0x80000

    .line 41
    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :pswitch_3
    const/high16 p0, 0x40000

    .line 48
    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_4
    const/16 p0, 0x2000

    .line 55
    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_5
    const/16 p0, 0x1000

    .line 62
    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_6
    const/16 p0, 0x80

    .line 69
    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :pswitch_7
    const/16 p0, 0x100

    .line 76
    .line 77
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :pswitch_8
    const/high16 p0, 0x20000

    .line 83
    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_9
    const/high16 p0, 0x400000

    .line 90
    .line 91
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :pswitch_a
    const/16 p0, 0x400

    .line 97
    .line 98
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :pswitch_b
    const/16 p0, 0x20

    .line 104
    .line 105
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :pswitch_c
    const/16 p0, 0x40

    .line 111
    .line 112
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :pswitch_d
    const p0, 0x8000

    .line 118
    .line 119
    .line 120
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :pswitch_e
    const/16 p0, 0x8

    .line 126
    .line 127
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    :pswitch_f
    const/4 p0, 0x1

    .line 133
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    :pswitch_10
    const/4 p0, 0x2

    .line 139
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :pswitch_11
    const/4 p0, 0x4

    .line 145
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    return-object p0

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
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
    .end packed-switch
.end method


# virtual methods
.method public addNetworkExternal(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->addNetworkExternal(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public addQosPolicyRequestForScs(Ljava/lang/String;[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsData;)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsRequestStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->addQosPolicyRequestForScs(Ljava/lang/String;[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsData;)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsRequestStatus;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public addRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->addRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public addRoamScanChannelsLegacy(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->addRoamScanChannelsLegacy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public addRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->addRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public addRoamScanFrequenciesLegacy(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->addRoamScanFrequenciesLegacy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public addRxFilter(Ljava/lang/String;B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->addRxFilter(Ljava/lang/String;B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public associationCtl(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "---- [FRAMEWORK] REASSOC_FREQUENCY_LEGACY (IWH) "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastConnectivityLogEvent(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->associationCtl(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public changePktlogSize(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->changePktlogSize(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public clearTwtStatistics(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->clearTwtStatistics(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public configureRoaming(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->configureRoaming(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->disconnect(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public doLeakyApActiveDetection(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->doLeakyApActiveDetection(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public eLnaControl(Ljava/lang/String;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->eLnaControl(Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public eLnaStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->eLnaStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public enable80211be(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "---- [FRAMEWORK] SET_WIFI7_ENABLE "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastConnectivityLogEvent(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->enable80211be(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public enableAutoReconnect(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->enableAutoReconnect(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public enableBeaconInterval(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->enableBeaconInterval(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public enableLinkLayerStatsCollection(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->enableLinkLayerStatsCollection(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public enableNdOffload(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->enableNdOffload(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public enablePktlogFilter(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->enablePktlogFilter(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public enableVerboseLogging(I)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->enableVerboseLogging(Z)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mVerboseLoggingEnabled:Z

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->enableVerboseLogging(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public endLeakyApPassiveDetection(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->endLeakyApPassiveDetection(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public filsHlpAddRequest(Ljava/lang/String;[B[B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->filsHlpAddRequest(Ljava/lang/String;[B[B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public filsHlpFlushRequest(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->filsHlpFlushRequest(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public generateSelfDppConfiguration(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->generateSelfDppConfiguration(Ljava/lang/String;Ljava/lang/String;[B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getApfPacketFilterCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/StaApfPacketFilterCapabilities;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getApfPacketFilterCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/StaApfPacketFilterCapabilities;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getAverageTxPower(Ljava/lang/String;Z)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getAverageTxPower(Ljava/lang/String;Z)[I

    move-result-object p0

    return-object p0
.end method

.method public getAverageTxPower(Ljava/lang/String;ZI)[I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getAverageTxPower(Ljava/lang/String;ZI)[I

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundScanCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanCapabilities;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getBackgroundScanCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanCapabilities;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getChannelUtilization(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getChannelUtilization(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getChannelUtilizationExtended(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getChannelUtilizationExtended(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_4

    .line 24
    .line 25
    const-string p1, "-1"

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    const-string p1, " "

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    array-length v1, p1

    .line 41
    const/4 v2, 0x0

    .line 42
    move v3, v2

    .line 43
    :goto_0
    if-ge v3, v1, :cond_3

    .line 44
    .line 45
    aget-object v4, p1, v3

    .line 46
    .line 47
    const-string v5, ":"

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    array-length v5, v4

    .line 54
    const/4 v6, 0x2

    .line 55
    if-eq v5, v6, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :try_start_0
    aget-object v5, v4, v2

    .line 59
    .line 60
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const/4 v6, 0x1

    .line 65
    aget-object v4, v4, v6

    .line 66
    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    :catch_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    const/4 p1, -0x1

    .line 92
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .line 106
    .line 107
    :catch_1
    :cond_4
    :goto_2
    return-object v0
.end method

.method public getChipsetVendorName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getChipsetVendorName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getConnectionCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ConnectionCapabilities;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getConnectionCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ConnectionCapabilities;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getConnectionMloLinksInfo(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/MloLinksInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getConnectionMloLinksInfo(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/MloLinksInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getCountryRev(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getCountryRev(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getCurrentBss(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/BssInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getCurrentBss(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/BssInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getDebugRxPacketFates(Ljava/lang/String;)[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugRxPacketFateReport;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getDebugRxPacketFates(Ljava/lang/String;)[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugRxPacketFateReport;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getDebugTxPacketFates(Ljava/lang/String;)[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugTxPacketFateReport;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getDebugTxPacketFates(Ljava/lang/String;)[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugTxPacketFateReport;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getFactoryMacAddress(Ljava/lang/String;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getFactoryMacAddress(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getFeatureSet(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getFeatureSet(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getInterfaceVersion()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getKeyMgmtCapabilities(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getKeyMgmtCapabilities(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getMacAddress(Ljava/lang/String;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getMacAddress(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getMaxBandwidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getMaxBandwidth(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getMaxTdlsSession(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getMaxTdlsSession(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getMlState(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getMlState(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getNetworkExternal(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getNetworkExternal(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getNumOfTdlsSession(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getNumOfTdlsSession(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getPcieMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getPcieMode(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getRoamBand(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getRoamBand(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getRoamDelta(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getRoamDelta(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getRoamScanChannels(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getRoamScanChannels(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getRoamScanChannelsLegacy(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getRoamScanChannelsLegacy(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getRoamScanControl(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getRoamScanControl(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getRoamScanPeriod(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getRoamScanPeriod(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getRoamTrigger(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getRoamTrigger(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getRoamTriggerLegacy(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getRoamTriggerLegacy(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getRoamingCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingCapabilities;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getRoamingCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingCapabilities;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getSignalPollResults(Ljava/lang/String;)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SignalPollResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getSignalPollResults(Ljava/lang/String;)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SignalPollResult;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getSupportedTasMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getSupportedTasMode(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getTidMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getTidMode(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getTwtParameters()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getTwtParameters()Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getTxMode(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getTxMode(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getTxPower(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getTxPower(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getTxPowerFromDsiTable(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getTxPowerFromDsiTable(Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getVendorConnFileInfo(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getVendorConnFileInfo(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getVendorProperty(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getVendorProperty(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->aggregateLinkLayerStats()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public getWifiStaInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getWifiStaInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getWifiUwbCoexMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getWifiUwbCoexMode(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getWpaDriverCapabilities(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getWpaDriverCapabilities(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public initialize()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->initialize(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "SemWifiNative"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string p0, "Vendor Hal not initialized, bail out..."

    .line 18
    .line 19
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->isVendorHalSupported()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v3, 0x1

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    const-string p0, "Vendor Hal not supported, ignoring createStaIface"

    .line 33
    .line 34
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v3

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->initialize()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    const-string p0, "Supplicant Sta Iface Hal not initialized, bail out..."

    .line 47
    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :cond_2
    return v3
.end method

.method public initiateAnqpQuery(Ljava/lang/String;[B[I[I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->initiateAnqpQuery(Ljava/lang/String;[B[I[I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public initiateHs20IconQuery(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->initiateHs20IconQuery(Ljava/lang/String;[BLjava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public initiateTdlsDiscover(Ljava/lang/String;[B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->initiateTdlsDiscover(Ljava/lang/String;[B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public initiateTdlsSetup(Ljava/lang/String;[B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->initiateTdlsSetup(Ljava/lang/String;[B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public initiateTdlsTeardown(Ljava/lang/String;[B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->initiateTdlsTeardown(Ljava/lang/String;[B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public initiateVenueUrlAnqpQuery(Ljava/lang/String;[B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->initiateVenueUrlAnqpQuery(Ljava/lang/String;[B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public installApfPacketFilter(Ljava/lang/String;[B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->installApfPacketFilter(Ljava/lang/String;[B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isAvailableTdls(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->isAvailableTdls(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isCaptureRunning(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->isCaptureRunning(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isNCHOModeEnabled(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->isNCHOModeEnabled(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isWesModeEnabled(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->isWesModeEnabled(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isWiderBandwidthTdlsSupported(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->isWiderBandwidthTdlsSupported(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public listNetworksExternal(Ljava/lang/String;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->listNetworksExternal(Ljava/lang/String;)[I

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public probeStaIfaceNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->probeStaIfaceNames()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public queryScheduledPmStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->queryScheduledPmStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public queryTwtCapabilities(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->queryTwtCapabilities(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public queryTwtStatistics(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->queryTwtStatistics(Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public queryTwtStatus(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->queryTwtStatus(Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public readApfPacketFilterData(Ljava/lang/String;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->readApfPacketFilterData(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public reassociate(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->reassociate(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public reconnect(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->reconnect(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public registerCallbackExternalForISehSupplicantStaIface(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->registerCallbackExternalForISehSupplicantStaIface(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public registerCallbackForISupplicantStaIface(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->registerCallbackForISupplicantStaIface(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public removeAllNetworks(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->removeAllNetworks(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public removeAllQosPolicies(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->removeAllQosPolicies(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public removeDppUri(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->removeDppUri(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public removeQosPolicyForScs(Ljava/lang/String;[B)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsRequestStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->removeQosPolicyForScs(Ljava/lang/String;[B)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsRequestStatus;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public removeRxFilter(Ljava/lang/String;B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->removeRxFilter(Ljava/lang/String;B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public removeVendorConnFile(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->removeVendorConnFile(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public removeVendorLogFiles()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->removeVendorLogFiles()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public resumeTwt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->resumeTwt(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public saveFwDump()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mIfaceMgr:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->-$$Nest$mfindAnyStaIfaceName(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->saveDebugDump(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p0
.end method

.method public semGetLqcmReport(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getLqcmReport(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public semGetSnr(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getSnr(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public sendLegacyReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, " "

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "---- [FRAMEWORK] REASSOC_FREQUENCY_LEGACY "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p3, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastConnectivityLogEvent(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->sendLegacyReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public sendLegacyReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, " "

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->sendLegacyReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public sendQosPolicyResponse(Ljava/lang/String;IZ[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->sendQosPolicyResponse(Ljava/lang/String;IZ[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public sendReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, " "

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->sendReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, " "

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, " "

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p2, p5}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public setAdpsEnabled(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setAdpsEnabled(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setAffinityBooster(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setAffinityBooster(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setBtCoexistenceMode(Ljava/lang/String;B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setBtCoexistenceMode(Ljava/lang/String;B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setBtCoexistenceScanModeEnabled(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setBtCoexistenceScanModeEnabled(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setConcurrencyPriority(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setConcurrencyPriority(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setCountryCode(Ljava/lang/String;[B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setCountryCode(Ljava/lang/String;[B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setDebugParams(IZZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setDebugParams(IZZ)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setDelayedWakeupType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setDelayedWakeupType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setDtimInSuspendMode(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setDtimInSuspendMode(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setDtimMultiplier(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setDtimMultiplier(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setExternalSim(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setExternalSim(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setFccChannelBackoffEnabled(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "---- [FRAMEWORK] SET_FCC_CHANNEL "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastConnectivityLogEvent(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setFccChannelBackoffEnabled(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public setIndoorChannels(ILjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mIfaceMgr:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->-$$Nest$mfindAnyStaIfaceName(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 12
    .line 13
    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setIndoorChannels(Ljava/lang/String;ILjava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p0
.end method

.method public setInterwokingEnabled(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setInterwokingEnabled(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setLatencyCritical(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setLatencyCritical(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setLeakyApGracePeriod(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setLeakyApGracePeriod(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setMacAddress(Ljava/lang/String;[B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setMacAddress(Ljava/lang/String;[B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setMaxBandwidth(Ljava/lang/String;III)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setMaxBandwidth(Ljava/lang/String;III)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setMaxDtimInSuspendMode(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setMaxDtimInSuspendMode(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setMboCellularDataStatus(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setMboCellularDataStatus(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setMlControl(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "---- [FRAMEWORK] ML_LINK_STATE_CONTROL "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastConnectivityLogEvent(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setMlControl(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public setNCHOModeEnabled(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setNCHOModeEnabled(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setNumOfAllowedMloLink(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "---- [FRAMEWORK] SET_NUM_ALLOWED_MLO_LINK "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastConnectivityLogEvent(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setNumOfAllowedMloLink(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public setPcieMode(Ljava/lang/String;II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setPcieMode(Ljava/lang/String;II)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setPowerSave(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setPowerSave(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setQosPolicyFeatureEnabled(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setQosPolicyFeatureEnabled(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setRoamBand(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setRoamBand(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setRoamDelta(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setRoamDelta(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setRoamScanChannels(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    array-length v0, p2

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, " "

    .line 7
    .line 8
    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public setRoamScanEnabled(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setRoamScanControl(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setRoamScanPeriod(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setRoamScanPeriod(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setRoamTrigger(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setRoamTrigger(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setRoamTriggerLegacy(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setRoamTriggerLegacy(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setRoamingState(Ljava/lang/String;B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setRoamingState(Ljava/lang/String;B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setScanDwell(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setScanDwell(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setScanMode(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setScanMode(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setSuspendModeEnabled(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setSuspendModeEnabled(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setTdlsEnabled(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setTdlsEnabled(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setTidMode(Ljava/lang/String;III)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setTidMode(Ljava/lang/String;III)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setTxMode(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setTxMode(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setTxPowerBackOff(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setTxPowerBackOff(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setTxPowerBackOff(Ljava/lang/String;II)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setTxPowerBackOff(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public setVendorProperty(ILjava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setVendorProperty(ILjava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setWesModeEnabled(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setWesModeEnabled(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setWifiCustomBackoff(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setWifiCustomBackoff(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setWifiToCellular(Ljava/lang/String;IIIIII)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setWifiToCellular(Ljava/lang/String;IIIIII)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setWifiUwbCoexEnabled(Ljava/lang/String;ZIIII)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setWifiUwbCoexEnabled(Ljava/lang/String;ZIIII)Z

    move-result p0

    return p0
.end method

.method public setWifiUwbCoexEnabled(Ljava/lang/String;ZIIIII)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual/range {p0 .. p7}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setWifiUwbCoexEnabled(Ljava/lang/String;ZIIIII)Z

    move-result p0

    return p0
.end method

.method public setWifiUwbCoexEnabled(Ljava/lang/String;ZIIIIII)Z
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual/range {p0 .. p8}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setWifiUwbCoexEnabled(Ljava/lang/String;ZIIIIII)Z

    move-result p0

    return p0
.end method

.method public setWsecInfo(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setWsecInfo(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setupInterfaceForClientInConnectivityMode(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceCallback;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "Successfully setup "

    .line 2
    .line 3
    const-string v1, "Failed to setup iface in supplicant on "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->startHal()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    const-string p0, "SemWifiNative"

    .line 16
    .line 17
    const-string p1, "Failed to start Hal"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    monitor-exit v2

    .line 23
    return-object v4

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mIfaceMgr:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    .line 27
    .line 28
    invoke-static {v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->-$$Nest$mallocateIface(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iput-object p2, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->externalListener:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceCallback;

    .line 33
    .line 34
    iput-object p1, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->createStaIface(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 40
    .line 41
    iget-object p2, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setupIface(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    const-string p1, "SemWifiNative"

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object p1, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    monitor-exit v2

    .line 72
    return-object v4

    .line 73
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 74
    .line 75
    iget-object p1, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->startMonitoring(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string p0, "SemWifiNative"

    .line 81
    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    iget-object p0, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    .line 98
    .line 99
    monitor-exit v2

    .line 100
    return-object p0

    .line 101
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    throw p0
.end method

.method public setupScheduledPm(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setupScheduledPm(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setupTwt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setupTwt(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startBackgroundScan(Ljava/lang/String;ILcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->startBackgroundScan(Ljava/lang/String;ILcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startCapture(Ljava/lang/String;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->startCapture(Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startDebugPacketFateMonitoring(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->startDebugPacketFateMonitoring(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startDppEnrolleeResponder(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->startDppEnrolleeResponder(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startLeakyApPassiveDetection(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->startLeakyApPassiveDetection(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startRssiMonitoring(Ljava/lang/String;III)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->startRssiMonitoring(Ljava/lang/String;III)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startRxFilter(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->startRxFilter(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startSendingKeepAlivePackets(Ljava/lang/String;I[BC[B[BI)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->startSendingKeepAlivePackets(Ljava/lang/String;I[BC[B[BI)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public stopBackgroundScan(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->stopBackgroundScan(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public stopCapture(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->stopCapture(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public stopDppInitiator(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->stopDppInitiator(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public stopDppResponder(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->stopDppResponder(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public stopRssiMonitoring(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->stopRssiMonitoring(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public stopRxFilter(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->stopRxFilter(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public stopSendingKeepAlivePackets(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->stopSendingKeepAlivePackets(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public suspendTwt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->suspendTwt(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public teardownInterface(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Successfully initiated teardown for iface="

    .line 2
    .line 3
    const-string v1, "Initiated teardown failed for iface="

    .line 4
    .line 5
    const-string v2, "Trying to teardown an invalid iface="

    .line 6
    .line 7
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mIfaceMgr:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    .line 11
    .line 12
    invoke-static {v4, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->-$$Nest$mgetIface(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    const-string p0, "SemWifiNative"

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    monitor-exit v3

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->teardownIface(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    const-string p0, "SemWifiNative"

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    monitor-exit v3

    .line 65
    return-void

    .line 66
    :cond_1
    const-string p0, "SemWifiNative"

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    monitor-exit v3

    .line 84
    return-void

    .line 85
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0
.end method

.method public teardownScheduledPm(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->teardownScheduledPm(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public teardownTwt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->teardownTwt(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public triggerDelayedWakeup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->triggerDelayedWakeup(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public updateCellularCapabilities(Ljava/lang/String;IIII)Z
    .locals 1

    .line 1
    move-object v0, p0

    .line 2
    iget-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 3
    .line 4
    int-to-byte p2, p2

    .line 5
    int-to-byte p3, p3

    .line 6
    int-to-byte p4, p4

    .line 7
    invoke-direct {v0, p5}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->toBytes(I)[B

    .line 8
    .line 9
    .line 10
    move-result-object p5

    .line 11
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->updateCellularCapabilities(Ljava/lang/String;BBB[B)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public updateConnectionPersonalization(Ljava/lang/String;ILjava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    check-cast v4, Landroid/util/Pair;

    .line 25
    .line 26
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v5, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->wifiConfigurationToSupplicantKeyMgmtMask(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v4, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-interface {p3}, Ljava/util/stream/IntStream;->toArray()[I

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    new-array v0, v0, [Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, [Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->updateConnectionPersonalization(Ljava/lang/String;I[I[Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0
.end method

.method public updateConnectionRssiThreshold(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p2}, Ljava/util/stream/IntStream;->toArray()[I

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->updateConnectionRssiThreshold(Ljava/lang/String;[I)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public updateVendorConnFile(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->updateVendorConnFile(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public writeVendorConnFile(ILjava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->writeVendorConnFile(ILjava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
