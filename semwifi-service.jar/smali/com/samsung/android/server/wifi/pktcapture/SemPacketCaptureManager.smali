.class public Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;
    }
.end annotation


# static fields
.field private static final CMD_IS_CAPTURE_RUNNING:I = 0x3

.field private static final CMD_MHS_INTERFACE_ENABLED:I = 0x5

.field private static final CMD_P2P_INTERFACE_ENABLED:I = 0x4

.field private static final CMD_START_CAPTURE:I = 0x0

.field private static final CMD_STOP_CAPTURE:I = 0x1

.field private static final CMD_WIFI_TURNED_OFF:I = 0x6

.field private static final DUTCMD_TCPDUMP:I = 0x26

.field private static final DUT_COMMAND:I = 0x1

.field private static final PACKETCAPTURE_DEFAULT_FRAME_TYPE:I = 0x1

.field private static final PACKETCAPTURE_STATE_CAPTURE_ALREADY_INPROGRESS:I = 0x3

.field private static final PACKETCAPTURE_STATE_CAPTURE_INPROGRESS:I = 0x1

.field private static final PACKETCAPTURE_STATE_CAPTURE_NOT_INPROGRESS:I = 0x1

.field private static final PACKETCAPTURE_STATE_CMD_NOT_SUPPORTED:I = 0x2

.field private static final PACKETCAPTURE_STATE_FILE_SYSTEM_ERROR:I = 0x1

.field private static final PACKETCAPTURE_STATE_MLO_AP_CONNECTION:I = 0x5

.field private static final PACKETCAPTURE_STATE_PREREQUISITE_FAILURE:I = 0x4

.field private static final PACKETCAPTURE_STATE_SUCCESS:I = 0x0

.field private static final PACKETCAPTURE_STATE_UNKNOWN_ERROR:I = 0x7

.field private static final PACKETCAPTURE_STOP_CAPTURE_INTENT:Ljava/lang/String; = "com.samsung.android.server.wifi.stopcapture"

.field private static final TAG:Ljava/lang/String; = "PacketCaptureManager"

.field private static final TCPDUMP_START:Ljava/lang/String; = "1"

.field private static final TCPDUMP_STOP:Ljava/lang/String; = "2"

.field private static final WLANDUTSERVICE_NAME:Ljava/lang/String; = "wlandutservice"

.field private static final WLANDUTSERVICE_PROP_NAME:Ljava/lang/String; = "init.svc.wlandutservice"

.field private static final intrface:Ljava/lang/String; = "wlan0"


# instance fields
.field private airLogFileNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentFileName:Ljava/lang/String;

.field private destination:Ljava/io/File;

.field private initPacketCaptureSupport:Z

.field private isCaptureRunning:I

.field private isPacketCatureSupported:Z

.field isSuccess:Z

.field private mContext:Landroid/content/Context;

.field private final mDriverFeatureProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

.field private final mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field final mStateMachine:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

.field private source:Ljava/io/File;

.field private final wifiNative:Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;


