.class public Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MARK_NAMED_START:Ljava/lang/String; = "--- START (%s) ---"

.field private static final MARK_NAMED_STOP:Ljava/lang/String; = "--- STOP (%s) ---"

.field private static final MARK_START:Ljava/lang/String; = "--- START ---"

.field private static final MARK_STOP:Ljava/lang/String; = "--- STOP ---"

.field private static final TAG:Ljava/lang/String; = "SemWcmConnectivityPacketTracker"


# instance fields
.field private mConsecutiveBroadcastArpQueriesToGateway:I

.field private mDhcpRequestSent:I

.field private mDisplayName:Ljava/lang/String;

.field private mGateway:Ljava/lang/String;

.field private final mLog:Landroid/util/LocalLog;

.field private final mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

.field private mRunning:Z

.field private final mTag:Ljava/lang/String;

.field mWcm:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mConsecutiveBroadcastArpQueriesToGateway:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpRequestSent(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mDhcpRequestSent:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mGateway:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Landroid/util/LocalLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunning(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mConsecutiveBroadcastArpQueriesToGateway:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDhcpRequestSent(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mDhcpRequestSent:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->DBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->DBG:Z

    .line 6
    .line 7
    :try_start_0
    const-string v0, "wifipackettrackerjni"

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "SemWcmConnectivityPacketTracker"

    .line 13
    .line 14
    const-string v1, "Loaded wifipackettrackerjni lib"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_1
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mWcm:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mGateway:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mConsecutiveBroadcastArpQueriesToGateway:I

    .line 13
    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mDhcpRequestSent:I

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "SemWcmConnectivityPacketTracker."

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p2, Lcom/android/net/module/util/InterfaceParams;->name:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mTag:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    .line 37
    .line 38
    new-instance p3, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;

    .line 39
    .line 40
    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;)V

    .line 41
    .line 42
    .line 43
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    .line 44
    .line 45
    iput-object p4, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mWcm:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string p1, "null InterfaceParams"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public static native attachWifiControlPacketFilter(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method


# virtual methods
.method public start(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mRunning:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->start()Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->stop()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mRunning:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public updateGateway(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "updateGateway: "

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "SemWcmConnectivityPacketTracker"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mGateway:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method
