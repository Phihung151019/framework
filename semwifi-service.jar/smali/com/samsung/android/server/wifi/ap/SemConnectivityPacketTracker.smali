.class public Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DNS_TID_END:I = 0xb

.field private static final DNS_TID_START:I = 0xf

.field private static final MARK_NAMED_START:Ljava/lang/String; = "--- START (%s) ---"

.field private static final MARK_NAMED_STOP:Ljava/lang/String; = "--- STOP (%s) ---"

.field private static final MARK_START:Ljava/lang/String; = "--- START ---"

.field private static final MARK_STOP:Ljava/lang/String; = "--- STOP ---"

.field private static final TAG:Ljava/lang/String; = "SemConnectivityPacketTracker"


# instance fields
.field private dnsQuery:I

.field private dnsRefuse:I

.field private dnsSuccess:I

.field private final dnsTimeGapHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dnsTimeGapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayName:Ljava/lang/String;

.field private final mLog:Landroid/util/LocalLog;

.field private final mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

.field private mRunning:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Landroid/util/LocalLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunning(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddDnsSummaryToList(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->addDnsSummaryToList(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcountEachDnsPacket(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->countEachDnsPacket(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->DBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "Loaded wifipackettrackerjni lib DBG value : "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sput-boolean v1, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->DBG:Z

    .line 8
    .line 9
    :try_start_0
    const-string v2, "wifipackettrackerjni"

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "SemConnectivityPacketTracker"

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsTimeGapList:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsTimeGapHashMap:Ljava/util/Map;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsRefuse:I

    .line 20
    .line 21
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsQuery:I

    .line 22
    .line 23
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsSuccess:I

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "SemConnectivityPacketTracker."

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p2, Lcom/android/net/module/util/InterfaceParams;->name:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mTag:Ljava/lang/String;

    .line 44
    .line 45
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    .line 46
    .line 47
    new-instance p3, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;

    .line 48
    .line 49
    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;-><init>(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;)V

    .line 50
    .line 51
    .line 52
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string p1, "null InterfaceParams"

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method private addDnsResponseTimeLog()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsTimeGapHashMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    move v3, v2

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroid/util/Pair;

    .line 31
    .line 32
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v5, Ljava/lang/Long;

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    const-wide/16 v7, 0x0

    .line 41
    .line 42
    cmp-long v5, v5, v7

    .line 43
    .line 44
    if-nez v5, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Landroid/util/Pair;

    .line 54
    .line 55
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v5, Ljava/lang/Long;

    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Landroid/util/Pair;

    .line 68
    .line 69
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v4, Ljava/lang/Long;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    sub-long/2addr v5, v7

    .line 78
    long-to-int v4, v5

    .line 79
    if-ge v2, v4, :cond_1

    .line 80
    .line 81
    move v2, v4

    .line 82
    :cond_1
    add-int/2addr v3, v4

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    div-int/2addr v3, v1

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "dns packets summary dns Query Largest Response time : %d ms, average response time : %d ms"

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v1, "SemConnectivityPacketTracker"

    .line 106
    .line 107
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    .line 111
    .line 112
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_3
    return-void
.end method

.method private addDnsSummaryLog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsQuery:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsRefuse:I

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsSuccess:I

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v1, "dns packets summary dns Query : %d, dns Refuse : %d, dns Success : %d"

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private addDnsSummaryToList(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "dns"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    const-string v0, "private_dns"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "0100"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, "8180"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string v0, "8185"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsTimeGapList:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/16 v1, 0x64

    .line 50
    .line 51
    if-le v0, v1, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsTimeGapList:Ljava/util/ArrayList;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsTimeGapList:Ljava/util/ArrayList;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, " "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_0
    return-void
.end method

.method public static native attachWifiControlPacketFilter(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private countEachDnsPacket(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "dns"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "private_dns"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "0100"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsQuery:I

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsQuery:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    const-string v1, "8185"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsRefuse:I

    .line 53
    .line 54
    add-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsRefuse:I

    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    const-string v0, "8180"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsSuccess:I

    .line 80
    .line 81
    add-int/lit8 p1, p1, 0x1

    .line 82
    .line 83
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsSuccess:I

    .line 84
    .line 85
    :cond_2
    return-void
.end method

.method private initializeDnsCounts()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsQuery:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsRefuse:I

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsSuccess:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsTimeGapList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsTimeGapHashMap:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private makeDnsResponseHashMap()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsTimeGapList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :cond_0
    :goto_0
    if-ge v3, v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    check-cast v4, Ljava/lang/String;

    .line 18
    .line 19
    const-string v5, " "

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    add-int/lit8 v6, v6, -0xf

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    add-int/lit8 v7, v7, -0xb

    .line 36
    .line 37
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsTimeGapHashMap:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const-wide/16 v7, 0x0

    .line 48
    .line 49
    if-nez v6, :cond_1

    .line 50
    .line 51
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsTimeGapHashMap:Ljava/util/Map;

    .line 52
    .line 53
    new-instance v9, Landroid/util/Pair;

    .line 54
    .line 55
    aget-object v5, v5, v2

    .line 56
    .line 57
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v10

    .line 61
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-direct {v9, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v6, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsTimeGapHashMap:Ljava/util/Map;

    .line 77
    .line 78
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Landroid/util/Pair;

    .line 83
    .line 84
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v9, Ljava/lang/Long;

    .line 87
    .line 88
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v9

    .line 92
    cmp-long v7, v9, v7

    .line 93
    .line 94
    if-nez v7, :cond_0

    .line 95
    .line 96
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->dnsTimeGapHashMap:Ljava/util/Map;

    .line 97
    .line 98
    new-instance v8, Landroid/util/Pair;

    .line 99
    .line 100
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v6, Ljava/lang/Long;

    .line 103
    .line 104
    aget-object v5, v5, v2

    .line 105
    .line 106
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 107
    .line 108
    .line 109
    move-result-wide v9

    .line 110
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-direct {v8, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    return-void
.end method


# virtual methods
.method addDnsLogsInDump()V
    .locals 4

    .line 1
    const-string v0, "SemConnectivityPacketTracker"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->addDnsSummaryLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v3, "countDnsPacketFromLog exception : "

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->makeDnsResponseHashMap()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->addDnsResponseTimeLog()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_1
    move-exception p0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "calDnsTimeGapToString exception "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :goto_1
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mRunning:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;

    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->start()Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->initializeDnsCounts()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->stop()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mRunning:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method