# direct methods
.method public static synthetic $r8$lambda$FUEX0O9LZm1CHLyh6uDSEQT0RMk(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->lambda$findLatestTcpDumpFile$1(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$Q4W9YdOcM4a3d43Wk2XjapIBplk(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->lambda$copyToInternalStorage$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetairLogFileNames(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->airLogFileNames:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentFileName(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->currentFileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisCaptureRunning(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->isCaptureRunning:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiMonitor(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsource(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->source:Ljava/io/File;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiNative(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->wifiNative:Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentFileName(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->currentFileName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCaptureRunning(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->isCaptureRunning:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mcopyToInternalStorage(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->copyToInternalStorage()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$smfindLatestTcpDumpFile(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->findLatestTcpDumpFile(Ljava/io/File;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->currentFileName:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->isSuccess:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->wifiNative:Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 17
    .line 18
    invoke-virtual {p5}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getDriverFeatureProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mDriverFeatureProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 23
    .line 24
    new-instance p1, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;-><init>(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mStateMachine:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 30
    .line 31
    new-instance p1, Ljava/io/File;

    .line 32
    .line 33
    const-string p2, "/data/log/tcpdump/"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->source:Ljava/io/File;

    .line 39
    .line 40
    new-instance p1, Ljava/io/File;

    .line 41
    .line 42
    const-string p2, "/data/log/"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->destination:Ljava/io/File;

    .line 48
    .line 49
    new-instance p1, Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->airLogFileNames:Ljava/util/Set;

    .line 55
    .line 56
    iput-object p4, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    new-instance p1, Landroid/content/IntentFilter;

    .line 59
    .line 60
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string p2, "android.net.wifi.p2p.STATE_CHANGED"

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string p2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    new-instance p3, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$1;

    .line 81
    .line 82
    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$1;-><init>(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private checkCaptureCurrentStatus()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->wifiNative:Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;

    .line 2
    .line 3
    const-string v0, "wlan0"

    .line 4
    .line 5
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;->isCaptureRunning(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method private varargs checkIsPacketCaptureSupportedByDriver([I)Z
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    aget p1, p1, v2

    .line 9
    .line 10
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mDriverFeatureProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isPcapLoggingSupported()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mDriverFeatureProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getPcapLoggingFeature()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    and-int v0, p0, p1

    .line 25
    .line 26
    if-eq v0, p1, :cond_1

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "pcap logging is supported with "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, " frames but requested are "

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "PacketCaptureManager"

    .line 51
    .line 52
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return v2

    .line 56
    :cond_1
    return v1

    .line 57
    :cond_2
    return v2
.end method

.method private checkStartCapturePrerequisite()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const-string p0, "PacketCaptureManager"

    .line 21
    .line 22
    const-string v0, "Either Hotspot is turned on or wifi is turned off"

    .line 23
    .line 24
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method private copyToInternalStorage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->source:Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "PacketCaptureManager"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 15
    .line 16
    new-instance v2, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    const-string p0, "CopyThread is started"

    .line 25
    .line 26
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    const-string p0, "Source folder doesn\'t exist"

    .line 34
    .line 35
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static dutCmd(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "Sent CMD: "

    .line 2
    .line 3
    invoke-static {}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->getWlanDutService()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "PacketCaptureManager"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const-string v5, "android.wifi.IWlanDutService"

    .line 20
    .line 21
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, "command: "

    .line 33
    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    const/4 p1, 0x0

    .line 55
    invoke-interface {v1, p0, v3, v4, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 66
    .line 67
    .line 68
    return-object p0

    .line 69
    :catch_0
    move-exception p0

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const-string p0, "Can not get WLService"

    .line 72
    .line 73
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    const-string p0, "ERROR: Service is not running (wlandutservice)"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    return-object p0

    .line 79
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v0, "Fail to operate WLService"

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    const-string p0, "ERROR: Remote exception"

    .line 101
    .line 102
    return-object p0
.end method

.method private static findLatestTcpDumpFile(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$$ExternalSyntheticLambda2;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance v0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$$ExternalSyntheticLambda3;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    const-string v0, "PacketCaptureManager"

    .line 49
    .line 50
    const-string v1, "Returning the last generated file"

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/io/File;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_0
    const/4 p0, 0x0

    .line 67
    return-object p0
.end method

.method private static getWlanDutService()Landroid/os/IBinder;
    .locals 8

    .line 1
    const-string v0, "init.svc.wlandutservice"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "run"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v3, "PacketCaptureManager"

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "...Start wlandutservice !!!"

    .line 18
    .line 19
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const-string v1, "wlandutservice"

    .line 23
    .line 24
    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v1, "...wlservice is already started!!!"

    .line 29
    .line 30
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    const/4 v1, 0x0

    .line 34
    const/16 v4, 0xa

    .line 35
    .line 36
    :goto_1
    add-int/lit8 v5, v4, -0x1

    .line 37
    .line 38
    if-lez v4, :cond_2

    .line 39
    .line 40
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    const-string v1, "WlanDutService"

    .line 51
    .line 52
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    const-string v0, "get WlanDutService successfully"

    .line 59
    .line 60
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_1
    const-wide/16 v6, 0x64

    .line 65
    .line 66
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catch_0
    move-exception v4

    .line 71
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :goto_2
    move v4, v5

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    :goto_3
    return-object v1
.end method

.method private synthetic lambda$copyToInternalStorage$0()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->destination:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->destination:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Total number of airlogs created in present run: "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->airLogFileNames:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "PacketCaptureManager"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->airLogFileNames:Ljava/util/Set;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v2, 0x0

    .line 46
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_4

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->isSuccess:Z

    .line 60
    .line 61
    const-string v5, "Got Exception in deleting file: "

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->source:Ljava/io/File;

    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    filled-new-array {v3}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-static {v6, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget-object v6, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->destination:Ljava/io/File;

    .line 80
    .line 81
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    filled-new-array {v3}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v6, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const/4 v6, 0x1

    .line 94
    new-array v7, v6, [Ljava/nio/file/CopyOption;

    .line 95
    .line 96
    sget-object v8, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 97
    .line 98
    aput-object v8, v7, v4

    .line 99
    .line 100
    invoke-static {v2, v3, v7}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 101
    .line 102
    .line 103
    const-string v3, "Successfully copied file"

    .line 104
    .line 105
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->isSuccess:Z
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :catchall_0
    move-exception v0

    .line 113
    goto :goto_4

    .line 114
    :catch_0
    move-exception v3

    .line 115
    goto :goto_1

    .line 116
    :catch_1
    move-exception v3

    .line 117
    goto :goto_3

    .line 118
    :goto_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v6, "Got Exception in copying file: "

    .line 124
    .line 125
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .line 141
    .line 142
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->isSuccess:Z

    .line 143
    .line 144
    if-eqz v3, :cond_1

    .line 145
    .line 146
    :try_start_2
    invoke-static {v2}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catch_2
    move-exception v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :goto_3
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v6, "copy failed due to NoSuchFileException "

    .line 177
    .line 178
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/nio/file/NoSuchFileException;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    .line 194
    .line 195
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->isSuccess:Z

    .line 196
    .line 197
    if-eqz v3, :cond_1

    .line 198
    .line 199
    :try_start_4
    invoke-static {v2}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 200
    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :catch_3
    move-exception v3

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :goto_4
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->isSuccess:Z

    .line 212
    .line 213
    if-eqz p0, :cond_2

    .line 214
    .line 215
    :try_start_5
    invoke-static {v2}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :catch_4
    move-exception p0

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    :cond_2
    :goto_5
    throw v0

    .line 240
    :cond_3
    :goto_6
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->isSuccess:Z

    .line 241
    .line 242
    if-eqz v3, :cond_1

    .line 243
    .line 244
    :try_start_6
    invoke-static {v2}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 245
    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :catch_5
    move-exception v3

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->airLogFileNames:Ljava/util/Set;

    .line 257
    .line 258
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 259
    .line 260
    .line 261
    return-void
.end method

.method private static synthetic lambda$findLatestTcpDumpFile$1(Ljava/io/File;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "radiotap0"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private logCaptureCurrentStatus(I)V
    .locals 1

    .line 1
    const-string p0, "PacketCaptureManager"

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x7

    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    const-string p1, "Unexpected response from the driver"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p1, "Failed due to unknown errors"

    .line 21
    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const-string p1, "Failed due to unsupported command"

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    const-string p1, "Capture is in progress"

    .line 33
    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    const-string p1, "No capture in progress"

    .line 39
    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private logStartCaptureStatus(I)V
    .locals 1

    .line 1
    const-string p0, "PacketCaptureManager"

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x7

    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    const-string p1, "Unexpected response from the driver"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string p1, "Failed due to unknown errors"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const-string p1, "Failed as the capture is already running"

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const-string p1, "Failed due to unsupported command"

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    const-string p1, "Failed as file system storage is not available"

    .line 42
    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_4
    const-string p1, "Successfully  started the capture"

    .line 48
    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private logStopCaptureStatus(I)V
    .locals 1

    .line 1
    const-string p0, "PacketCaptureManager"

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x7

    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    const-string p1, "Unexpected response from the driver"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p1, "Failed to stop packet capture due to unknown errors"

    .line 21
    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const-string p1, "Failed to stop packet capture as input command is not supported"

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    const-string p1, "Failed to stop packet capture as there is no running capture currently"

    .line 33
    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    const-string p1, "Successfully stopped the capture"

    .line 39
    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public getIsPacketCaptureSupportedByDriver()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->initPacketCaptureSupport:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->initPacketCaptureSupport:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->checkIsPacketCaptureSupportedByDriver([I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->isPacketCatureSupported:Z

    .line 16
    .line 17
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->isPacketCatureSupported:Z

    .line 18
    .line 19
    return p0
.end method

.method public isCaptureRunning()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->wifiNative:Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;

    .line 2
    .line 3
    const-string v1, "wlan0"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;->isCaptureRunning(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->logCaptureCurrentStatus(I)V

    .line 10
    .line 11
    .line 12
    return v0
.end method

.method public startCapture(I)I
    .locals 3

    .line 1
    filled-new-array {p1}, [I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->checkIsPacketCaptureSupportedByDriver([I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->checkStartCapturePrerequisite()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x4

    .line 20
    return p0

    .line 21
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->checkCaptureCurrentStatus()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const/4 p0, 0x3

    .line 28
    return p0

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "PacketCaptureManager"

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-lez v0, :cond_3

    .line 50
    .line 51
    const-string p0, "Device is connected to MLO AP. Packet capture cannot be started"

    .line 52
    .line 53
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x5

    .line 57
    return p0

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->wifiNative:Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;

    .line 59
    .line 60
    const-string v2, "wlan0"

    .line 61
    .line 62
    invoke-interface {v0, v2, p1}, Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;->startCapture(Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->logStartCaptureStatus(I)V

    .line 67
    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    return p1

    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->startTcpDump()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    const-string p1, "Stop capture as tcpdump failed to start"

    .line 79
    .line 80
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->stopCapture()I

    .line 84
    .line 85
    .line 86
    const/4 p0, 0x7

    .line 87
    return p0

    .line 88
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mStateMachine:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    const/4 v1, 0x1

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 93
    .line 94
    .line 95
    return p1
.end method

.method public startTcpDump()Z
    .locals 1

    .line 1
    const/16 p0, 0x26

    .line 2
    .line 3
    const-string v0, "1"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->dutCmd(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "OK"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const-string v0, "PacketCaptureManager"

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const-string p0, "Successfully triggered command to start dump"

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    const-string p0, "Failed to triggered command to start dump"

    .line 27
    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public stopCapture()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->wifiNative:Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;

    .line 2
    .line 3
    const-string v1, "wlan0"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;->stopCapture(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->logStopCaptureStatus(I)V

    .line 10
    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->mStateMachine:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager$PacketCaptureStateMachine;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return v0
.end method

.method public stopTcpDump()Z
    .locals 1

    .line 1
    const/16 p0, 0x26

    .line 2
    .line 3
    const-string v0, "2"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->dutCmd(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "OK"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const-string v0, "PacketCaptureManager"

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const-string p0, "Triggered command to stop tcp dump"

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    const-string p0, "Failed to stop tcp dump"

    .line 27
    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return p0
.end method
